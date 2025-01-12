#' Calculate one-repition maximum using the Epley formula
#'
#' @param weight The total amount of weight lifted.
#' @param reps The number of repetitions completed.
#'
#' @returns The estimated one-rep max.
#' @export
#'
#' @examples
#' # 135 lbs lifted 10 times results in an estimated one-rep max of 180 lbs
#' epley_1rm(weight = 135, reps = 10)
epley_1rm <- function(weight, reps) {
  if (reps == 1) {
    weight
  } else {
    weight * (1 + reps / 30)
  }
}
