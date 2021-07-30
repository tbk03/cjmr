test <-  function(){
  print("cjmr test function")
}

test2 <-  function(){
  print("cjmr test function 2")
}

explanatory_theme <- function(){


  grid_line_colour <- "grey"
  text_colour <- "black"
  background_colour <- "grey98"

  list(
    ggplot2::theme_light(),

    ggplot2::theme(

      # format text
      text = ggplot2::element_text(size = 14),
      plot.title = ggplot2::element_text(hjust = 0.5,
                                         size = 18),
      plot.subtitle = ggplot2::element_text(hjust = -0.05,
                                            size = 14),
      plot.caption = ggplot2::element_text(size = 12, hjust = 0),

      # format legend
      legend.position = "top",
      legend.background = ggplot2::element_blank(),
      legend.title = ggplot2::element_blank(),

      # format axis
      axis.title.y = ggplot2::element_blank(),
      axis.line.y = ggplot2::element_blank(),
      axis.line.x = ggplot2::element_line(colour = "black", size = 1),
      axis.ticks.x = ggplot2::element_line(colour = "black", size = 1),
      axis.text.x = ggplot2::element_text(margin=ggplot2::margin(t = 7.5, b = 10)),

      # format plot gridlines
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(colour = grid_line_colour),

      # format plot background
      panel.background = ggplot2::element_blank(),

      # format overall background (i.e. background behind the entire figure
      # including the plot, titles etc.)
      plot.background = element_rect(fill = background_colour),

      # facet labels background
      strip.background = ggplot2::element_rect(fill=background_colour),
      strip.text = ggplot2::element_text(colour = text_colour, face = "bold",
                                         size = 14),
      panel.border = ggplot2::element_blank()
    )
  )
}
