# Usability Test Discussion

### What were the most interesting things you found from user testing?

### What did you learn from conducting the user testing? (use process, refer to prototype)
1. #### User Testing Organisation - Time Complexity and Clarity
    As we began our testing, it became apparent that we underestimated the need to manage communication and complexity for our users. This showed up in two major areas: management of our script and organisation of our tasks. 

    When it came to how we managed communication, we didn’t have a uniform script for facilitators, but rather a set of bullet points that would go through the key points of our testing. This led to many of us using different approaches, significantly impacting user performance. Some facilitators prompted users more than others, leading to variations in user experience. This underscores the need for a **standardised script**  to ensure **consistency** and **fairness** in testing. In doing this, we would get more consistent outcomes among all our users. 

    User testing is a complex and time-consuming process that requires careful planning and execution. As we conducted our tests, it highlighted the importance of thorough preparation. If we were scaling this process, we would need to ensure that we would have a **more streamlined process**. Currently, it was disorganised with people switching roles during testing for greater breadth in experience. If we were to expand our user testing, especially with more time-consuming forms of measurement such as user-walkthroughs and focus groups, it would be imperative to have set roles to **reduce confusion**. This would reduce wasted time for both test subjects and testers, allowing for us to go through a larger volume of users.

2. #### Data-Driven UX:
    The necessity of data-driven UX design was reinforced. Collecting and analysing various types of data, such as: data types, time as well as the objectivity of data. In addition, we thought about what tools we could use to help speed up and access different measurements.

    Qualitative feedback and quantitative metrics were essential for understanding user needs and improving the design. Quantitative metrics allowed us to get an objective view of our data, and use it as a point of comparison to other designs. By using SUS, we could get a point of **comparison** to existing UX standards. On the other hand, when we thought about getting more **contextual insights**, we made sure that we had qualitative data from testing. Our use of focus groups allowed for a more flexible method of data collection, allowing us to focus on **key concerns** from users[2].

    Another concern was time and how we collected information, as it changes the experience and feedback we receive from users [2]. When we used synchronous data collection, we could get more **direct feedback** based on what users were thinking of at the time. Sentiment analysis allowed us to collect insights from users as they participated in walkthroughs. This gave us another dimension to our analysis. Our asynchronous data collection allowed for greater flexibility and scalability of our data collection. This allowed us to explore different aspects of our design that we perhaps couldn’t during a live walkthrough.

    Finally we needed to consider how objective/subjective our data was. By having it objective, it would be more comparable and less impacted by our personal bias [1]. When we conducted SUS surveys and sentiment analysis, our use of objective metrics set a benchmark for our analysis. On the other hand, our qualitative metrics allow for a richer, contextual understanding of the user’s situation. This would allow us to understand their perspective better. When we used focus groups, we could really understand what they were struggling with.  

    AI-driven sentiment analysis was pivotal in our data-driven UX approach, providing deep insights into users' emotional responses. Using Vader and Roberta models to analyse user transcripts, we categorised feedback into negative, neutral, and positive sentiments. This helped us tap into the emotional response of users to our analysis. By aligning AI tools with user behaviour, we create a more informed picture of the user’s experience [2]. This will allow us to leverage them in future iterations of our design.

3. ### Task Difficulties and Sentiment Analysis:

    Our group utilised user walkthroughs, focus groups and sentiment analysis for our user testing methods. We found it was rather hard to perform these tasks due to a lack of experience and foresight.

    A common problem that we encountered during our testing was that the task was only as good as the testers conducting the tests. For each testing method, the testers consisted of a facilitator who guided the user throughout the testing method, and a note taker who would log any discussion and difficulties the users had. Both of these roles were hard to get right, and the data collected from the tests hinged on their effectiveness. For instance the note taker had to be keenly aware of what users are doing, while the facilitator had to find a way to intuitively guide them. If they were lacking in their role the data obtained would be greatly limited. This problem was prevalent in both the focus groups, and user walkthroughs. When discussing the advantages and disadvantages of focus groups [3] the quality of discussion is determined by the experience of the facilitator.

    During the planning phase we thought that sentiment analysis would be a good addition to the testing process. Though it was overall good, we found that the data provided may be inconsistent, and added another layer of problems with our user walkthroughs. Sentiment analysis was done by recording the voices of our testing subjects during the user walkthroughs. These voices were then fed into an AI training model to check the overall mood while they performed the actions. As stated by [4], sentiment analysis often has **context-dependent** errors, meaning that a user may give a critique or confused statement while using positive words. The presence of positive words may make the AI Tool think that the statement was positive despite it being not. We also fonud negative sentiment found when user's said words such as *garbage*  when completing their tasks. We encountered this problem during our testing of the tool, which could have made some piece of data unreliable. Another hardship we encountered was that for the sentiment analysis to work, we needed our testing subjects to be vocal with their actions. During our user walkthoughts some users were not as vocal as others which made collecting this data a bit spare. Incorporating this made us realise that AI tools, though good at processing something into cool data, may provide some inconsistencies.

4. ### Bias Awareness:
    We discovered through our user testing that biases are ever present. These biases helped to improve our prototype, while it also made conducting the testing methods harder. We discovered user, and tester biases that occurred during the tests.

    The user testing were the biases our users had while testing our prototype. Since the users we tested had already developed some form of expense app, or at least had used one, they had a general knowledge of the expense app, and a preconceived notion of what it should do. This was helpful as they provided us insightful information regarding features they wanted in the expense app. Although this feedback might be subjective to the person and may not highlight our entire user base.

    The second type of bias we found were tester biases, or biases that affected us. Since we developed the prototype it was easy for us to understand and navigate the system. This may have made developing the task for our user walkthoughts a bit rigid, and not at all intuitive.


### What were the most significant results you found from user testing? 

The results in terms of issues were of various types: some were Figma-related issues, some were colour-related issues and the rest were functional issues. Some of these issues came from oversights and others due to the lack of user-flows involving the functionality. Here are the key results:

1. #### Text Readability Issue
- _**High-Contrast Mode:**_ \
There was an issue when the High-Contrast mode was enabled. On the entire application but specifically noticeable on the FAQ page, some of the text was not readable due to the lack of contrast. This is because we did not specify the contrast colour in Figma and demonstrate what it looks like. This issue affects the aesthetic appeal and visual clarity for users. To address it, we might create the high contrast manually or add an appropriate colour variable in Figma.

- _**Dark Mode:**_ \
This issue also applies in dark mode. Some text on all the pages in the dark mode is not visible, resulting in severity 4 during the user testing. This issue affects the aesthetic appeal for accessibility use. To address it, we should adjust the colour variables.

2. #### Help and Support Button in the Hamburger Menu Issue

    Another severity 4 issue was the confusion about the non-functional Help and Support button on the Hamburger Menu. The functional Help and Support button is in the App Settings, where the user needs to click the App Settings on the hamburger menu. However, most users' first instinct is to click the Help and Support button on the Hamburger Menu to access help and support. However, we have not implemented it due to overlooking it. To address it, we have created an interaction for the Help and Support button on the Hamburger menu to direct the user in two ways to perform help and support.

3. #### Confusion on Pay Up Issue
    The confusion on the Pay Up page was that the users did not know what Pay Up means in the context of the app. This is significant because it is an issue in the conceptual clarity of the app. The test subjects tried to click the Pay Up card instead of the Pay Up button to pay. Some users recommended to have the Upcoming Expenses and Pay Up in the same Dropdown but with a selection tab to navigate between them. This would ensure more payments can be seen.


### References
[1] D. E. Team, "Differences between objective and subjective data," Differences Between Objective and Subjective Data, March 9, 2023. [Online]. Available: https://dovetail.com/research/objective-vs-subjective-data/

[2] C. Anslow, SWEN303 Lecture 18 Data-Driven UX[Lecture notes]. Available: https://nuku.wgtn.ac.nz/courses/17706/files/2697449?wrap=1

[3] "Sentiment Analysis Challenges," AIMultiple, 2023. [Online]. Available: https://research.aimultiple.com/sentiment-analysis-challenges/. 

[4] "Focus Groups," Johns Hopkins University Student Affairs, 2023. [Online]. Available: https://studentaffairs.jhu.edu/viceprovost/assessment-analysis/assessment-tools-methods/focus-groups/.
