# Cheery Econometric Datasets

There are excellent datasets like Gapminder (https://www.gapminder.org/) that provide econometric and socio-political comparisons between countries. However, they tend to concentrate on issues like mortality or entrenched differences between geo-political regions.

Sometimes one might want to obtain real-world data that's a little bit cheerier.

This folder contains example cheery datasets.

# World Development Indicators (World Bank)

The `wdi` library provides an interface to the World Bank's World Development Indicators. `cheery-wdi-indicators.R` contains a small selection of interesting but cheery indicators:

```r
cheery_indicators
## A tibble: 5 x 2
#  code              name                      
#  <chr>             <chr>                                      
#1 IT.NET.USER.ZS    Individuals using the Internet (% of population)
#2 IT.CEL.SETS.P2    Mobile cellular subscriptions (per 100 people)
#3 SP.POP.0014.TO.ZS Population ages 0-14 (% of total)    
#4 IS.RRS.TOTL.KM    Rail lines (total route-km)
#5 IP.TMK.TOTL       Trademark applications, total  
```

For a smattering of countries across the globe:

```r
sample_countries
## A tibble: 8 x 2
#  iso2c country         
#  <chr> <chr>           
#1 AT    Austria         
#2 CH    Switzerland     
#3 EC    Ecuador         
#4 EG    Egypt, Arab Rep.
#5 ES    Spain           
#6 GB    United Kingdom  
#7 JP    Japan           
#8 US    United States  
```