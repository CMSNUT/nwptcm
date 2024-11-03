
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `{nwptcm}`

<!-- badges: start -->
<!-- badges: end -->

## Installation

You can install the development version of `{nwptcm}` like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```

## Run

You can launch the application by running:

``` r
nwptcm::run_app()
```

## About

You are reading the doc about version : 1.0.0

This README has been compiled on the

``` r
Sys.time()
#> [1] "2024-11-03 19:32:57 CST"
```

Here are the tests results and package coverage:

``` r
devtools::check(quiet = TRUE)
#> ══ Documenting ═════════════════════════════════════════════════════════════════
#> ℹ Installed roxygen2 version (7.3.2) doesn't match required (7.1.1)
#> ✖ `check()` will not re-document this package
#> ── R CMD check results ─────────────────────────────────────── nwptcm 1.0.0 ────
#> Duration: 29.7s
#> 
#> ❯ checking DESCRIPTION meta-information ... WARNING
#>   Non-standard license specification:
#>     What license is it under?
#>   Standardizable: FALSE
#> 
#> ❯ checking top-level files ... NOTE
#>   File
#>     LICENSE
#>   is not mentioned in the DESCRIPTION file.
#>   Non-standard file/directory found at top level:
#>     'about.Rmd'
#> 
#> 0 errors ✔ | 1 warning ✖ | 1 note ✖
#> Error: R CMD check found WARNINGs
```

``` r
covr::package_coverage()
#> nwptcm Coverage: 0.00%
#> R/app_config.R: 0.00%
#> R/app_ui.R: 0.00%
#> R/run_app.R: 0.00%
```
