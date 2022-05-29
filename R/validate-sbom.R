#' Validate an SBOM using CycloneDX
#'
#' If the `cyclonedx` binary is available, use it to valiate an SBOM.
#'
#' @param path path to a CycloneDX SBOM JSON file or `NULL` if using `text`. Will be
#'        [path.expand()]ed.
#' @param text CycloneDX SBOM JSON string or `NULL` if using `path`
#' @export
validate_sbom <- function(path=NULL, text=NULL) {

  cyclonedx <- Sys.which("cyclonedx")
  if (cyclonedx == "") stop("'cyclonedx' binary not found. Make sure it is on the PATH.", call.=FALSE)

  if (is.null(path)) {
    if (is.null(text)) {
      stop("No SBOM provided in 'path' or 'text'", call.=FALSE)
    } else {
      text <- text[1]
      path <- tempfile(fileext = ".json")
      on.exit(unlink(path))
      writeLines(text, path)
    }
  } else{
    path <- path.expand(path[1])
    if (!file.exists(path)) {
      stop(sprintf("SBOM file '%s' not found.", path), call.=FALSE)
    }
  }

  system2(
    command = cyclonedx,
    args = c(
      "validate",
      "--input-format",
      "json",
      "--input-file",
      path
    ),
    stdout = NULL,
    stderr = NULL
  ) -> res

  return(is.null(attr(x, "status")))

}


