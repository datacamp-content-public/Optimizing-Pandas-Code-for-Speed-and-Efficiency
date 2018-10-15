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
![](https://assets.datacamp.com/production/repositories/3745/datasets/7d72ae3a73b53e7b40491bb77c4e83840adc2f18/Screen Shot 2018-10-15 at 2.15.41 PM.png)


`@script`



---
## The need for grouping

```yaml
type: "TwoColumns"
key: "2616f04288"
center_content: true
disable_transition: false
```

`@part1`
**Question**: Finding how many babies carrying the most famous name where born in the USA for each year from 2012 to 2016, and for each ethnic group

**Answer**:
`births.groupby(['Year of Birth','Ethnicity']).apply(lambda x: x['Count'].idxmax())`


`@part2`
![](https://assets.datacamp.com/production/repositories/3745/datasets/9947b99868ae84bc92bb9bd695428779207c6c67/Screen Shot 2018-10-15 at 2.15.41 PM.png)


`@script`
A first example to understand the significance of this task, is by thinking the following simple example: We are interested in finding how many babies carrying the most famous name where born in the USA for each year from 2012 to 2016, and for each ethnic group.


---
## The need for grouping

```yaml
type: "FullSlide"
key: "325280c8a5"
```

`@part1`
**Answer**:
`births.groupby(['Year of Birth','Ethnicity']).apply(lambda x: x['Count'].idxmax())`

![](https://assets.datacamp.com/production/repositories/3745/datasets/bda8436062a5c071b92a02a569c8f9421e38421e/Screen Shot 2018-10-15 at 12.55.31 PM.png)


`@script`



---
## Final Slide

```yaml
type: "FinalSlide"
key: "c8c9ac8009"
```

`@script`


