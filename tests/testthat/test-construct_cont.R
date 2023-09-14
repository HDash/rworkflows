test_that("construct_cont works", {
  
  cont1 <- construct_cont() 
  testthat::expect_equal(cont1[[1]],  "bioconductor/bioconductor_docker:devel")
  testthat::expect_null(cont1[[2]])
  testthat::expect_null(cont1[[3]])
  
  cont2 <- construct_cont(cont = "devel") 
  testthat::expect_equal(cont2[[1]],  "bioconductor/bioconductor_docker:devel") 
  
  cont3 <- construct_cont(versions_explicit = TRUE) 
  testthat::expect_true(grepl("bioconductor/bioconductor_docker:RELEASE_*",
                              cont3[[1]]))
  testthat::expect_null(cont3[[2]])
  testthat::expect_null(cont3[[3]])
  
  cont4 <- construct_cont(default_tag = "release", 
                          run_check_cont = TRUE) 
  testthat::expect_equal(cont4[[1]],  "bioconductor/bioconductor_docker:latest")
  testthat::expect_null(cont4[[2]])
  testthat::expect_null(cont4[[3]])
})