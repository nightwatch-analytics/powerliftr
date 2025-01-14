#' Calculate reps based on one-rep max and total weight
#'
#' @param max One-repetition maximum of the athlete.
#' @param weight The total amount of weight the athlete wants to lift
#'
#' @returns The estimated number of reps for a specified weight
#' @export
#'
#' @examples
#' # Athlete's one-rep max is 180 lbs and desired load is 135 lbs
#' # Estimated number of reps is 10
#' epley_reps(180, 135)
epley_reps <- function(max, weight) {
  if (max == weight) {
    1
  } else {
    round((max / weight - 1) / (1 / 30))
  }
}
