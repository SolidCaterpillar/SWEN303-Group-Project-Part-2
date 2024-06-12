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


Most of the results are positive according to the Roberta Model and more results are positive according to the Vader model, so we believe that our prototype was successful in this way. We expected most of our tasks to have more of a neutral or positive factor (as they turned out to be), since most of the comments by the test subjects was simply describing what they were doing with the occasional appreciation or pain point.

While this is not a statistically significant sample, the sentiment with what we observed lines up with what we saw during the user walkthroughs. Slight difficulties with the expense form resulted in more negative feedback, as well as one user having problems with the expenses page. Positive respenses were seen with the customisation options, as user's really liked these features. 

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

In the Usability Test Plan, we determined that we would be aiming for **an average SUS Score of 65 with none less than 50**.\
We have satisfied this condition, since our **median and mean score were 81.25 and 80.0 respectively**; both were equal or greater than **65**. Additionally, each SUS score was above **50** by at least **10**.

<br>

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

## 4. User Walkthrough (Synchronous/Qualitative/Subjective)

When user's were doing walkthrough, we collected any pain points ore issues that they identified as they went through the user tasks. We aggregated them into the following document [here](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/blob/main/User_Walkthroughs/All_Walkthroughs.md?plain=0).
Based on the comments and reactions of the test-subject during the test, we came up with some problems/issues to focus on.\


## 5. Focus Groups (Asynchronous/Qualitative/Subjective)

Based on the Focus Groups' answers to our questions, we identified more issues:

### What were your first impressions of the app?
19. **Problem**: The navigation bar was considered too dark, and low contrast between the icons and the background.\
**Severity Scale**: 3

    Important Fix

20. **Problem**: Thought that the overall colour scheme was a bit too "swampy"\n
**Severity Scale**: 2

    Cosmetic thing, recurring issue

21. **Problem**: considered the homepage too crowded \
**Frequency**: 1 \
**Severity Scale**:  1

    People in focus group liked that, other didn't like.

22. **Problem**: Did not like the past/future on the expense page\
**Severity Scale**: 0

    One group gave feedback that they really like that.

### Describe your experience as you navigated the app?
23. **Problem**: The help and support button in the hamburger menu did not function.\
**Severity Scale**: 4

    Format issue from earlier

24. **Problem**: Navigation in the top left in settings, expected to use system back button. \
**Severity Scale**: 1

    Something we would implement in a production prototype, not something figma would do

25. **Problem**: Considered the "insight" name confusing. \
**Severity Scale**: 2

    Could have a different name, relatively minor and most people understood.

26. **Problem**: Would want more "insight" stuff on the home page. \
**Severity Scale**: 0

    More graphs, and previews. We wanted more visual stuff.

    Other group really liked simple layout, and actually wanted it to be simpler.

### Were there any parts of the app that you found confusing or hard to use?
27. **Problem**: In dark mode, some text was not visible.\
**Severity Scale**: 4 

    As earlier, same score

28. **Problem**: Pay up was confusing -> incoming and upcoming are in separate places could be in one place. \
**Severity Scale**: 3

    This is in the homepage, upcoming expenses was confusing to users. Shows the need for a tutorial or clear seperation.

29. **Problem**: The help and support tab was separate in the settings. \
**Severity Scale**: 4

    As earlier

30. **Problem**: Was confused between household settings and app setting\
**Severity Scale**: 2

    As earlier

31. **Problem**: There was no implementation to manage flatmates or groups, even though there was a button for "Household Settings".\
**Severity Scale**: 2

    It was not one of our tested user flows, however, testers said it would be useful

### How did you feel about the colour scheme of the app?
32. **Problem**: The colours used in the navigation bar and header were not appealing, and participants suggested removing the blue colour.\
**Severity Scale**: 3

    Major issue with colours, will require a rework. 

33. **Problem**: The color was swampy\
**Severity Scale**: 1

    It's a feeling cosmetic.

34. **Problem**: The different tones was good but green overall was not bad -> could be better. \
**Severity Scale**: 1

    Good colour theory, just green is a bad vibe.

35. **Problem**: The blue is too dark on the add expenses. \
**Severity Scale**: 1

    No-one had trouble, just looked bad against the green.


### If this were a real app, would you use it? Why or why not?
36. **Problem**: Lack of intuitive design elements. Lack of consistency overall\
**Severity Scale**: 1

    Icons are different from the rest of the design, it created a sense of friction within the design. 

    Our team disagees as they serve different functions, profile icons weren't going to be similar to nav-bar.

37. **Problem**: "Pay Up" was unclear, did not know what that meant. \
**Severity Scale**: 2

    The word pay-up is confusing. 

    This shows the importance of an onboarding tutorial for the app, since it solves many of the mentionned problems.

### Overall Issues

38. **Problem**: The layout of the payments page was well-received, but users had issues with the colour scheme and navigation functionality.\
**Severity Scale**: ?

    Highlights an overall themes with our colours and navigation indicators

39. **Problem**: The lack of an onboarding process made it difficult for users to discover certain features, like swiping between pages.\
**Severity Scale**: ?

    Users had issues with understanding the purpose of key functionalities. This induces a sense of complexity that decreases the positive UX of the app.

<br>

## _Table of Tasks/Issues_

| ID  | Task  | Description                                                                                             | Severity | Assigned To     |
|-----|-------|---------------------------------------------------------------------------------------------------------|----------|-----------------|
| [13](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/1)  | Task 5| High contrast had issues with text. Noticed in the homepage and FAQ.                                     | 4        |      Ricky           |
| [15](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/2)  | Task 6/FG| User confused due to a non-functional help and support button in hamburger menu.                         | 4        |         Mazen        |
| [27](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/3)  | FG    | In dark mode, some text was not visible.                                                                 | 4        |      Hamish           |
| [29](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/2)  | FG    | The help and support tab was separate in the settings.                                                   | 4        |     Mazen            |
| [5](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/4)   | Task 2| User initially tried clicking pay card on homepage, only then did they press the pay icon.               | 3        |     Alvien            |
| [11](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/5)  | Task 4| Used the fab at the top and looked at the pie chart for all insights. Did not access the category.       | 3        |     Hamish            |
| [19](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/6)  | FG    | Navigation bar was considered too dark, and low contrast between the icons and the background.           | 3        |        Hamish/Risheet/Ricky         |
| [28](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/7)  | FG    | Pay up was confusing -> incoming and upcoming are in separate places could be in one place.              | 3        |      Mazen           |
| [32](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/8)  | FG    | The colours used in the navigation bar and header were not appealing. Suggested removing the blue colour.| 3        |       Hamish/Risheet/Ricky          |
| [2](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/9)   | Task 1| Expense form was confusing for the user. They wanted to split everything immediately and got lost.       | 2        |   Z'arn              |
| [3](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/10)   | Task 1| Unable to verify the addition of the expense due to unclear location.                                    | 2        |        Z'arn          |
| 6   | Task 2| No feedback on homepage or pay-up page after payment confused.                                           | 2        |         Z'arn         |
| 7   | Task 2| Colours made it seem like they were uninteractable on the pay up page.                                   | 2        |     Hamish/Risheet/Ricky            |
| 9   | Task 3| Confusion in navigating to expenses page.                                                                | 1        |       Z'arn          |
| 14  | Task 5| User looked for a 'Customizability' button first, then was unsure what to choose between settings.       | 2        |                 |
| 16  | Task 6| Difficulty in finding support resources.                                                                 | 2        |                 |
| 25  | FG    | Considered the "insight" name confusing.                                                                 | 2        |                 |
| 30  | FG    | Was confused between household settings and app setting.                                                 | 2        |                 |
| 37  | FG    | Pay up was unclear, did not know what that meant.                                                        | 2        |                 |
| 1   | Task 1| Expense creation broke the first time. Create button did not work.                                       | 1        |                 |
| 4   | Task 1| Found trouble with interacting with the form (Could be a Figma issue).                                   | 1        |                 |
| 8   | Task 3| Difficulty in viewing past/future expenses.                                                              | 0        |                 |
| 10  | Task 3| Misinterpretation of expenses summary.                                                                   | 0        |                 |
| 12  | Task 5| User was confused, expected system to be the default setting for colour.                                 | 0        |                 |
| 18  | Task 6| No guidance for troubleshooting.                                                                         | 0        |                 |
| 22  | FG    | Did not like the past/future on the expense page.                                                        | 0        |                 |
| 26  | FG    | Would want more "insight" stuff on the home page.                                                        | 0        |                 |
| 33  | FG    | The colour was swampy.                                                                                   | 1        |                 |
| 34  | FG    | The different tones were good but green overall was not bad -> could be better.                          | 1        |                 |
| 35  | FG    | Blue is too dark (on the add expenses).                                                                  | 1        |                 |
| 36  | FG    | Lack of intuitive design elements. Lack of consistency overall.                                          | 1        |                 |
| [31](https://gitlab.ecs.vuw.ac.nz/course-work/swen303/2024/project1/t7/swen303-part2/-/issues/12)  | FG    |  There was no implementation to manage flatmates or groups, even though there was a button for "Household Settings"                                       | 2        |   Risheet              |
| 38  | All   | Layout of the payments page was well-received, but issues with colour scheme and navigation functionality.| ?        |        Risheet/Ricky/Hamish         |
| 39  | All   | Lack of an onboarding process made it difficult for users to discover certain features.                  | ?        |    Alvien/Mazen/Z'arn             |

FG: Focus Group
