library(sbom)
library(tinytest)

# Placeholder with simple test
x <- cran_pkg_sbom("ndjson")

expect_equal(length(x), 1)

expect_inherits(x, "json")

expect_true(validate_sbom(text=x))
