Filter txt dataset with R
================

Reading the data
----------------

``` r
text1 <- read.table('./text1.txt', sep = '|', header = FALSE, na.strings = "N/A")
text2 <- read.table('./text2.txt', sep = '|', header = FALSE, na.strings = "N/A")

print(text1)
```

    ##       V1                       V2 V3          V4           V5
    ## 1 373706 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955
    ## 2 373707 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955
    ## 3 373708 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955
    ## 4 373709 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955
    ## 5 373710 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955
    ## 6 373711 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955
    ## 7 373712 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955

``` r
print(text2)
```

    ##       V1
    ## 1 373706
    ## 2 373707
    ## 3 373708
    ## 4 373709
    ## 5 373710
    ## 6 373711
    ## 7 500066

Filter
------

``` r
finalData <- text1[text1$V1 %in% text2$V1, ]
print(finalData)
```

    ##       V1                       V2 V3          V4           V5
    ## 1 373706 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955
    ## 2 373707 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955
    ## 3 373708 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955
    ## 4 373709 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955
    ## 5 373710 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955
    ## 6 373711 UNITED_STATES_OF_AMERICA NA AMEX_OPTIMA 800-635-5955
