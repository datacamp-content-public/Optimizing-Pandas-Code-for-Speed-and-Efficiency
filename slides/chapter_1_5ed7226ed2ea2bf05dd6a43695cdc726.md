---
title: Insert title here
key: 5ed7226ed2ea2bf05dd6a43695cdc726

---
## Perform data manipulation for different groups using the _groupby_ function

```yaml
type: "TitleSlide"
key: "bf0e02c016"
```

`@lower_third`

name: Leonidas Souliotis
title: PhD candiate


`@script`
In this part of the course, we will discover some in built fucntions of Pandas that will help us group the entries of a DataFrame according to the values of a specific feature, usually a categorical feature


---
## The need for grouping (1)

```yaml
type: "TwoRows"
key: "df8530959a"
center_content: true
```

`@part1`
**Question**: Finding how many babies carrying the most famous name where born in the USA for each year from 2012 to 2016, and for each ethnic group


`@part2`
| Year of Birth | Gender | Ethnicity                  | Child's First Name | Count | 
|---------------|--------|----------------------------|--------------------|-------| 
| 2011          | FEMALE | ASIAN AND PACIFIC ISLANDER | SOPHIA             | 119   | 
| 2011          | FEMALE | ASIAN AND PACIFIC ISLANDER | CHLOE              | 106   |


`@script`
A first example to understand the significance of this task, is by thinking the following simple example: We are interested in finding the number of babies with the most popular names born in the USA between 2012 and 2016, for each ethnic group.


---
## The need for grouping (2)

```yaml
type: "FullSlide"
key: "325280c8a5"
center_content: true
```

`@part1`
**Answer**:
```{python}
births.groupby(['Year of Birth','Ethnicity']).apply(lambda x: 
x['Count'].idxmax())
```
![](https://assets.datacamp.com/production/repositories/3745/datasets/bda8436062a5c071b92a02a569c8f9421e38421e/Screen Shot 2018-10-15 at 12.55.31 PM.png)


`@script`
We can answer this question by using the groupby function from the Pandas library, and get a handy one line solution!

As we discussed in previous parts of the course, the key to speed up our code and make it efficient is to avoid for loops. While making one or more for loops is the most sensible operation for the human mind for some tasks, there are already coded functions that do not use for loops, and still can operate those tasks.


---
## Aggregation using _groupby_

```yaml
type: "TwoColumns"
key: "9f8544f292"
```

`@part1`
```{python}
target_0 = []
target_1 = []
target_2 = []
for row in iris.iterrows():
    if row[1]['target'] == 0.0:
        target_0.append(row[0])
    elif row[1]['target'] == 1.0:
        target_1.append(row[0])
    else:
        target_2.append(row[0])
print(iris.iloc[target_0].apply(
      lambda x: x.mean()),
      iris.iloc[target_1].apply(
      lambda x: x.mean()),
      iris.iloc[target_2].apply(
      lambda x: x.mean()))
```


`@part2`
```{python}
iris.groupby('target').mean()
```
| target         | sepal length (cm) | sepal width (cm) | petal length (cm) | petal width (cm) | 
|----------------|-------------------|------------------|-------------------|------------------|
| 0.0            | 5.006             | 3.418            | 1.464             | 0.244            |
| 1.0            | 5.936             | 2.770            | 4.260             | 1.326            | 
| 2.0            | 6.588             | 2.974            | 5.552             | 2.026


`@script`
Let's take as an example, the iris dataset, which consists of 150 entries, each one representing a different flower and 5 features which gives a quantitative characteristic to each flower, plus the classification of each entry in each of the three available categories. 

If we want to find the mean for all the features in each category, we can use the tricks we discussed in the previous chapter; we can iterate through our DataFrame using the iterrows function, find the indices that correspond to each class, and then take the mean for each feature.

While this seem efficient, Pandas can group the entries of a DataFrame according to different values of a specific fearure. This can be done using the groupby function, in just one line of code!


---
## Filtration using groupby

```yaml
type: "TwoColumns"
key: "aff57d5d25"
center_content: false
```

`@part1`
| "total_bill" | "tip" |  "smoker" | "day" | "time"   | 
|--------------|-------|----------|----------|-------|----------
| 16.99        | 1.01  |  "No"     | "Sun" | "Dinner" |
| 10.34        | 1.66  |  "No"     | "Sun" | "Dinner" | 
| 21.01        | 3.5   |  "No"     | "Sun" | "Dinner" |
| 23.68        | 3.31  | "No"     | "Sun" | "Dinner" | 
| 24.59        | 3.61  | "No"     | "Sun" | "Dinner" |
| 25.29        | 4.71  |  "No"     | "Sun" | "Dinner" |


`@part2`



`@script`
Many times, after grouping the entries of a Dataframe according to a specific feature, we are interested in including only a subset of those groups, based on some conditions. This could be:

- Number of missing values
- The mean of a specific feature is too low
- Etc...


---
## Filtration without groupby

```yaml
type: "TwoRows"
key: "c495b0c18b"
center_content: true
```

`@part1`
| "total_bill" | "tip" | "sex"    | "smoker" | "day" | "time"   | "size" | 
|--------------|-------|----------|----------|-------|----------|--------| 
| 16.99        | 1.01  | "Female" | "No"     | "Sun" | "Dinner" | 2      | 
| 10.34        | 1.66  | "Male"   | "No"     | "Sun" | "Dinner" | 3      | 
| 21.01        | 3.5   | "Male"   | "No"     | "Sun" | "Dinner" | 3      | 
| 23.68        | 3.31  | "Male"   | "No"     | "Sun" | "Dinner" | 2      |


`@part2`
```{python}
# Using list comprehension
t=[restaurant.loc[df['day'] == i]['tip'] for i in restaurant['day'].unique() 
    if restaurant.loc[df['day'] == i]['total_bill'].mean()>20]
fin = t[0]
for j in t[1:]: 
    fin=fin.append(j,ignore_index=True)
print(fit.mean())
### 3.1152760736196328 ###
```


`@script`
Many times, after grouping the entries of a Dataframe according to a specific feature, we are interested in including only a subset of those groups, based on some conditions. This could be:

- Number of missing values
- The mean of a specific feature is too low
- Etc...


---
## Insert title here...

```yaml
type: "TwoRows"
key: "eb8c37b962"
center_content: false
```

`@part1`
```{python}
restaurant.groupby('day').filter(
    lambda x : x['total_bill'].mean() > 20)['tip'].mean()
```


`@part2`
|                                    |                | 
|------------------------------------|----------------| 
| Filtration without using groupby:  | 0.0127 seconds | 
| Filtration using groupby:          | 0.005 seconds  |


`@script`
Using the filter function on an object that has been grouped, we can use the filter function to select only the entries we want, based on some criterion applied on each group

If we compare the time taken for each method, we can clearly see that using the filter function reduces the operation time by half! That does not seem a big improvement for this small dataset, but it will make a huge difference in a bigger dataset


---
## Transformation using groupby

```yaml
type: "TwoColumns"
key: "9c0086148e"
```

`@part1`
```{python}
iris.index = iris['target']
iris_drop = iris.drop(columns=
['target'])
zscore = lambda x: (x - x.mean()) / 
x.std()
key = lambda x: x
trans =iris_drop.groupby(key).
transform(zscore)
trans_group = trans.groupby(key)
print(trans_group.mean())
print(trans_group.std())
```


`@part2`
| target     | sepal length (cm)   | sepal width (cm)     | petal length (cm)   | petal width (cm) | 
|------------|---------------------|----------------------|---------------------|------------------| 
| 0.0        | 1.845399e-15        | -1.560974e-15        | 1.276756e-16        | 9.037215e-16     | 
| 1.0        | 1.143530e-16        | -1.486589e-15        |  4.196643e-16       | 8.204548e-16     | 
| 2.0        | 2.748912e-15        | 7.280287e-16         | 6.528111e-16        | 6.417089e-16     |


`@script`
As a last operation, we will transformed a grpuped obejct according to a transformaton rule that applies to each feature of the grouped object. We can use this operation to normalize the entries of a DataFrame group-wise, by defining the normalizing function for each feature by substracting the mean and dividing by the standard deviation.

As you can see, for each of the groups, we have a (almost) zero mean and a standard deviation equal to one, for each feature of the iris dataset


---
## Final Slide

```yaml
type: "FinalSlide"
key: "c8c9ac8009"
```

`@script`


