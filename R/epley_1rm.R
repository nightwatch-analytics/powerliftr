epley_1rm <- function(weight, reps) {
  if (reps == 1) {
    weight
  } else {
    weight * (1 + reps / 30)
  }
}
