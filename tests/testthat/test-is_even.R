one_even <- is_even(2)

one_odd <- is_even(3)

one_float_int_even <- is_even(2.0)
one_float_int_odd <- is_even(3.0)
one_float_not_int <- is_even(2.718)

inf <- is_even(Inf)
nan <- is_even(NaN)

mixed_nums <- is_even(c(-Inf, 0, 0.5, 1, 2.0, Inf, NaN))

test_that("even integers return true", {
  expect_identical(one_even, TRUE)
})

test_that("odd numbers return false", {
  expect_identical(one_odd, FALSE)
})

test_that("floats are coerced to integers if possible or return false", {
  expect_identical(one_float_int_even, TRUE)
  expect_identical(one_float_int_odd, FALSE)
  expect_identical(one_float_not_int, FALSE)

})

test_that("infinite and NaN numbers return NA", {
  expect_identical(inf, NA)
  expect_identical(nan, NA)

})

test_that("mixed numeric vectors return correct values by index", {
  expect_identical(mixed_nums, c(NA, TRUE, FALSE, FALSE, TRUE, NA, NA))
})

test_that("invalid inputs throw an error", {
  expect_error(is_even("foo"))
  expect_error(is_even(c("foo", "bar")))
  expect_error(is_even(c(0, "foo")))
})
