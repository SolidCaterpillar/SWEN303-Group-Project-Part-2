# Sentiment Analysis

## Objective
Determine the amount of negativity, neutrality and positivity of the test subject's responses during each task. This involves:
1. Recording the test-subjects voice during the test
2. Converting these recordings into transcripts using Whisper AI (https://openai.com/index/whisper/)
3. Manually dividing these transcripts per task, removing any unncessary words
4. Placing these sub-transcripts into a `csv` file
5. Writing a python script that conducts the Sentiment Analysis per task per member
6. Output `csv` files with the scores
7. Visualise the data using these output files

## Models
We are using 2 models:

1. ### _Vader Model_ by NLTK
  - Valence Aware Dictionary and sEntiment Reasoner
  - https://ojs.aaai.org/index.php/ICWSM/article/download/14550/14399/18068
  - Less Smart Model
    - Bag-of-Words Approach
    - analyses every word without context

2. ### _Roberta Model_ by Hugging Face
  - Robustly Optimized BERT Pretraining Approach
  - variant of the BERT (Bidirectional Encoder Representations from Transformers)
  - https://huggingface.co/docs/transformers/en/model_doc/roberta
  - Smarter Model
    - Self-Attention
    - GPT-2 tokeniser
    - trained on 160GB of text
    - determines the Sentiment based in the context