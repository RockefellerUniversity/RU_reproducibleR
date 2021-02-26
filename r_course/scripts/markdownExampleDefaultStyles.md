MarkDown Syntax Examples
========================

This is my first line. \# comment shows line end This would be a new
line. This wouldn’t be a new line.

This is my first paragraph.

This is my second paragraph

Italics = *Italics* or *Italics*  
Bold = **Bold** or **Bold**

![alt text](../imgs/baseR.png)

![alt
text](https://github.com/RockefellerUniversity/RU_reproducibleR/tree/master/r_course/presentations/slides/imgs/baseR.png)

Top level section
=================

Middle level section
--------------------

### Bottom level section

-   First item
-   Second item
-   Second item A
-   Second item B

1.  First item
2.  Second item

-   Second item A
-   Second item B

<!-- -->

    hist(rnorm(100))

<a href="https://rockefelleruniversity.github.io/Intro_To_R_1Day/" class="uri">https://rockefelleruniversity.github.io/Intro_To_R_1Day/</a>
[Github site](https://rockefelleruniversity.github.io/Intro_To_R_1Day/)

Before the first page break \*\*\* Before the second page break

R code chunks examples
======================

\#\#rMarkdown

``` r
hist(rnorm(1000))
```

![](markdownExampleDefaultStyles_files/figure-markdown_github/unnamed-chunk-29-1.png)

\#\#rMarkdown. Controlling R code output - eval

``` r
hist(rnorm(1000))
```

\#\#rMarkdown. Controlling R code output - Displaying code.

![](markdownExampleDefaultStyles_files/figure-markdown_github/unnamed-chunk-31-1.png)

\#\#rMarkdown. Controlling R code output - message and warnings

``` r
library(ggplot2)
```

\#\#rMarkdown. Controlling figure output.

``` r
hist(rnorm(100))
```

![](markdownExampleDefaultStyles_files/figure-markdown_github/unnamed-chunk-33-1.png)

\#\#rMarkdown. Automatically tidying code.

``` r
hist(rnorm(100))
```

![](markdownExampleDefaultStyles_files/figure-markdown_github/unnamed-chunk-34-1.png)

\#\#rMarkdown. Placing code and output together

``` r
temp <- rnorm(10)
temp
##  [1] -0.07305556 -2.46784399 -0.44774089  2.49322141  1.26690865 -0.94555871
##  [7] -0.40382946  0.20743010  0.71732275  0.26143228
```

\#\#rMarkdown. Inserting tables.

``` r
library(knitr)
temp <- rnorm(10)
temp2 <- rnorm(10)
dfExample <- cbind(temp,temp2)
kable(dfExample)
```

|        temp|       temp2|
|-----------:|-----------:|
|   0.3041169|   1.7227975|
|  -0.8059677|   0.0953358|
|   0.4613615|   0.7266679|
|   1.0625661|  -1.0120738|
|   1.8031669|  -0.5191854|
|  -0.6322152|  -1.1356752|
|   0.3790973|  -0.3041762|
|   0.1261115|  -0.2679862|
|  -0.7383350|   0.2913013|
|  -0.7274126|  -0.6335258|

\#\#rMarkdown. Evaluating code within markdown text.

Here is some freeform *markdown* and the first result from an rnorm call
is 0.0018718, followed by some more free form text.

\#\#rMarkdown: cache

``` r
x <- sample(1000,10^4,replace=T)
length(x)
```

    ## [1] 10000
