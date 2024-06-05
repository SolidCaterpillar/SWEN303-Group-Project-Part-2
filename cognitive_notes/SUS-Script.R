# This is a SWEN303 Script for Data visualisation and Wrangling
library(ggplot2)
library(dplyr)
library(tidyverse)
library(knitr)

data <- read.csv("Swen303_System_Usability_Scale (Responses) - Form Responses 1.csv")

data <- dplyr::rename(data, 
               `Question 1` = `I.think.that.I.would.like.to.use.this.system.frequently`,
               `Question 2` = `I.found.the.system.unnecessarily.complex.`,
               `Question 3` = `I.thought.the.system.was.easy.to.use`,
               `Question 4` = `I.think.that.I.would.need.the.support.of.a.technical.person.to.be.able.to.use.this.system`,
               `Question 5` = `X.found.the.various.functions.in.this.system.were.well.integrated`,
               `Question 6` = `I.thought.there.was.too.much.inconsistency.in.this.system`,
               `Question 7` = `I.would.imagine.that.most.people.would.learn.to.use.this.system.very.quickly`,
               `Question 8` = `I.found.the.system.very.cumbersome.to.use`,
               `Question 9` = `I.felt.very.confident.using.the.system`,
               `Question 10` = `I.needed.to.learn.a.lot.of.things.before.I.could.get.going.with.this.system`)
head(data)

df_long <- data %>%
  pivot_longer(cols = starts_with("Question"), 
               names_to = "Question", 
               values_to = "Score")

df_long$Question <- factor(df_long$Question, levels = c("Question 1", "Question 2", "Question 3", "Question 4", "Question 5", "Question 6", "Question 7", "Question 8", "Question 9", "Question 10"))
df_long$QuestionType <- ifelse(as.integer(gsub("Question ", "", df_long$Question)) %% 2 == 0, "Negative", "Positive")

# Create ggplot
ggplot(df_long, aes(x = Question, y = Score, fill = QuestionType)) +
  geom_boxplot() +
  scale_fill_manual(values = c("Positive" = "green", "Negative" = "red"), a = 0.5) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
  labs(title = "Distribution of Scores by Question", 
       x = "Question", 
       y = "Score (1-5) (Strongly Disagree - Strongly Agree)", 
       fill = "Question Type")

# Assuming df_long is your data frame and Score is the column with responses
df_long$QuestionNumber <- as.integer(gsub("Question ", "", df_long$Question))

# Calculate SUS score
df_long$SUS_Score <- ifelse(df_long$QuestionType == "Negative", 
                            5 - df_long$Score, 
                            df_long$Score - 1)

sus_by_person <- df_long %>%
  group_by(Full.Name) %>%
  summarise("NormScore"=sum(SUS_Score) * 2.5)

# Create boxplot
ggplot(sus_by_person, aes(y = NormScore)) +
  geom_boxplot(fill="lightblue", width=0.5, alpha=0.9) +
  labs(title = "Distribution of Normalized SUS Scores by Participant", 
       y = "Normalized SUS Score") +
  theme(axis.text.x = element_blank())  # Hide x-axis tick marks

summary_stats <- summary(sus_by_person$NormScore)
summary_stdev <- sd(sus_by_person$NormScore)


print(summary_stats)
print(cat("Standard Deviation: ", summary_stdev))
