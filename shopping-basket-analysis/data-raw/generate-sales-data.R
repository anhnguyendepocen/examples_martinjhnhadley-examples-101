library("tidyverse")
library("cowsay")
library("lubridate")
library("babynames")

## ==== Customers

set.seed(3)
gender_neutral_names <- babynames %>%
  filter(year == max(year)) %>%
  filter(n > 100) %>%
  arrange(desc(n)) %>%
  count(name) %>%
  filter(nn > 1) %>%
  sample_n(50) %>%
  select(name) %>%
  .[[1]]

customers <- tibble(
  customer.id = paste0("cust", 1:50),
  customer.name = gender_neutral_names
)

customers %>%
  write_csv("data/customers.csv")

## ====== items

items <- tibble(
  item.id = paste0("i", 1:length(animals)),
  item.name = paste(names(animals), "sticker")
)

items %>%
  write_csv("data/items.csv")

## ====== orders

random_animal_stickers <- function(id){
  paste0("i", base::sample(1:length(animals), ceiling(runif(1) * {10})))
}

set.seed(3)
orders <- tibble(
  order.id = 1:100
) %>%
  mutate(item.id = map(order.id, random_animal_stickers)) %>%
  mutate(order.id = paste0("order", order.id)) %>%
  unnest()

orders %>%
  write_csv("data/orders.csv")

## ====== purchase orders

purchase_dates <- dmy("01-01-2010") + sort(sample(1:700, 10))

set.seed(3)
purchase_orders <- tibble(
  order.id = paste0("order", 1:100),
  customer.id = paste0("cust", base::sample(1:50, 100, replace = TRUE)),
  date = base::sample(purchase_dates, 100, replace = TRUE)
)

purchase_orders %>%
  write_csv("data/purchase_orders.csv")






