testthat::test_that("multiplication works", {
  fname = system.file(
    file.path("nifti", "mniRL.nii.gz"),
    package = "oro.nifti")
  
  testthat::expect_silent({
    eve = readNIfTI(fname)
  })
  
  testthat::expect_silent(orthographic(eve))
  
  testthat::expect_silent(image(eve, z = 45))
  testthat::expect_silent(image(eve, z = 45, plot.type = "single"))
  testthat::expect_silent(image(eve, z = c(45, 50), plot.type = "single"))
  testthat::expect_silent(slice(eve, z = c(45, 50)))
})
