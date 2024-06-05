library(ggplot2)
library(dplyr)
library(tidyverse)
library(tidyr)
library(knitr)
library(patchwork)


t1 <- read.csv("Task1.csv") %>%
  mutate(task = "task.one")
t2 <- read.csv("Task2.csv")%>%
  mutate(task = "task.two")
t3 <- read.csv("Task3.csv")%>%
  mutate(task = "task.three")
t4 <- read.csv("Task4.csv")%>%
  mutate(task = "task.four")
t5 <- read.csv("Task5.csv")%>%
  mutate(task = "task.five")
t6 <- read.csv("Task6.csv")%>%
  mutate(task = "task.six")

overall <- read.csv("Remarks.csv")


# Combine all tasks
combined_data <- rbind(t1,t2,t3,t4,t5,t6)

# Select only the desired columns
t_positive_roberto <- select(combined_data, Test.Subject, Roberto.Model.Positive, task)
t_positive_roberto$task <- factor(t_positive_roberto$task, levels = c("task.one", "task.two", "task.three", "task.four", "task.five", "task.six"))

t_negative_roberto <- select(combined_data, Test.Subject, Roberto.Model.Negative, task)
t_negative_roberto$task <- factor(t_negative_roberto$task, levels = c("task.one", "task.two", "task.three", "task.four", "task.five", "task.six"))

t_neutral_roberto <- select(combined_data, Test.Subject, Roberto.Model.Neutral, task)
t_neutral_roberto$task <- factor(t_neutral_roberto$task, levels = c("task.one", "task.two", "task.three", "task.four", "task.five", "task.six"))


# Organise Overall Data
# Reshape the data
overall_long <- overall %>%
  select(-starts_with("Vader.Model")) %>%
  pivot_longer(cols = starts_with("Roberto.Model"), 
               names_to = "Model_Score_Type", 
               values_to = "Score")

overall_long <- overall_long %>%
  mutate(Score.Type = case_when(
    grepl("Negative", Model_Score_Type) ~ "Negative",
    grepl("Neutral", Model_Score_Type) ~ "Neutral",
    grepl("Positive", Model_Score_Type) ~ "Positive"
  ))

# Separate the model and sentiment

#plot data by feeling, roberto

p1 <- ggplot(t_negative_roberto) +
  geom_boxplot(aes(x=task, y=Roberto.Model.Negative, fill="red"), alpha = 0.9) + 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        legend.position="none") +
  labs(title = "Boxplot of Negative Responses By Task Using the Roberto Model", 
       x = "Task", 
       y = "Roberto Model Negative (0 - 1)")

p2 <- ggplot(t_neutral_roberto) +
  geom_boxplot(aes(x=task, y=Roberto.Model.Neutral, fill= "orange"), alpha = 0.9) +
  scale_fill_manual(values = c("orange")) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        legend.position = "none") +
  labs(title = "Boxplot of Neutral Responses By Task Using the Roberto Model", 
       x = "Task", 
       y = "Roberto Model Positive (0 - 1)")

p3 <- ggplot(t_positive_roberto) +
  geom_boxplot(aes(x=task, y=Roberto.Model.Positive, fill = "lightblue"), alpha = 0.9) +
  scale_fill_manual(values = c("lightblue")) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        legend.position="none") +
  labs(title = "Boxplot of Positive Responses By Task Using the Roberto Model", 
       x = "Task", 
       y = "Roberto Model Positive (0 - 1)")

p4 <- ggplot(overall_long, aes(x = Score.Type, y = Score, fill = Score.Type)) +
  geom_boxplot(alpha = 0.9) +
  scale_fill_manual(values = c("Negative" = "red", "Neutral" = "orange", "Positive" = "lightblue")) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        legend.position = "none") +
  labs(title = "Boxplot of Responses By Score Type Using the Roberto Model", 
       x = "Score Type", 
       y = "Score (0 - 1)")

plots <- (p1 + p2) / (p3 + p4)
print(plots)

