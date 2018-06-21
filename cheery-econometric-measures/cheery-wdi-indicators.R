library("WDI")
library("tidyverse")

cheery_indicators <- tribble(~code, ~name,
                             "IT.NET.USER.ZS", "Individuals using the Internet (% of population)",
                             "IT.CEL.SETS.P2", "Mobile cellular subscriptions (per 100 people)",
                             "SP.POP.0014.TO.ZS", "Population ages 0-14 (% of total)",
                             "IS.RRS.TOTL.KM", "Rail lines (total route-km)",
                             "IP.TMK.TOTL", "Trademark applications, total"
                             )

sample_countries <- tribble(~code, ~name,
                            "AT", "Australia",
                            "CH", "Swizterland",
                            "EC", "Ecuador",
                            "EG", "Egypt",
                            "ES", "Spain",
                            "GB", "United Kingdom",
                            "JP", "Japan",
                            "US", "United States")

wdi_data <- WDI(country = sample_countries$code,
                indicator = cheery_indicators$code, 
                start = 2000,
                end = 2016) %>%
  as_tibble() %>%
  gather(series, value, IT.NET.USER.ZS:IP.TMK.TOTL)

wdi_data %>%
  filter(is.na(value))


wdi_data %>%
  select(iso2c, country) %>%
  distinct()
