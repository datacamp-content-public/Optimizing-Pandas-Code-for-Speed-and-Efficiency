# **Optimizing Pandas Code for Speed and Efficiency**<br/>by **Leonidas Souliotis**

README and sample lesson deadline: YYYY-MM-DD 

As part of the 'Course Spec' process, you will need to complete the following tasks:

- [ ] Edit this README by filling in the information for steps 1 - 7 according to our README rubric.
- [ ] Update the requirements.sh file in your course repository on GitHub.
- [ ] Add the datasets for your course in the Teach Editor.
- [ ] Complete one sample lesson according to the sample lesson rubric in the Teach Editor.

## Course development resources

* Course admin page: https://www.datacamp.com/teach/

## Step 1: Brainstorming 

This part of the 'Course Spec' process is designed to help guide you through course design by having you think through several key questions. Please make sure to delete the examples provided here for you.

### 1. What problem(s) will students learn how to solve? (minimum of 5 problems)

- [ ] Write a list of ideas for problems that the students will encounter in the course
>- How to select specific columns and rows of a DataFrame
>- How to select random columns and rows of a DataFrame
>- How to iterate accross all the rows of a DataFrame efficiently
>- How to merge and concatinate DataFrames 
>- How to group the entries of a DataFrame and apply functions and transformations

### 2. What are the learning objectives of the course?

- [ ] Write a list of learning objectives for the course. These are not shown to the students, but they will be used to ensure your vision for the course aligns with the vision of your Curriculum Lead.

>Example from our scikit-learn course:
>
>- Learn the difference between DataFrame and Series as Pandas objects
>- Learn how to merge and concatinate DataFrames based on the indices
>- Learn how to iterate through DataFrames' with alternatives than brute looping
>- Learn how to apply fucntions in more than one column efficiently
>- Learn how to group DataFrames according to the values of a specific column (feature)
>- Learn how to impute the missing values of a grouped object
>- Learn how to apply fucntions and transformations on a grouped object
### 3. What technologies, packages, or functions will students use? Please be exhaustive.

- [ ] Write a list of ideas for technologies that you want to use in the course. Include things like R/Python packages, SQL modules, or Google Sheets add-ons. If there are any important functions, methods, or commands that you want to teach, you can mention them here.

- [ ] Add the packages students will use to the requirements.sh file of this repository.

>Example from a course on keras. This example has only a few Python packages and goes into depth on the functions that will be used.
>
>- pandas, numpy
>- Pandas functions:
>- loc, iloc, ix
>- iterrows, apply
>- merge, concatinate, join
>- groupby, filter, transform
>- Numpy functions:
>- mean, sum, min, max, count

### 4. What terms or jargon will you define?

- [ ] Write a list of technical terms, jargon, and acronyms that will be used in the course.

> Example from a course on experimental design. This has an extensive list of statistical terms.
>
>DataFrame, Series, Random sampling, Vectorization, Data transformation


### 5. What analogies or heuristics will you use?

- [ ] Write a list of analogies for concepts, heuristics for best practices, and any other non-technical explanations of things that may be helpful to students _(minimum of two)_.

>Example from a course on forecasting product demand. This analogy is likely intuitive to most people.
>
>Signal and noise - It's like trying to hear someone across a crowded room. Remove the noise, and you can easily understand what they are telling you.


### 6. What mistakes or misconceptions do you expect? 

- [ ] Write a list of common mistakes _(minimum of two)_ that you think students will make. These can be programming mistakes, conceptual misunderstandings, or simply examples of things that are unintuitive. 

>Example from a course on generalized additive models:
>
>- The difference between Pandas DataFrame and Pandas Series
>- The difference between a function appleid to an object and a function that is part of the class of an object
>- The difference between brute looping and looping efficently using iterrows


### 7. What datasets will you use? 

- [ ] Write a list of datasets that you will use in the course, a short description of each dataset (if it's not clear from the title), how you intend to use it and include a link to its source(s).

- [ ] Upload these datasets to your course on the Teach Editor. 

![teach_editor_datasets_upload](https://user-images.githubusercontent.com/20912644/44154482-d2e04b3a-a078-11e8-8ff9-2944fdcabeae.png)

Please avoid [overused datasets](https://authoring.datacamp.com/courses/design/brainstorming-datasets.html).

## Step 2: Who is this course for?

Terms like "beginner" and "expert" mean different things to different people, so we use personas to help instructors clarify a course's audience. When designing a specific course, instructors should explain how it will or won't help these people, and what extra skills or prerequisite knowledge they are assuming their students have above and beyond what's included in the persona.

- [ ] Please select the learner personas that align with your course. 
- [ ] Include an explanation describing your reasoning behind choosing the corresponding learner persona and any other relevant information.

Choose the appropriate learners for your course by following this link to [learner personas](https://authoring.datacamp.com/courses/design/personas.html)

* Coder Chen: As there is no substantial statistical content in the course, this person's strong coding background would fit the course perfectly
* Advanced Alex: As this person has already worked with the basic of data science (both in theory and in practice), this course is ideal for this person; as the content of this course is highly applied and can be used to industry

## Step 3: Course outline

A typical course is structured as follows:

- Chapter 1 has three lessons. This chapter is shorter than the rest since it serves as an introduction to the topic.
- Chapter 2 has 3-4 lessons.
- Chapter 3 has 3-4 lessons.
- Chapter 4 has 3-4 lessons.

A typical lesson is comprised of:

- A video exercise with slides and script, e.g. [sample video exercise](https://campus.datacamp.com/courses/introduction-to-the-tidyverse/data-wrangling-1?ex=4).
- 2-4 exercises that review what is covered in the video exercise.

*Remind yourself about [course terminology](https://authoring.datacamp.com/courses/design#terminology-and-structure), then describe the flow of the course.*

> Example from a course on interactive data visualization using leaflet

> Chapter 1 - Using in-built functions to select columns and rows
>  *Lesson 1.1 - Locate targeted rows
>    *A learning objective:  Locate and select columns of a DataFrame with specific 
>  characteristics 
>  *Lesson 1.2 - Locate targeted rows
>    *A learning objective:  Locate and select rows of a DataFrame based on index with specific characteristics 
>  *Lesson 1.3 - Select random rows or columns 
>    *A learning objective:  Select random rows or columns randomly (or with weights) using pandas in-built functions
    
>Chapter 2 - Join DataFrames using concatenate, join and merge
>  *Lesson 2.1 - Concatenate DataFrames
>    *A learning objective:  Stack DataFrames using the concatenate  function and understand how to tune the parameters to deal with the axis and the indices
>  *Lesson 2.2 - Merge DataFrames
>    *A learning objective: Merge DataFrames  in a database style using the merge  function and understand how to tune the parameters to deal with the axis and the indices
>  *Lesson 2.3 - Join DataFrames
>    *A learning objective:  Merge DataFrames with different indices in database style using the join function and understand how to tune the parameters to deal with the axis
    
>Chapter 3 - Speed efficiency 
>  *Lesson 3.1 -  Looping with iterrows
>    *A learning objective:  Perform actions for every row of the DataFrame using 
   the  iterrows function to improve the speed of iterating a DataFrame's rows 
   compared to crude looping
>  *Lesson 3.2 - Looping with apply
>    *A learning objective: Apply functions to a targeted columns set of a 
    DataFrame by using the apply function, which will speed up the operations
>  *Lesson 3.3 - Vectorization over Pandas series
>    *A learning objective: Executing operations and apply functions on entire columns, resulting to further speed improvement
>*Lesson 3.4 - Vectorization with NumPy arrays
>  *A learning objective: Integrate numpy properties of pandas to improve further speed improvement on applying functions to Pandas series (or whole DataFrames) using the numpy library

>Chapter 4 - Perform data manipulation for different groups using the groupby function
>  *Lesson 4.1 - Aggregation using groupby
>    * A learning objective: Group data according to specific attributes or     characteristics and compute a summary statistic (or statistics) for each group efficiently (e.g. counts/sum/mean)
>  *Lesson 4.2 - Data transformation using groupby
>   *A learning objective: Perform some group-specific computations and manipulations (e.g. standardization/NA imputation ) efficiently
>   *Lesson 4.3 - Data filtration using groupby
>   *A learning objective: Discard some groups efficiently , according to a group-wise computation that evaluates True or False (e.g. discard data that belongs to groups with only a few members)

  
  - [ ] Does each lesson have a clear learning objective?
  - [ ] Does each lesson include a brief list of functions or packages that the student will use?
  - [ ] Does the outline have at least 12 lessons and no more than 15?

## Step 4: Capstone exercises

Create a capstone exercise for **each chapter**  of your course in the Teach Editor. **(Note: This is different from what you did when you submitted your course outline application, which was just one exercise for the entire course)** Let your Curriculum Lead know when you have completed this step so that they can review your exercises and provide you with feedback.

A capstone exercise should showcase how far learners are likely to get at the end of each chapter.

Please ensure that your capstone exercises pass our [rubric](http://authoring.datacamp.com/courses/exercises/normal-exercises/review-rubric.html) and meet our [content guidelines](https://authoring.datacamp.com/courses/guidelines/content.html).

## Step 5: Build ONE complete lesson on the Teach Editor

This should include:
1. A video exercise with slides (this can be the same as or similar to slides/video that you already created for your audition).
2. Between 2 and 4 exercises that allow students to practice what you taught in the video exercise.  This **does not** include Solution Correctness Tests (SCTs), but **does include** the success message for each exercise.

Why create a lesson as part of your course spec?

It will:

- Allow you to become familiar with the Teach Editor along with our different exercise and slide types earlier.
- Give you a better understanding of course scope (e.g., what can be covered in a reasonable amount of time, and what must be saved for a future course - compared to creating just a course outline.)

In combination, this will result in faster course development time, a more frictionless course development experience, and prevent roadblocks that arise out of miscalibrated course scope.

Our experience working with over a hundred expert instructors over the past 4 years has taught us that the most challenging part of creating a DataCamp course is in understanding the scope of what can be covered in a lesson (and, by extension, a course). 

We believe that students learn best when their hands are on the keyboard, writing code, working with data, and solving problems. Consequently, our courses consist of short  3 to 4-minute videos separated by interactive coding exercises, with occasional multiple choice exercises interspersed. The videos are intended to teach students the concepts necessary to solve the exercises that follow. 

You can read through all of our content guidelines [here](https://authoring.datacamp.com/courses/guidelines/content.html).

Four-minute videos correspond to between **400 and 600 words total** in the script. 

**Teaching data science concepts in this amount of time is not easy:** 
- It forces you to drill down to the essence of the concept and eliminate everything extraneous. 
- It requires a different approach compared to giving 50-minute college lectures.
- Writing such a script as part of your sample lesson will help you in creating a course outline that covers the right amount of content.

All lessons MUST follow our [content guidelines](https://authoring.datacamp.com/courses/guidelines/content.html).

## Lesson Rubric and Process

### Process

**Timeline**

Please work with your Curriculum Lead to ensure that all of the following boxes are checked. Once that happens, the Content Development team will review the lesson within **3 working days**, and you must incorporate the feedback (if any!) within the next **3 working days.** 

**Feedback Delivery**

There will be no more than **2 rounds of feedback** by a Content Developer, and in each round of feedback, the Content Developer will be specific and unambiguous in explaining exactly what revisions are necessary before the course can be considered ready for handoff. If, after two rounds of feedback, the lesson is still not deemed acceptable by the Content Development team, DataCamp will not move forward with course development.

### Lesson Rubric

#### General

- [ ] Does the lesson consist of 1 video followed by 2-4 exercises?
- [ ] Are there at least 2 coding exercises?
- [ ] Is there no more than 1 multiple choice exercise?
- [ ] Is the script for the video between 400 and 600 words?
- [ ] Are the titles of the exercises and slides written in sentence case?
- [ ] Do all of the exercises run on DataCamp in less than 3 seconds?
- [ ] Does the build pass?

#### Video

- [ ] Are the slides dynamic? That is, is there movement on the slides, such as in the form of transitions between bullets and lines of code, or progression through a visual/schema?
- [ ] Are full sentences in slides avoided?
- [ ] Is there a clear learning objective and/or narrative that motivates why the concept is important?
- [ ] Is there code in the slides? Learning by Doing requires Teaching by Doing!
- [ ] Does the code incorporate a relevant dataset that is [not overused](https://authoring.datacamp.com/courses/design/brainstorming-datasets.html)?
- [ ] Is the code properly formatted and placed inside backticks? It is your responsibility to ensure that your slides are properly formatted.
- [ ] Is the (trans)script written in complete sentences, without any bullet points or markdown? The script should correspond to exactly what you will say in the final recording and will be used to generate the subtitles for your course.

#### Exercises

- [ ] Are the [Content Guidelines](https://authoring.datacamp.com/courses/guidelines/content.html) met?
- [ ] Context: 180-780 characters
- [ ] Instructions: 1-4 bulleted instructions
- [ ] Hints: 1-4 bulleted hints
- [ ] Sample/Solution code: Less than or equal to 15 lines of code
- [ ] Success Message: Is there an informative success message?
- [ ] Do the comments in the sample and solution code match?
- [ ] Are the comments abbreviated instructions?
- [ ] Are the comments free of backticks?
- [ ] Is each comment less than 60 characters of length?
- [ ] Does each comment start with a space?
- [ ] Are different sections of code properly spaced?
- [ ] Are the instructions bulleted?
- [ ] Are the hints bulleted?
- [ ] Is the sample code appropriately scaffolded? Python courses use 4 underscores.

#### FAQs

##### Which lesson should I create for my sample lesson?

This is your choice. We recommend the final lesson of your course, as it has the following advantages:

- The concepts will likely be more advanced, and confirming that you can adequately teach the material in less than 600 words will verify that the course scope is appropriate.
- Similarly, the code will tend to be more advanced and computationally intensive. Confirming that the code runs on DataCamp and that the exercises meet our content guidelines will provide another check to verify that the course scope is indeed appropriate. 
- It provides clarity on where students will be at the end of the course and a clear stopping point that you can then work towards during the rest of course development.

**Whichever lesson you create, it is important to keep in mind the spirit of the sample lesson:** 
- it is an important check on course scope, 
- an opportunity to acquaint yourself with the tools you will be using to build your course, 
- and a chance to receive early feedback on teaching style to ensure you and DataCamp are aligned on course vision.

## Step 6: Revisit course outline

Having created your sample lesson, you should now have a much better understanding of course scope. This is an ideal time to revisit your outline and update it if necessary.

## Step 7: Write course description and list course prerequisites

**Course Description**

Add a one-paragraph description of the course in the [course.yml](course.yml) file following `description:`.

> An example from a course analyzing survey data

```
description: You've taken a survey (or 1000) before, right? Have you ever wondered
  what goes into designing a survey and how survey responses are turned into actionable
  insights? Of course you have! In Analyzing Survey Data in R, you will work with
  surveys from A to Z, starting with common survey design structures, such as clustering
  and stratification, and will continue through to visualizing and analyzing survey
  results. You will model survey data from the National Health and Nutrition Examination
  Survey using R's survey and tidyverse packages. Following the course, you will be
  able to successfully interpret survey results and finally find the answers to life's
  burning questions!
```

**Prerequisites**

- [Intro to Python for Data Science](https://www.datacamp.com/courses/intro-to-python-for-data-science)
- [Intermediate Python for Data Science](https://www.datacamp.com/courses/intermediate-python-for-data-science)
- Other prerequisite courses
