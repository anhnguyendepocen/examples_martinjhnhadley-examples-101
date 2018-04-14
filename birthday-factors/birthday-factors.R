library("tidyverse")

birthdays <- read_csv("data/birthdays.csv")

## ---- ggplot2

birthdays %>%
  ggplot(aes(x = birth.month, 
             y = age)) +
  geom_line() + 
  coord_flip()

## ---- highcharter

library("highcharter")

age_ranges <- birthdays %>%
  group_by(birth.month) %>%
  summarise(max.age = max(age),
            min.age = min(age))

age_ranges %>%
  hchart(
    type = "columnrange",
    hcaes(
      x = birth.month,
      low = min.age,
      high = max.age
    ),
    inverted = TRUE
  ) %>%
  hc_chart(inverted = TRUE) %>%
  hc_plotOptions(series = list(animation = FALSE))


