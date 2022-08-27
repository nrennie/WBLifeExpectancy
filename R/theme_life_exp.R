#' Life Expectancy custom ggplot2 theme
#'
#' Function to customise layout of ggplot2 plots for shiny app.
#' @importFrom ggplot2 '%+replace%'
#' @export

theme_life_exp <- function() {

  #start with light theme as base
  ggplot2::theme_light() %+replace%

    ggplot2::theme(
      #panel elements
      panel.background = ggplot2::element_rect(fill = "white",
                                               colour = "white"),
      panel.grid.minor = ggplot2::element_blank(),

      #plot elements
      plot.background = ggplot2::element_rect(fill = "white",
                                              colour = "white"),
      plot.margin = ggplot2::unit(c(0.3, 0.5, 0.3, 0.3), "cm"), #top, right, bottom, left

      #title elements
      plot.title = ggplot2::element_text(colour = "black",
                                         size = 12,
                                         face = "bold",
                                         hjust = 0,
                                         family = "serif"),
      plot.subtitle = ggplot2::element_text(colour = "black",
                                            size = 10,
                                            hjust = 0,
                                            family = "serif"),
      plot.caption = ggplot2::element_text(colour = "black",
                                           size = 10,
                                           hjust = 0,
                                           family = "serif"),

      #legend elements
      legend.position = "none",
      legend.key = ggplot2::element_rect(colour = "white",
                                         fill = "white"),
      legend.spacing.x = ggplot2::unit(0.5, "cm"),
      legend.title = ggplot2::element_text(colour = "black",
                                           size = 10,
                                           hjust = 0.5,
                                           family = "serif"),
      legend.text = ggplot2::element_text(colour = "black",
                                          size = 10,
                                          hjust = 0,
                                          family = "serif"),
      legend.background = ggplot2::element_rect(fill = "transparent"),

      #axis elements
      axis.title = ggplot2::element_text(colour = "black",
                                         size = 10,
                                         family = "serif"),
      axis.text = ggplot2::element_text(colour = "black",
                                        size = 10,
                                        hjust = 0.5,
                                        family = "serif"),
      axis.ticks = ggplot2::element_blank()
    )
}
