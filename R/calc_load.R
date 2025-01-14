#' Load table for specified weight
#'
#' @param load Total amount of weight to be lifted.
#' @param bar_weight Total weight of the bar. Default is 45 lbs.
#'
#' @returns A dataframe of which plates are to be loaded and the quantity
#' @export
#'
#' @examples
#' # Athlete needs to load 315 lbs
#' # Requires three 45 lb plates on each side for a total of six plates
#' calc_load(315)
calc_load <- function(load, bar_weight = 45) {
  plate_weights = c(45, 25, 10, 5, 2.5)
  # Subtract the bar weight
  remaining_weight <- load - bar_weight

  # Divide the remaining weight by 2 for balanced load
  side_weight <- remaining_weight / 2

  # Initialize variables
  plates_on_each_side <- numeric(length(plate_weights))
  names(plates_on_each_side) <- plate_weights

  # Greedy algorithm to determine minimum number of plates required
  # Note that this only produces the count for one side
  for (i in seq_along(plate_weights)) {
    plate <- plate_weights[i]
    if (side_weight >= plate) {
      num_plates <- floor(side_weight / plate)
      side_weight <- side_weight - (num_plates * plate)  # Subtract weight
      plates_on_each_side[i] <- num_plates
    }
  }

  # Multiply by 2 to get total count
  t(data.frame(
    Count = plates_on_each_side * 2
  ))
}
