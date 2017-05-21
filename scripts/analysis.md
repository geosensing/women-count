## Proportion of Women on the Streets

Load library

```r
library(dplyr)
```

Load data

```r
setwd(githubdir)
setwd("women-count/")
mturk <- read.csv("data/batch_2808915_batch_results.csv")
```

Average Estimate (Averaging the three ratings) per photo:

```r
avg_est <-
  mturk %>% 
  group_by(Input.file_id) %>%
  summarize(total_n = mean(as.numeric(Answer.total_people), na.rm = T), total_men = mean(as.numeric(Answer.total_men), na.rm = T))
```

Total men, and total people

```r
totals <- colSums(avg_men[, 2:3])
```

Proportion of men

```r
totals[2]/totals[1]
```

```
## total_men 
## 0.8146494
```

Average proportion across locations

```r
avg_prop <- avg_men[, 3]/avg_men[, 2]

mean(avg_prop[avg_prop < 30], na.rm=T)
```

```
## [1] 0.8666389
```
