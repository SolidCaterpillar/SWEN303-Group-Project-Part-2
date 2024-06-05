# SENTIMENT ANALYSIS USING ML LIBRARIES

# Imports
import numpy as np
import pandas as pd

# Read Data File, Replace Empty Values and set index to test subject number
data = pd.read_csv("SA_Test_Data.csv")
data = data.fillna("")
data.set_index("Test Subject", inplace = True)


# LOAD MODELS

# Vader Style - Bag of Words (No context)
from nltk.sentiment import SentimentIntensityAnalyzer
sia = SentimentIntensityAnalyzer()

# Roberto model, w/ context
from transformers import AutoTokenizer
from transformers import AutoModelForSequenceClassification
from scipy.special import softmax
MODEL = f"cardiffnlp/twitter-roberta-base-sentiment"
tokenizer = AutoTokenizer.from_pretrained(MODEL)
model = AutoModelForSequenceClassification.from_pretrained(MODEL)

df = pd.DataFrame(index=data.index, columns=["Vader Model Negative", "Vader Model Neutral", "Vader Model Positive", "Vader Model Overall", "Roberto Model Negative", "Roberto Model Neutral", "Roberto Model Positive"])
for task in data.columns:
    for test_subject in data.index:
        response = data.at[test_subject, task]
        # Vader Analysis
        vader_scores = sia.polarity_scores(response)
        # Update the dataframe
        df.at[test_subject, "Vader Model Negative"] = vader_scores['neg']
        df.at[test_subject, "Vader Model Neutral"] = vader_scores['neu']
        df.at[test_subject, "Vader Model Positive"] = vader_scores['pos']
        df.at[test_subject, "Vader Model Overall"] = vader_scores['compound']
        # Roberto Analysis
        encoded_text = tokenizer(response, return_tensors='pt', padding='max_length', truncation=True, max_length=512)
        output = model(**encoded_text)
        roberto_scores = output[0][0].detach().numpy()
        roberto_scores = softmax(roberto_scores)
        # Update the dataframe
        df.at[test_subject, "Roberto Model Negative"] = roberto_scores[0]
        df.at[test_subject, "Roberto Model Neutral"] = roberto_scores[1]
        df.at[test_subject,"Roberto Model Positive"] = roberto_scores[2]
    print(f"\n\nTask: {task}")
    df.to_csv(f"{task.replace(' ', '')}.csv")
    print(df)