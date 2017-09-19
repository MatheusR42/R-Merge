Filter txt dataset with R
================

Reading the data
----------------

``` r
text1 <- read.table('./text1.txt', sep = '|', header = FALSE, na.strings = "N/A", fill = TRUE)
text2 <- read.table('./text2.txt', sep = '|', header = FALSE, na.strings = "N/A", fill = TRUE)

print(text1)
```

    ##       V1                       V2 V3          V4           V5 V6
    ## 1 373706 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955 NA
    ## 2 373707 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955 NA
    ## 3 373708 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955 NA
    ## 4 373709 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955 NA
    ## 5 373710 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955 NA
    ## 6 373711 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955 NA
    ## 7 373712 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955 NA

``` r
print(text2)
```

    ##       V1
    ## 1  13646
    ## 2 373707
    ## 3 373708
    ## 4 373709
    ## 5 373710
    ## 6 373711
    ## 7 500066

Filter
------

``` r
merged <- merge(text1, text2, by = "V1")
print(merged)
```

    ##       V1                       V2 V3          V4           V5 V6
    ## 1 373707 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955 NA
    ## 2 373708 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955 NA
    ## 3 373709 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955 NA
    ## 4 373710 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955 NA
    ## 5 373711 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955 NA
