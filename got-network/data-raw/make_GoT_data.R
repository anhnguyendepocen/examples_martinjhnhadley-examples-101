library("tidyverse")
## Data source: https://github.com/ShirinG/blog_posts_prep/tree/master/GoT
## Additional info: Data sources from https://www.kaggle.com/mylesoneill/game-of-thrones and manipulated by hand by https://shiring.github.io/
## The code below has been deliberately double commented due to 
## cross-platform compatibility issues experienced in the past.
## ## download.file("https://github.com/ShirinG/blog_posts_prep/blob/master/GoT/union_characters.RData?raw=true",
## ##             destfile = "data-raw/union_characters.RData")
## ## download.file("https://github.com/ShirinG/blog_posts_prep/blob/master/GoT/union_edges.RData?raw=true",
## ##             destfile = "data-raw/union_edges.RData")
## ## load("data-raw/union_characters.RData")
## ## load("data-raw/union_edges.RData")
## ## union_characters %>%
## ##   write_csv("data-raw/union_characters.csv")
## ## union_edges %>%
## ##   write_csv("data-raw/union_edges.csv")