library("tidyverse")
## Data source: https://github.com/ShirinG/blog_posts_prep/tree/master/GoT
## Additional info: Data sources from https://www.kaggle.com/mylesoneill/game-of-thrones and manipulated by hand by https://shiring.github.io/

download.file("https://github.com/ShirinG/blog_posts_prep/blob/master/GoT/union_characters.RData?raw=true",
              destfile = "data-raw/union_characters.RData")
download.file("https://github.com/ShirinG/blog_posts_prep/blob/master/GoT/union_edges.RData?raw=true",
              destfile = "data-raw/union_edges.RData")

load("data-raw/union_characters.RData")
load("data-raw/union_edges.RData")


got_characters <- union_characters %>%
  mutate_if(is.factor, as.character)
got_edges <- union_edgesw