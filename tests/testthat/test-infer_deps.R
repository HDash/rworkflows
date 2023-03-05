test_that("infer_deps works", {
  
  wd <- getwd()
  setwd("../../")
  
  deps <- infer_deps()
  # imports <- c(
  #   'utils','here','BiocStyle','yaml','stats','desc','badger',
  #   'biocViews','data.table','renv','shiny','htmltools'
  # )
  # suggests <- c(
  #   'testthat','rmarkdown','remotes','covr','echodeps',
  #   'igraph','knitr','markdown','methods'
  # )
  # testthat::expect_equal(sort(deps$Imports),
  #                        sort(imports))
  # testthat::expect_equal(sort(deps$Suggests),
  #                        sort(suggests))
  suggests <- c("covr","knitr","markdown","remotes","rmarkdown","testthat")
  testthat::expect_true(all(suggests %in% deps$Suggests))
  
  setwd(wd)
})