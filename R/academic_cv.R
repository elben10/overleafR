#' @importFrom rmarkdown pdf_document
#'
#' @export
academic_cv <- function(..., keep_tex = FALSE) {
  template <- template <- system.file("rmarkdown", "templates", "pdf", "resources", "template.tex",
                                      package="overleafR")
  base <- pdf_document(..., template = template, keep_tex = keep_tex)
  base$inherits <- "pdf_document"
  base
}
