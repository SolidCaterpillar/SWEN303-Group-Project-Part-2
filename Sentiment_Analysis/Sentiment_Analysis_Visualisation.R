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

# Select only the desired columns for Roberto model
t_positive_roberto <- combined_data %>%
  select(Test.Subject, Roberto.Model.Positive, task) %>%
  mutate(task = factor(task, levels = c("task.one", "task.two", "task.three", "task.four", "task.five", "task.six")))

t_negative_roberto <- combined_data %>%
  select(Test.Subject, Roberto.Model.Negative, task) %>%
  mutate(task = factor(task, levels = c("task.one", "task.two", "task.three", "task.four", "task.five", "task.six")))

t_neutral_roberto <- combined_data %>%
  select(Test.Subject, Roberto.Model.Neutral, task) %>%
  mutate(task = factor(task, levels = c("task.one", "task.two", "task.three", "task.four", "task.five", "task.six")))

# Select only the desired columns for Vader model
t_positive_vader <- combined_data %>%
  select(Test.Subject, Vader.Model.Positive, task) %>%
  mutate(task = factor(task, levels = c("task.one", "task.two", "task.three", "task.four", "task.five", "task.six")))

t_negative_vader <- combined_data %>%
  select(Test.Subject, Vader.Model.Negative, task) %>%
  mutate(task = factor(task, levels = c("task.one", "task.two", "task.three", "task.four", "task.five", "task.six")))

t_neutral_vader <- combined_data %>%
  select(Test.Subject, Vader.Model.Neutral, task) %>%
  mutate(task = factor(task, levels = c("task.one", "task.two", "task.three", "task.four", "task.five", "task.six")))

# Combine all Vader model data into one dataframe for overall plot
overall_long_vader <- combined_data %>%
  select(Test.Subject, starts_with("Vader.Model"), -starts_with("Vader.Model.Overall"), task) %>%
  pivot_longer(cols = starts_with("Vader.Model"), 
               names_to = "Score_Type", 
               values_to = "Score") %>%
  mutate(Score_Type = case_when(
    grepl("Negative", Score_Type) ~ "Negative",
    grepl("Neutral", Score_Type) ~ "Neutral",
    grepl("Positive", Score_Type) ~ "Positive"
  ))

# Combine all Roberto model data into one dataframe for overall plot
overall_long_roberto <- combined_data %>%
  select(Test.Subject, starts_with("Roberto.Model"), task) %>%
  pivot_longer(cols = starts_with("Roberto.Model"), 
               names_to = "Score_Type", 
               values_to = "Score") %>%
  mutate(Score_Type = case_when(
    grepl("Negative", Score_Type) ~ "Negative",
    grepl("Neutral", Score_Type) ~ "Neutral",
    grepl("Positive", Score_Type) ~ "Positive"
  ))



# Plotting for Vader model
p1_vader <- ggplot(t_negative_vader) +
  geom_boxplot(aes(x = task, y = Vader.Model.Negative, fill = "red"), alpha = 0.9) + 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        legend.position = "none") +
  labs(title = "Boxplot of Negative Responses By Task Using the Vader Model", 
       x = "Task", 
       y = "Vader Model Negative (0 - 1)") +
  ylim(0, 1)

p2_vader <- ggplot(t_neutral_vader) +
  geom_boxplot(aes(x = task, y = Vader.Model.Neutral, fill = "orange"), alpha = 0.9) +
  scale_fill_manual(values = c("orange")) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        legend.position = "none") +
  labs(title = "Boxplot of Neutral Responses By Task Using the Vader Model", 
       x = "Task", 
       y = "Vader Model Neutral (0 - 1)") +
  ylim(0, 1)

p3_vader <- ggplot(t_positive_vader) +
  geom_boxplot(aes(x = task, y = Vader.Model.Positive, fill = "lightblue"), alpha = 0.9) +
  scale_fill_manual(values = c("lightblue")) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        legend.position = "none") +
  labs(title = "Boxplot of Positive Responses By Task Using the Vader Model", 
       x = "Task", 
       y = "Vader Model Positive (0 - 1)") +
  ylim(0, 1)

p4_vader <- ggplot(overall_long_vader, aes(x = Score_Type, y = Score, fill = Score_Type)) +
  geom_boxplot(alpha = 0.9) +
  scale_fill_manual(values = c("Negative" = "red", "Neutral" = "orange", "Positive" = "lightblue")) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        legend.position = "none") +
  labs(title = "Boxplot of Responses By Score Type Using the Vader Model", 
       x = "Score Type", 
       y = "Score (0 - 1)") +
  ylim(0, 1)

# Plotting for Roberto model
p1_roberto <- ggplot(t_negative_roberto) +
  geom_boxplot(aes(x = task, y = Roberto.Model.Negative, fill = "red"), alpha = 0.9) + 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        legend.position = "none") +
  labs(title = "Boxplot of Negative Responses By Task Using the RoBERTa Model", 
       x = "Task", 
       y = "RoBERTa Model Negative (0 - 1)") +
  ylim(0, 1)

p2_roberto <- ggplot(t_neutral_roberto) +
  geom_boxplot(aes(x = task, y = Roberto.Model.Neutral, fill = "orange"), alpha = 0.9) +
  scale_fill_manual(values = c("orange")) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        legend.position = "none") +
  labs(title = "Boxplot of Neutral Responses By Task Using the RoBERTa Model", 
       x = "Task", 
       y = "RoBERTa Model Neutral (0 - 1)") +
  ylim(0, 1)

p3_roberto <- ggplot(t_positive_roberto) +
  geom_boxplot(aes(x = task, y = Roberto.Model.Positive, fill = "lightblue"), alpha = 0.9) +
  scale_fill_manual(values = c("lightblue")) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        legend.position = "none") +
  labs(title = "Boxplot of Positive Responses By Task Using the RoBERTa Model", 
       x = "Task", 
       y = "RoBERTa Model Positive (0 - 1)") +
  ylim(0, 1)

p4_roberto <- ggplot(overall_long_roberto, aes(x = Score_Type, y = Score, fill = Score_Type)) +
  geom_boxplot(alpha = 0.9) +
  scale_fill_manual(values = c("Negative" = "red", "Neutral" = "orange", "Positive" = "lightblue")) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        legend.position = "none") +
  labs(title = "Boxplot of Responses By Score Type Using the RoBERTa Model", 
       x = "Score Type", 
       y = "Score (0 - 1)") +
  ylim(0, 1)

# Arrange the plots
plots_roberto <- (p1_roberto + p2_roberto) / (p3_roberto + p4_roberto)
print(plots_roberto)

plots_vader <- (p1_vader + p2_vader) / (p3_vader + p4_vader)
print(plots_vader)
