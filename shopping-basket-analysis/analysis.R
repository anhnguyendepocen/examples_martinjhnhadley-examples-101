library("tidyverse")

items <- read_csv("data/items.csv")
customers <- read_csv("data/customers.csv")
purchases <- read_csv("data/purchases.csv")

purchases %>%
  select(cust.id, item.id, amount) %>%
  spread(item.id, amount, fill = 0)






