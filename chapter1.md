---
title: Test
description: Test
---

## An exercise title written in sentence case

```yaml
type: NormalExercise
key: c909bf2ad1
lang: python
xp: 100
skills: 2
```

This is the assignment text. It should help provide students with the background information needed.
The instructions that follow should be in bullet point form with clear guidance for what is expected.

`@instructions`
- Instruction 1
- Instruction 2
- Instruction 3

`@hint`
- Here is the hint for this setup problem. 
- It should get students 50% of the way to the correct answer.
- So don't provide the answer, but don't just reiterate the instructions.
- Typically one hint per instruction is a sensible amount.

`@pre_exercise_code`
```{python}
# Load datasets and packages here.
```

`@sample_code`
```{python}
# Your
# sample
# code
# should
# be
# ideally
# 10 lines or less,
# with a max
# of 16 lines.
```

`@solution`
```{python}
# Answer goes here
# Make sure to match the comments with your sample code
# to help students see the differences from solution
# to given.
```

`@sct`
```{python}
# Update this to something more informative.
success_msg("Some praise! Then reinforce a learning objective from the exercise.")
```

---

## Perform data manipulation for different groups using the _groupby_ function

```yaml
type: VideoExercise
key: 03d3d25bba
xp: 50
```

`@projector_key`
5ed7226ed2ea2bf05dd6a43695cdc726

---

## Capstone exercise for Chapter 1

```yaml
type: MultipleChoiceExercise
key: 5c60bc305e
xp: 50
```

Which of the following statements holds, when we want to randomly select 485 rows from the `data` dataframe?

`@possible_answers`
- `np.random.randint()` function is faster in a magnitude of 1 decimal point 
- In built `.sample` function from pandas is faster in a magnitude of 1 decimal point 
- `np.random.randint()` function is faster in a magnitude of 3 decimal point 
- In built `.sample` function from pandas is faster in a magnitude of 2 decimal point

`@hint`
Remember, the timing starts just before the action is triggered as start_time = time.time()

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

---

## Insert exercise title here

```yaml
type: TabExercise
key: db3b3773ca
xp: 100
```



`@pre_exercise_code`
```{python}
import pandas as pd
SA_2000_2010 = pd.read_csv('south_america_2000_2010.csv')#.drop(columns = ['2003'])
NA_2000_2010 = pd.read_csv('north_america_2000_2010.csv')
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
americas_2000_2010 = 
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
americas_2000_2010_15 = 
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
You may want to set `join = 'inner'`, as we want only for those years that there is a value for both regions

`@sample_code`
```{python}
full_wh = 

mean_2009 = 
```

`@solution`
```{python}
full_wh = pd.concat([americas_2000_2010_15,df3],keys='Country',join='inner')
mean_2009 = full_wh['2009'].mean()
```

`@sct`
```{python}

```
