
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![R-CMD-check](https://github.com/hrbrmstr/sbom/workflows/R-CMD-check/badge.svg)](https://github.com/hrbrmstr/sbom/actions?query=workflow%3AR-CMD-check)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/sbom.svg?branch=master)](https://travis-ci.org/hrbrmstr/sbom)
[![Coverage
Status](https://codecov.io/gh/hrbrmstr/sbom/branch/master/graph/badge.svg)](https://codecov.io/gh/hrbrmstr/sbom)
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.6.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# sbom

Generate Software Bill of Materials for R Things

## Description

A “Software Bill of Materials” (SBOM) is a nested inventory for
software, a list of ingredients that make up software components. Tools
are provided to make SBOMs for R things.

## Help Wanted/TODOs

### Issues

-   [ ] Handle Licenses (PARTIAL SUPPORT EXISTS)
-   [ ] Handle Authors (PARTIAL SUPPORT EXISTS)
-   [ ] Get some buy-in on purls, BOM-refs, etc
-   [ ] Handle non-CRAN packages
-   [ ] Handle Shiny apps
-   [ ] Handle R “projects”
-   [ ] Dependency trees
-   [ ] Handle system requirements & (generically) stuff in src

## What’s Inside The Tin

The following functions are implemented:

-   `cran_pkg_sbom`: Create a minimal SBOM for a CRAN R package
-   `validate_sbom`: Validate an SBOM using CycloneDX

## Installation

``` r
remotes::install_github("hrbrmstr/sbom")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(sbom)

# current version
packageVersion("sbom")
## [1] '0.1.0'
```

``` r
cat(x <- cran_pkg_sbom("ndjson"))
## {
##   "bomFormat": "CycloneDX",
##   "specVersion": "1.4",
##   "serialNumber": "urn:uuid:541a3bd1-1887-44da-84d0-033b9614917d",
##   "version": 1,
##   "metadata": {
##     "component": {
##       "bom-ref": "pkg:cran/ndjson@0.8.0",
##       "type": "library",
##       "name": "ndjson",
##       "version": "0.8.0",
##       "description": "Wicked-Fast Streaming 'JSON' ('ndjson') Reader",
##       "author": ["Bob Rudis", "Deepak Bandyopadhyay", "Lutz Kettner", "Niels Lohmann"],
##       "group": "",
##       "licenses": ["MIT"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "32f45d8ad99e244263701f157f800bd65faedb942852e3524898c6c1ffd7b522"
##         }
##       ],
##       "purl": "pkg:cran/ndjson@0.8.0"
##     }
##   },
##   "components": [
##     {
##       "bom-ref": "pkg:cran/Rcpp@1.0.8.3",
##       "type": "library",
##       "name": "Rcpp",
##       "version": "1.0.8.3",
##       "description": "Seamless R and C++ Integration",
##       "author": ["Dirk Eddelbuettel", "James Joseph Balamuta", "Romain Fran\\c{c}ois"],
##       "group": "",
##       "licenses": ["GPL-2.0-or-later"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "4e630aeffa99a4473c5527e11a63022e9ebbcce3d8e81e91599226d8e679bcd3"
##         }
##       ],
##       "purl": "pkg:cran/Rcpp@1.0.8.3"
##     },
##     {
##       "bom-ref": "pkg:cran/cli@3.3.0",
##       "type": "library",
##       "name": "cli",
##       "version": "3.3.0",
##       "description": "Helpers for Developing Command Line Interfaces",
##       "author": ["Gábor Csárdi"],
##       "group": "",
##       "licenses": ["MIT"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "ef535496f34b204723389b5b3f3787f073e647d8487979fac4a40e46a71ee03e"
##         }
##       ],
##       "purl": "pkg:cran/cli@3.3.0"
##     },
##     {
##       "bom-ref": "pkg:cran/crayon@1.5.1",
##       "type": "library",
##       "name": "crayon",
##       "version": "1.5.1",
##       "description": "Colored Terminal Output",
##       "author": ["Gábor Csárdi"],
##       "group": "",
##       "licenses": ["MIT"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "89020e016b4b00c8e69ca40293cabb2c165c5c857ffaebb464a582ca14a92dd4"
##         }
##       ],
##       "purl": "pkg:cran/crayon@1.5.1"
##     },
##     {
##       "bom-ref": "pkg:cran/data.table@1.14.2",
##       "type": "library",
##       "name": "data.table",
##       "version": "1.14.2",
##       "description": "Extension of `data.frame`",
##       "author": ["Arun Srinivasan", "Matt Dowle"],
##       "group": "",
##       "licenses": ["MPL-2.0"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "829e024afe09e709dd6e91cd7fb23f3c852a86e1d221a8b59ae94e802580e816"
##         }
##       ],
##       "purl": "pkg:cran/data.table@1.14.2"
##     },
##     {
##       "bom-ref": "pkg:cran/ellipsis@0.3.2",
##       "type": "library",
##       "name": "ellipsis",
##       "version": "0.3.2",
##       "description": "Tools for Working with ...",
##       "author": ["Hadley Wickham"],
##       "group": "",
##       "licenses": ["MIT"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "8e454cd38fac68bd1f539c55dff960965f9e1277d25033b9ebed4bb5b737f2b0"
##         }
##       ],
##       "purl": "pkg:cran/ellipsis@0.3.2"
##     },
##     {
##       "bom-ref": "pkg:cran/fansi@1.0.3",
##       "type": "library",
##       "name": "fansi",
##       "version": "1.0.3",
##       "description": "ANSI Control Sequence Aware String Functions",
##       "author": ["Brodie Gaslam"],
##       "group": "",
##       "licenses": ["GPL-2.0-or-later"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "5cc8504e8af51ae3087ae3db80294929211dac474b1e9af9060a233c08751797"
##         }
##       ],
##       "purl": "pkg:cran/fansi@1.0.3"
##     },
##     {
##       "bom-ref": "pkg:cran/glue@1.6.2",
##       "type": "library",
##       "name": "glue",
##       "version": "1.6.2",
##       "description": "Interpreted String Literals",
##       "author": ["Jennifer Bryan", "Jim Hester"],
##       "group": "",
##       "licenses": ["MIT"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "a52e5bccfa53b11b657dbae72909ec5e8558c9afc16729da1b3cb3986d859ca9"
##         }
##       ],
##       "purl": "pkg:cran/glue@1.6.2"
##     },
##     {
##       "bom-ref": "pkg:cran/lifecycle@1.0.1",
##       "type": "library",
##       "name": "lifecycle",
##       "version": "1.0.1",
##       "description": "Manage the Life Cycle of your Package Functions",
##       "author": ["Hadley Wickham", "Lionel Henry"],
##       "group": "",
##       "licenses": ["MIT"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "e43014decbd5cdacd4f4148168e9fd9eca570ef61944a1cd0ec037b08bdb63da"
##         }
##       ],
##       "purl": "pkg:cran/lifecycle@1.0.1"
##     },
##     {
##       "bom-ref": "pkg:cran/magrittr@2.0.3",
##       "type": "library",
##       "name": "magrittr",
##       "version": "2.0.3",
##       "description": "A Forward-Pipe Operator for R",
##       "author": ["Hadley Wickham", "Stefan Milton Bache"],
##       "group": "",
##       "licenses": ["MIT"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "7689d86dbcbc8d419ca1868a67a7d0a7cf5a38656060b904d9dff475865d5d48"
##         }
##       ],
##       "purl": "pkg:cran/magrittr@2.0.3"
##     },
##     {
##       "bom-ref": "pkg:cran/pillar@1.7.0",
##       "type": "library",
##       "name": "pillar",
##       "version": "1.7.0",
##       "description": "Coloured Formatting for Columns",
##       "author": ["Hadley Wickham", "Kirill Müller"],
##       "group": "",
##       "licenses": ["MIT"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "dd10c024eb6fb1d566c1fc0d91f568e4f4b96d4f1b02663cac73719f84b714a0"
##         }
##       ],
##       "purl": "pkg:cran/pillar@1.7.0"
##     },
##     {
##       "bom-ref": "pkg:cran/pkgconfig@2.0.3",
##       "type": "library",
##       "name": "pkgconfig",
##       "version": "2.0.3",
##       "description": "Private Configuration for 'R' Packages",
##       "author": ["Gábor Csárdi"],
##       "group": "",
##       "licenses": ["MIT"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "6584b022a7abe3bc751331b9d3929250206d79eea51b0f3d3fd2d864f8010a0a"
##         }
##       ],
##       "purl": "pkg:cran/pkgconfig@2.0.3"
##     },
##     {
##       "bom-ref": "pkg:cran/rlang@1.0.2",
##       "type": "library",
##       "name": "rlang",
##       "version": "1.0.2",
##       "description": "Functions for Base Types and Core R and 'Tidyverse' Features",
##       "author": ["Hadley Wickham", "Lionel Henry"],
##       "group": "",
##       "licenses": ["MIT"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "707309c5df72dbdbcb54621e655aea80c093459e48ed847856a98b03723cd397"
##         }
##       ],
##       "purl": "pkg:cran/rlang@1.0.2"
##     },
##     {
##       "bom-ref": "pkg:cran/tibble@3.1.7",
##       "type": "library",
##       "name": "tibble",
##       "version": "3.1.7",
##       "description": "Simple Data Frames",
##       "author": ["Hadley Wickham", "Kirill Müller"],
##       "group": "",
##       "licenses": ["MIT"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "953828cd034fc93f31999e965ac32540a190fbaf0cd1c6bda78396717b67daeb"
##         }
##       ],
##       "purl": "pkg:cran/tibble@3.1.7"
##     },
##     {
##       "bom-ref": "pkg:cran/utf8@1.2.2",
##       "type": "library",
##       "name": "utf8",
##       "version": "1.2.2",
##       "description": "Unicode Text Processing",
##       "author": ["Patrick O. Perry"],
##       "group": "",
##       "licenses": ["Apache-2.0"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "ebbc3f862ddd35bfe86f670e171f085286f37d54dfcdad1016cd5810373f29c5"
##         }
##       ],
##       "purl": "pkg:cran/utf8@1.2.2"
##     },
##     {
##       "bom-ref": "pkg:cran/vctrs@0.4.1",
##       "type": "library",
##       "name": "vctrs",
##       "version": "0.4.1",
##       "description": "Vector Helpers",
##       "author": ["Davis Vaughan", "Hadley Wickham", "Lionel Henry"],
##       "group": "",
##       "licenses": ["MIT"],
##       "hashes": [
##         {
##           "alg": "SHA-256",
##           "content": "407633c4a836f7a1a74618f3d2c00d6ebd80bfed6d2b645c1bb63137459a5665"
##         }
##       ],
##       "purl": "pkg:cran/vctrs@0.4.1"
##     }
##   ]
## }
```

``` r
validate_sbom(text=x)
## [1] TRUE
```

## sbom Metrics

| Lang | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
|:-----|---------:|-----:|----:|-----:|------------:|-----:|---------:|-----:|
| R    |        5 | 0.31 | 160 | 0.39 |          23 | 0.22 |      683 | 0.47 |
| YAML |        2 | 0.12 |  35 | 0.09 |          10 | 0.09 |        2 | 0.00 |
| Rmd  |        1 | 0.06 |  10 | 0.02 |          20 | 0.19 |       42 | 0.03 |
| SUM  |        8 | 0.50 | 205 | 0.50 |          53 | 0.50 |      727 | 0.50 |

clock Package Metrics for sbom

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
