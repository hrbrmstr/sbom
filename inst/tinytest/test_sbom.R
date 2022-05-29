library(sbom)
library(testthat)

# Placeholder with simple test
x <- cran_pkg_sbom("ndjson")

expect_equal(length(x), 1)

expect_is(x, "json")

expect_true(validate_sbom(text=x))
