test_that("epley_1rm() produces a multiple of 5", {
  expect_equal(epley_1rm(115,10) %% 5, 0)
})
