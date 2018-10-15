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
## Final Slide

```yaml
type: "FinalSlide"
key: "c8c9ac8009"
```

`@script`


