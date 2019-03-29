library("tidyverse")
library("lubridate")
library("rfigshare")


fs_deposit_id <- 3761562
deposit_details <- fs_details(fs_deposit_id)

deposit_details <- unlist(deposit_details$files)
deposit_details <-
  data.frame(split(deposit_details, names(deposit_details)), stringsAsFactors = F)

gig_economy_jobs <- deposit_details %>%
  filter(str_detect(name, "bcountrydata_")) %>%
  pull(download_url) %>%
  read_csv() %>%
  mutate(timestamp = as_date(timestamp)) %>%
  rename(date = timestamp)

gig_economy_jobs %>%
  write_csv("data/gig_economy_jobs.csv")
