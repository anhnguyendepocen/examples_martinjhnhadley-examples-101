library("tidyverse")
library("sf")
library("gapminder")

world_shapefiles <- read_sf("data/world-shape-files/")

gapminder_most_recent <- gapminder %>%
  mutate_if(is.factor, as.character) %>%
  filter(year == max(year)) %>%
  select(-continent, -year) %>%
  rename(name = country)