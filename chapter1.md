---
title: Test
description: Test
---

## Perform data manipulation for different groups using the `.groupby` function (Video Lesson)

```yaml
type: VideoExercise
key: 03d3d25bba
xp: 50
```

`@projector_key`
5ed7226ed2ea2bf05dd6a43695cdc726

---

## Sample Exercise 2

```yaml
type: NormalExercise
key: f88bd1ae1d
xp: 100
```

In this exercise, we want to apply a normalization transformation to the number of appearances of each name for each year separately. That 

For convenience, we put the year of birth characteristic as the index

`@instructions`
- Group the observations according to the indices (Year of Birth)
- Perform a normal standardization on the number of appearence of each name (Count), by subtracting the groups' mean and divide by the standard deviation 
- Present the standardized mean gor each year seprately

`@hint`
Remember to `.groupby(key)` and not by any column; we want to group according to index

`@pre_exercise_code`
```{python}
import pandas as pd
import numpy as np
data = pd.read_csv('Popular_Baby_Names.csv')

data.index = data['Year of Birth']
data.drop(columns=['Year of Birth'],inplace=True)
data.head()
```

`@sample_code`
```{python}
#define the z transformation
z_score = lambda x: ___
key = lambda x: x
#perform the grouping function
grouped = ___
# perform the normaization transformation
transformed = ___
# Group again by the year of birth and calculate the mean
transformed_groups = ___.mean()
```

`@solution`
```{python}
zscore = lambda x: (x - x.mean()) / x.std()
key = lambda x: x
grouped = data.groupby(key)['Count']
transformed = grouped.transform(zscore)
transformed_groups = transformed.groupby(key).mean()
```

`@sct`
```{python}
print("Well Done! The mean for each group should be really close to 0, that shouldn't be a surprise")
```

---

## Sample Exercise 1

```yaml
type: TabExercise
key: 7ad225523c
xp: 100
```

Using the `.groupby` functions instead of crude looping all the rows of our data speed up the process by an enormous magnitude. In this exercise, we will compare the performance of both methods and prove the efficiency (both in terms of speed and of code cleanness) of the `.groupby` family of functions.


We will use the "Popular Baby Names" dataset, which includes, among others, the most popular names in the US by year, gender and Ethnicity, and we find home many times the most popular name was given to a baby in each year

`@pre_exercise_code`
```{python}
import pandas as pd
data = pd.read_csv('Popular_Baby_Names.csv').drop(columns=['Rank'])
```

***

```yaml
type: NormalExercise
key: f6713353a3
xp: 50
```

`@instructions`
Using the `iterrows()` function, find the how many times the most popular name was appeared in each year (year span from 2011 to 2013)

`@hint`
The row item has length = 2; the first one is the index of the row and the second includes the values for each column

`@sample_code`
```{python}
max_11 = 0;
max_12 = 0;
max_13 = 0;
for row in data.iterrows():
    year = row[1]['Year of Birth']
    count = row[1]['Count']
    if year == ___ and max_11 < ___:
        max_11 = count
    if year == ___ and max_12 < ___:
        max_12 = row[1]['Count']
    if year == ___ and max_13 < ___:
        max_13 = count  
```

`@solution`
```{python}
max_11 = 0;
max_12 = 0;
max_13 = 0;
for row in data.iterrows():
    year = row[1]['Year of Birth']
    count = row[1]['Count']
    if year == 2011 and max_11 < row[1]['Count']:
        max_11 = count
    if year == 2012 and max_12 < row[1]['Count']:
        max_12 = count
    if year == 2013 and max_13 < row[1]['Count']:
        max_13 = count
```

`@sct`
```{python}
print("You made it, well done! But, let's explore another way to do the same task")
```

***

```yaml
type: NormalExercise
key: 25f6ae9a0e
xp: 50
```

`@instructions`
Using the `.groupby` function, find the how many times the most popular name was appeared in each year (year span from 2011 to 2013)

`@hint`
We want to find the maximum value from the Counts column

`@sample_code`
```{python}
grouped_object = ___
max_years = grouped_object___
```

`@solution`
```{python}
obj = data.groupby('Year of Birth')
max_years = obj['Count'].max()
```

`@sct`
```{python}
print('Congratulations, you did it again! But more eficiantly this time')
```

---

## Capstone exercise for Chapter 1

```yaml
type: MultipleChoiceExercise
key: 5c60bc305e
xp: 50
```

Which of the following statements holds, when we want to randomly select 485 rows from the `data` DataFrame? (Select the closest that apply)

`@possible_answers`
- `np.random.randint()` function is faster by ~ 400 μs
-  In built `.sample` function from pandas is faster by ~ 100 μs
- `np.random.randint()` function is faster by ~ 800 μs
-  In built `.sample` function from pandas is faster is faster by ~ 100 μs

`@hint`
Remember to set `%%timeit` before you trigger each action

`@pre_exercise_code`
```{python}
import pandas as pd
import numpy as np
import time

data = pd.read_csv('poker_hand.csv')
data.index = map(str, list(data.index))
```

`@sct`
```{python}

```

---

## Capstone Exercise for Chapter 2

```yaml
type: TabExercise
key: db3b3773ca
xp: 100
```

Concatenating, merging and joining DataFrames efficiently is a very important skill. In this exercise ,we will explore how we can merge data merge datasets by row or column and face situations where we merge DataFrames by column and there are indices in one DataFrame that do not belong to the other

For this exercise, we will use 4 Datasets that contain the average working hour per person for different years and different countries. Let's merge all those DataFrame in one single DataFrame

`@pre_exercise_code`
```{python}
import pandas as pd
NA_2000_2010 = pd.read_csv('north_america_2000_2010.csv')
SA_2000_2010 = pd.read_csv('south_america_2000_2010.csv')
AS_2000_2015 = pd.read_csv('asia_2000_2015.csv').drop(columns=['2014','2011'])
AM_2015 = pd.read_csv('americas_2015.csv')
```

***

```yaml
type: NormalExercise
key: 7d21bca855
xp: 35
```

`@instructions`
- Append the DataFrame containing the working hours of all the countries of South America to the North American equivalent, ignoring the indices

`@hint`
Did you remember to 'igone_index'?

`@sample_code`
```{python}
americas_2000_2010 = ___
```

`@solution`
```{python}
americas_2000_2010 = NA_2000_2015.append(SA_2000_2015,ignore_index=True) 
```

`@sct`
```{python}

```

***

```yaml
type: NormalExercise
key: 0afae3df54
xp: 35
```

`@instructions`
- To the DataFrame you created before, add the column that contains the working hours for all the American counties for 2015, which is contained in the df4 DataFrame

`@hint`
Type `df4.head()` or `df.columns()` so you can find the common column between the two DataFrames

`@sample_code`
```{python}
americas_2000_2010_15 = ___
```

`@solution`
```{python}
americas_2000_2010_15=pd.merge(americas_2000_2010,AM_2015,on='Country')
```

`@sct`
```{python}

```

***

```yaml
type: NormalExercise
key: 25f492076a
xp: 30
```

`@instructions`
- Create a new DataFrame that contains the working hours of all counties of America and Asia (contained in the AS_2000_2015) only for those years that there is a value for both regions
 - Report the mean working hours for all the available countries on 2009

`@hint`
You want to set `join = 'inner'`, as we want only for those years that there is a value for both regions

`@sample_code`
```{python}
full_wh = ___

mean_2009 = ___
```

`@solution`
```{python}
full_wh = pd.concat([americas_2000_2010_15,df3],keys='Country',join='inner')
mean_2009 = full_wh['2009'].mean()
```

`@sct`
```{python}

```

---

## Capstone exercise for Chapter 3

```yaml
type: MultipleChoiceExercise
key: 42f8e20a38
xp: 50
```

If we want to calculate the mean rank for each hand played (row), which would be the fastest method to do it?

`@possible_answers`
- Looping using the `.iterrows()` fucntion
- Looping using vectorization over NumPy arrays
- Looping over DataFrame rows using indices (Crude looping)
- Looping using vectorization over Pandas series
- Looping using the apply() function

`@hint`
Remember to set `axis = 1` when possible, as we want

`@pre_exercise_code`
```{python}
import pandas as pd
import numpy as np
data = pd.read_csv('poker_hand.csv')

# The columns that contain the rank for each hand is R1,R2,R3,R4,R5

# Calculate the mean of each hand using  the `.iterrows()` fucntion
mean_itrrows = ___

# Calculate the mean of each hand using vectorization over NumPy arrays
mean_numpy = ___

# Calculate the mean of each hand looping over DataFrame rows using indices (Crude looping)
mean_crude = ___
for row in range(0,data.shape[0]):
  temp = ___
  mean_crude.append(temp)
  
# Calculate the mean of each hand using vectorization over Pandas series
mean_pandas = ___

# Calculate the mean of each hand using the apply() function
mean_apply = ___
```

`@sct`
```{python}

```

---

## Capstone exercise for Chapter 4

```yaml
type: MultipleChoiceExercise
key: 3e7dda9e0e
xp: 50
```

What is the mean size table, in the days when the mean amount payed to the restaurant is more than 20 USD?

`@possible_answers`
- 3.356
- 2.668
- 4.067
- 2.185

`@hint`
Use  `.filter` fucntion from the `.groupby` family

`@pre_exercise_code`
```{python}
import pamdas as pd
df = pd.read_csv(
   "https://raw.githubusercontent.com/mwaskom/seaborn-data/master/tips.csv")
```

`@sct`
```{python}

```
