odd <- is_odd(1)
even <- is_odd(2)
float_int_odd <- is_even(1.0)
float_int_even <- is_even(2.0)
float_not_int <- is_even(3.141)
inf <- is_even(Inf)
nan <- is_even(NaN)
mixed_nums <- is_even(c(-Inf, 0, 0.5, 1, 2.0, Inf, NaN))

test_that("odd numbers return true", {
  expect_identical(odd, TRUE)
})

test_that("even integers return false", {
  expect_identical(even, FALSE)
})


test_that("floats are turned into integers if possible or return false", {
  expect_identical(float_int_odd, TRUE)
  expect_identical(float_int_even, FALSE)
  expect_identical(float_not_int, FALSE)

})

test_that("infinite and NaN numbers return NA", {
  expect_identical(inf, NA)
  expect_identical(nan, NA)

})

test_that("mixed numeric vectors return correct values by index", {
  expect_identical(mixed_nums, c(NA, FALSE, FALSE, TRUE, FALSE, NA, NA))
})

test_that("invalid inputs give an error", {
  expect_error(is_even("hi"))
  expect_error(is_even(c("hi", "hello")))
  expect_error(is_even(c(0, "hi")))
})
