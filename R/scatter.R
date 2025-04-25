#' Scatter plot
#'
#' @param data df that is being plotted
#' @param x x variable
#' @param y y variable
#'
#' @return the plot
#' @export
#'
#' @examples
#' \dontrun{
#' scatter(df, "income", "total_spent")
#' }
scatter <- function(data, x, y){
  df <- data
  ggplot2::ggplot(df, ggplot2::aes(x = x, y = y)) +
    ggplot2::geom_point() +
    ggplot2::geom_smooth(method = "lm") +
    ggplot2::labs(title = "Income vs Total Spent",
         x = "Income ($)",
         y = "Total Spent ($)") +
    ggplot2::theme_minimal()
}
