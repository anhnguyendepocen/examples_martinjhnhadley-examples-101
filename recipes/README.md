This dataset is prepared from a great paper published in Nature on the principles of food pairing in different cuusines, the DOI for the paper is http://doi.org/10.1038/srep00196.

Note that at present the recipes are stored in a .rdata object which contains a list column, meaning in order to load the object you will require the `tibble` library.

```r
library("tibble")
load("data/recipes.rdata")
```