# Usability Test Results

## _Usability Metrics_


## 1. Speed of Navigation (Synchronous/Quantitative/Objective)

We realised that this would not be a very precise or accurate metric as everyone had different reaction times and a different perception of when a task had started and ended. Also, the test subject was encouraged to explain their decisions throughout the testing process and answering the questions asked by the faciltator, which adds extra time to the total.

However, we recorded some times:

| Temporal Insights | Test Subject 1 | Test Subject 2 | Average |
| ------ | ------ | ------ | ------ |
|  Total Time (approx.)      |   _**3 minutes 52 seconds**_     |   _**6 minutes 43 seconds**_     | _**5 minutes 17.5 seconds**_     |
|   Number of Tasks     |   _**6**_      |   _**6**_      | - |
|  Time per Task (approx.)      |  _**38.7 seconds**_      | _**1 minute 7 seconds**_      | _**52.9 seconds**_ |

According to our **Usability Test Plan**, we aimed for each task to be completed in **below 1 minute**, which we have accomplished with an average task completion time of **approx. 52.9 seconds**, including the time for explanations and comments by the test subject and facilitator. 

<br>

## 2. Sentiment Analysis (Synchronous/Qualitative/Subjective)

We recorded the transcripts of the test subjects and used 2 models for sentiment analysis.\
All the detailed results are in the `Sentiment_Analysis/Results` directory, but the following graphs are an overview of negative, neutral, and positive responses:

### Vader Model Sentiment Analysis Results
![Sentiment Analysis Results using the Vader Model](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/raw/main/Images/vader_model.png?ref_type=heads "Sentiment Analysis Results using the Vader Model")

### Roberta Model Sentiment Analysis Results
![Sentiment Analysis Results using the Roberta Model](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/raw/main/Images/roberta_model.png?ref_type=heads "Sentiment Analysis Results using the Roberta Model")


### Discussion of Sentiment Score results
The sentiment analysis of responses by task provides valuable insights into the user experience with our prototype. By utilizing both the Roberta and Vader models, we can compare and contrast the sentiment across various tasks to identify strengths and areas for improvement.

#### [Roberta Model Analysis](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/blob/main/Usability%20Test%20Plan.md?ref_type=heads#models) (Link to test plan model)

**Negative Responses:** 

The variability of negative responses is significant across tasks. Task three notably has a higher median and a wider interquartile range (IQR), indicating more frequent and diverse negative feedback. Tasks one and two also show variability, but to a lesser extent.

**Neutral Responses:** 

Neutral responses are more consistent across tasks. However, tasks one and two have slightly higher median scores, suggesting participants had more neutral experiences with these tasks.

**Positive Responses:** 

Positive responses are high across all tasks, with tasks four and five having particularly high medians and narrow IQRs, indicating strong positive feedback. Task one, however, has a lower median and a wider IQR, suggesting more varied positive feedback.

**Overall Responses:** 

Positive responses dominate overall, followed by neutral and negative responses. This distribution aligns with our expectations, indicating a generally positive user experience.

#### [Vader Model Analysis](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/blob/main/Usability%20Test%20Plan.md?ref_type=heads#models) (Link to test plan model)

**Negative Responses:** 

Similar to the Roberta model, the Vader model indicates relatively low negative responses across all tasks, though some variability exists. Task two has a slightly higher median compared to other tasks, suggesting more negative feedback for this task.

**Neutral Responses:** 

Neutral responses are more evenly distributed across tasks. Task one has a higher median and a wider interquartile range (IQR), indicating that participants had more neutral reactions to this task.

**Positive Responses:** 

Positive responses are generally high across all tasks. Tasks four and five show the highest medians and narrow IQRs, indicating that these tasks were particularly well-received by participants.

**Overall Responses:** 

The distribution of responses by score type shows a clear predominance of positive responses, followed by neutral and negative responses. This supports the overall positive sentiment observed in the Roberta model analysis.

### Sentiment Results against Usability Goals
Both the Roberta and Vader models indicate a predominantly positive user experience with our prototype. The consistent high positive responses and relatively low negative responses suggest that the prototype is well-received by users. The neutral responses also indicate that while there are areas for improvement, users generally did not experience significant issues. This meets our initial goal of ensuring that our users largely have a neutral-to-positive experience with our application. 

Conducting this analysis however, we noticed some points of resistance:
- **Expense form and page:** The expense form and expenses page received more negative feedback, indicating areas that require attention. Improving the usability of these features will likely enhance the overall user experience.

We also noticed some positive areas:
- **Customisation options:** Customisation options received high praise from users, contributing to the positive responses. These features should be retained and potentially expanded.

### Next Steps
To build further on these results, we should look at expanding the scope of our testing and the number of tests. By increasing the scope, we allow for a broader emotional understanding of users as they navigate the app. By increasing the number of tests, we can reduce any potential variabilities, allowing us to have a more accurate view of the application.

<br>

## 3. SUS (System Usability Scale) (Asynchronous/Quantitative/Subjective) 

The SUS scores were calculated as mentionned in the Usability Test Plan. This is the overview:

```
SUS Scores = [82.5, 75.0, 95.0, 87.5, 80.0, 60.0]
Lowest: 60.0
Highest: 95.0
Lower Quartile: 76.25
Upper Quartile: 86.25
Inter Quartile Range: 10.0
Median: 81.25
Mean: 80.0
Standard Deviation = 11.937336386313323

```
![Analysis of SUS scores](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/raw/main/Images/SUS_results.png?ref_type=heads "Analysis of SUS scores")

### Discussion of SUS Score Results
The System Usability Scale (SUS) scores derived from our usability testing have provided substantial insights into the usability of our product. The calculated SUS scores are [82.5, 75.0, 95.0, 87.5, 80.0, 60.0], yielding a range from a minimum score of 60.0 to a maximum of 95.0. Our analysis further reveals a lower quartile of 76.25 and an upper quartile of 86.25, with an interquartile range of 10.0, indicating a relatively tight clustering of scores within this range. The median score stands at 81.25, and the mean is 80.0, with a standard deviation of 11.937, reflecting a generally high level of usability with some variability in user experiences.

When we look at the breakdown of SUS scores by question, we can get more targeted insights based on positive and negative feedback:
- Positive Questions: Questions such as 1, 3, 5, 7, and 9 (indicated in blue) generally received higher scores, with median values around 4 and 5, indicating a strong agreement among participants regarding the positive aspects of the usability. The interquartile range (IQR) for these questions is fairly spread out between 3-5 on the scale. However, this still reflectslargely consistent positive feedback.

- Negative Questions: When looking at the scores, we can largely see on average, we recieved low negative scores in this sample. Here, we have medians and means between 1-2 in the following sample. This indicates low negative traits in our app, showing that any pain points did not significatly impact the system's usability. While there doesn't appear to be a great range in results from this sample, with all IQR's between 1 and 2. We do have outliers in our responses. Question 4, in particular, has a low median score and includes an outlier, indicating usability issues identified by individual participants. This may indicate slight differences in usability among different groups, which means we may require a more targeted approach.

### SUS Scores Against Usability Goals
In our Usability Test Plan, we set a target average SUS score of 65, with a stipulation that no individual score should fall below 50. This benchmark was established based on widely accepted UX guidelines which suggest that a SUS score of 68 is considered average [1], and scores above this threshold indicate good usability. By these standards, our target of 65 was already conservative, aiming to ensure that our product delivers at least an above-average user experience.

Our results significantly exceed these targets, with both the median and mean scores (81.25 and 80.0, respectively) well above the 65 threshold. Furthermore, each individual SUS score was above 50, with the lowest score being 60.0, which is 10 points higher than our minimum acceptable score. This indicates not only that our product has met the baseline usability criteria but also that it provides a highly satisfactory user experience for a majority of users.

Reflecting on this high SUS score. This indicates that we have an excellent foundation to improve from and develop the UX of our design. Future improvements could also involve decreasing variability in our results by increasing our usability over all personas.

### Next Steps

As a result of our fidings from our SUS Scores, we can get some overall insight on our application.

**High Usability Indicated by High Scores:** The high average SUS score indicates that our product is perceived as user-friendly and meets the needs of our target audience effectively. We can also see this with the spread of positive questions, with its high scores. This suggests that the core functionalities and positive interactions within the product are well-implemented.

**Reducing Range in Positive Feedback:** From our survey, there is greater range in the positive reception of our application. With an IQR ranging from 3 to 4-5, it shows room for improvement. In particular, we could address questions 1,5, and 7, which would address how much they like the app, function integration, and onboarding. By reducing the range of positive outcomes to 4-5, we can build on our user-experince and reach an excellent SUS score.

**Addressing Negative Feedback:** Focus should be placed on understanding the specific issues raised by Questions 2, as they exhibit the most significant negative feedback. Conducting follow-up user interviews or qualitative studies can provide deeper insights into the specific pain points. While it's crucial to address the negative feedback, maintaining and enhancing the positive aspects identified by the high scores is also important. This balanced approach will ensure comprehensive usability improvements.

<br>


## 4. User Walkthrough (Synchronous/Qualitative/Subjective)

During the user walkthroughs, we collected feedback on pain points and issues identified by users as they navigated through the tasks. The gathered data was compiled into a comprehensive document available [here](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/blob/main/User_Walkthroughs/All_Walkthroughs.md?plain=0). This document includes detailed observations and severity ratings of each problem encountered. By analysing the comments and reactions of the test subjects, we identified key areas of concern. These insights have helped us pinpoint specific problems to focus on, ensuring that we address the most critical issues to enhance the user experience effectively. This systematic approach allows us to prioritise fixes and improvements based on real user feedback, ultimately leading to a more intuitive and user-friendly application.


## 5. Focus Groups (Asynchronous/Qualitative/Subjective)

Our focus groups provided valuable insights into user experiences and preferences, which we have aggregated into the following document [here](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/blob/main/Focus_Groups/All_Focus_Groups.md). Participants highlighted several issues, such as the navigation bar's low contrast and the "swampy" colour scheme. Additionally, there were concerns about the crowded homepage and the confusing layout of the expense page. Users also pointed out functional problems, like the non-functional help and support button and difficulties navigating settings. The feedback underscored the need for better visual indicators, clearer navigation, and a more intuitive design to enhance user satisfaction and ease of use. These insights are critical as we refine our application to better meet user expectations and improve overall usability.

## Note: Severity Rating

We are using the severity rating for a usability problem based on Jakob Nielsen (For **Cognitive Walkthrough** and **Focus Groups**):

- 0 = I don’t agree that this is a usability problem at all
- 1 = Cosmetic problem only: need not be fixed unless extra time is available on project
- 2 = Minor usability problem: fixing this should be given low priority
- 3 = Major usability problem: important to fix, so should be given high priority
- 4 = Usability catastrophe: imperative to fix this before the product can be released

We chose this because we have used it in the previous part of the group project to evaluate our team’s wireframe. We are going to use it to evaluate the different team members on our group’s prototype. We will be using the frequencies of people running into pain points/confusion and factor them into our decision.

We believe that anything that is a purely Figma issue should be a 1. We will keep these in mind if they come up in future prototypes, especially ones using different technologies.

<br>

## _Table of Tasks/Issues_

| ID  | Task  | Description                                                                                             | Severity | Assigned To     |
|-----|-------|---------------------------------------------------------------------------------------------------------|----------|-----------------|
| [13](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/1)  | Task 5| High contrast had issues with text. Noticed in the homepage and FAQ.                                     | 4        |      Ricky           |
| [15](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/2)  | Task 6/ Focus Group| User confused due to a non-functional help and support button in hamburger menu.                         | 4        |         Mazen        |
| [27](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/3)  | Focus Group    | In dark mode, some text was not visible.                                                                 | 4        |      Hamish           |
| [29](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/2)  | Focus Group    | The help and support tab was separate in the settings.                                                   | 4        |     Mazen            |
| [5](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/4)   | Task 2| User initially tried clicking pay card on homepage, only then did they press the pay icon.               | 3        |     Alvien            |
| [11](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/5)  | Task 4| Used the fab at the top and looked at the pie chart for all insights. Did not access the category.       | 3        |     Hamish            |
| [19](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/6)  | Focus Group    | Navigation bar was considered too dark, and low contrast between the icons and the background.           | 3        |        Hamish/Risheet/Ricky         |
| [28](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/7)  | Focus Group    | Pay up was confusing -> incoming and upcoming are in separate places could be in one place.              | 3        |      Mazen           |
| [32](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/8)  | Focus Group    | The colours used in the navigation bar and header were not appealing. Suggested removing the blue colour.| 3        |       Hamish/Risheet/Ricky          |
| [39](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/15)  | All   | Lack of an onboarding process made it difficult for users to discover certain features like "Pay Up"                | 2        |    Alvien/Mazen/Z'arn             |
| [2](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/9)   | Task 1| Expense form was confusing for the user. They wanted to split everything immediately and got lost.       | 2        |   Z'arn              |
| [3](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/10)   | Task 1| Unable to verify the addition of the expense due to unclear location.                                    | 2        |        Z'arn          |
| [6](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/11)   | Task 2| No feedback on homepage or pay-up page after payment confused.                                           | 2        |         Z'arn         |
| [7](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/13)   | Task 2| Colours made it seem like they were uninteractable on the pay up page.                                   | 2        |     Hamish/Risheet/Ricky            |
| [38](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/13)  | All   | Layout of the payments page was well-received, but issues with colour scheme and navigation functionality.| 2        |        Risheet/Ricky/Hamish         |
| [14](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/14)  | Task 5| User looked for a 'Customizability' button first, then was unsure what to choose between settings.       | 2        |                 |
| [16](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/2)  | Task 6| Difficulty in finding support resources.                                                                 | 2        |                 |
| [25](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/16)  | Focus Group    | Considered the "insight" name confusing.                                                                 | 2        |                 |
| [30](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/14)  | Focus Group    | Was confused between household settings and app setting.                                                 | 2        |                 |
| [37](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/15)  | Focus Group    | Pay up was unclear, did not know what that meant.                                                        | 2        |                 |
| [31](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/12)  | Focus Group    |  There was no implementation to manage flatmates or groups, even though there was a button for "Household Settings"                                       | 2        |   Risheet              |
| [9](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/9)   | Task 3| Confusion in navigating to expenses page.                                                                | 1        |       Z'arn          |
| [33](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/8)  | Focus Group    | The colour was swampy.                                                                                   | 1        |                 |
| [34](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/8)  | Focus Group    | The different tones were good but green overall was not bad -> could be better.                          | 1        |                 |
| [35](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/8)  | Focus Group    | Blue is too dark (on the add expenses).                                                                  | 1        |                 |
| 1   | Task 1| Expense creation broke the first time. Create button did not work.                                       | 1        |                 |
| 4   | Task 1| Found trouble with interacting with the form (Could be a Figma issue).                                   | 1        |                 |
| 36  | Focus Group    | Lack of intuitive design elements. Lack of consistency overall.                                          | 1        |                 |
| 8   | Task 3| Difficulty in viewing past/future expenses.                                                              | 0        |                 |
| 10  | Task 3| Misinterpretation of expenses summary.                                                                   | 0        |                 |
| 12  | Task 5| User was confused, expected system to be the default setting for colour.                                 | 0        |                 |
| 18  | Task 6| No guidance for troubleshooting.                                                                         | 0        |                 |
| 22  | Focus Group    | Did not like the past/future on the expense page.                                                        | 0        |                 |
| 26  | Focus Group    | Would want more "insight" stuff on the home page.                                                        | 0        |                 |

**P.S:** IDs are linked to Issues

### References
[1] Benchmark the usability of your digital products: SUS scores. (n.d.). Graphite Digital. [Online]. Available: https://www.graphitedigital.com/insights/sus-scores-usability#:~:text=The%20average%20SUS%20score%20is,with%20minimal%20need%20for%20improvements. [Accessed: June 12, 2024].
