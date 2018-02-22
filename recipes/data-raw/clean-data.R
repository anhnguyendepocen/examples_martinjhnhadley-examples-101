library("tidyverse")
recipes_data_dir <- tempdir()
s2_zip <- tempfile(fileext = ".zip")
s3_zip <- tempfile(fileext = ".zip")

download.file(url = "https://media.nature.com/original/nature-assets/srep/2011/111215/srep00196/extref/srep00196-s2.zip", destfile = s2_zip)
download.file(url = "https://media.nature.com/original/nature-assets/srep/2011/111215/srep00196/extref/srep00196-s3.zip", destfile = s3_zip)

unzip(s2_zip, exdir = recipes_data_dir)
unzip(s3_zip, exdir = recipes_data_dir)
recipe_lists <- readLines(file.path(recipes_data_dir, "srep00196-s3.csv")) %>%
  strsplit(",")
recipe_lists <- recipe_lists[5:length(recipe_lists)]
recipes <- tibble(
  cuisine = map_chr(recipe_lists, 1),
  ingredients = map(recipe_lists, tail, -1)
)

shared_chemicals <- read_csv(file.path(recipes_data_dir, "srep00196-s2.csv"),
                             skip = 4,col_names = c("ingredient.1", "ingredient.2", "shared.chemicals"))

save(recipes, file = "data/recipes.rdata")

shared_chemicals %>%
  write_csv("data/shared_chemicals.csv")
