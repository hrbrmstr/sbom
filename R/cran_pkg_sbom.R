#' Create a minimal SBOM for a CRAN R package
#'
#' @param pkg package name
#' @return JSON SBOM string
#' @export
cran_pkg_sbom <- function(pkg) {

  suppressMessages(x <- new_pkg_deps(pkg))
  suppressMessages(x$resolve())
  suppressMessages(x$solve())

  suppressMessages(y <- x$get_resolution())

  targets <- which(!duplicated(y$package))
  root <- which(y$package[targets] == pkg)
  targets <- setdiff(targets, root)

  list(
    bomFormat = u("CycloneDX"),
    specVersion = u("1.4"),
    serialNumber = u(sprintf("urn:uuid:%s", uuid::UUIDgenerate())),
    version = u(1L),
    metadata = list(
      component = list(
        `bom-ref` = u(sprintf("pkg:cran/%s@%s", y$package[root], y$version[root])),
        type = u("library"),
        name = u(y$package[root]),
        version = u(y$version[root]),
        description = u(gsub("\n", " ", utils::packageDescription(y$package[root])$Title)),
        group = u(""),
        licenses = list(),
        hashes = if (is.na(y$sha256[root])) list() else
          list(list(
            alg = u("SHA-256"),
            content = u(y$sha256[root])
          )),
        purl = u(sprintf("pkg:cran/%s@%s", y$package[root], y$version[root]))
      )
    ),
    components = lapply(targets, \(idx) {
      list(
        `bom-ref` = u(sprintf("pkg:cran/%s@%s", y$package[idx], y$version[idx])),
        type = u("library"),
        name = u(y$package[idx]),
        version = u(y$version[idx]),
        description = u(gsub("\n", " ", utils::packageDescription(y$package[idx])$Title)),
        group = u(""),
        licenses = list(),
        hashes = if (is.na(y$sha256[idx])) list() else
          list(list(
            alg = u("SHA-256"),
            content = u(y$sha256[idx])
          )),
        purl = u(sprintf("pkg:cran/%s@%s", y$package[idx], y$version[idx]))
      )
    })
  ) |>
    jsonlite::toJSON(
      pretty = TRUE
    )

}