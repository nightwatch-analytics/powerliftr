#' Calculate weight based on one-rep max and total reps
#'@description
#'Calculates the weight based on the one-rep max of the athlere and total repetitions programmed. Inverse of the Epley formula.
#'
#' @param max One-repetition maximum of the athlete.
#' @param reps Total number of repetitions programmed.
#'
#' @returns The amount of weight to be lifted for a specified amount of reps.
#' @export
#'
#' @examples
#' # Athlete's max is 180 lbs and the number of reps programmed is 10
#' # Recommended load is 135 lbs
#' epley_weight(max = 180, reps = 10)
epley_weight <- function(max, reps) {
  if (reps == 1) {
    max
  } else {
    5 * round(max / (1 + (reps / 30)) / 5)
  }
}
