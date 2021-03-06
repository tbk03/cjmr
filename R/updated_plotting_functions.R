# based on the bbc ggplot2 theme
# https://bbc.github.io/rcookbook/

# tweaks to add insights from Cédric Scherer (ggplot wizardry)
# https://z3tt.github.io/OutlierConf2021/#left-aligned-title


theme_cjmr_explanatory <- function(){

  axis_colour <- "grey20"
  grid_line_colour <- "grey80"
  text_colour <- "black"
  background_colour <- "grey98"


  ggplot2::theme_bw() %+replace%

    ggplot2::theme(

      # format text
      text = ggplot2::element_text(family = "Lato", size = 12),
      plot.title = ggplot2::element_text(hjust = 0,size = 16),
      plot.subtitle = ggplot2::element_text(hjust = 0, size = 12),
      plot.caption = ggplot2::element_text(size = 8,
                                           hjust = 0),

      # format legend
      legend.position = "top",
      legend.background = ggplot2::element_blank(),
      legend.title = ggplot2::element_text(size = 10),
      legend.text = ggplot2::element_text(size = 10),

      # format axis
      #axis.text = ggplot2::element_text(face = "bold"),
      axis.title.x = ggplot2::element_text(),
      axis.title.y = ggplot2::element_blank(),
      axis.line.y = ggplot2::element_blank(),
      axis.line.x = ggplot2::element_line(colour = axis_colour),
      # axis.line.x = ggplot2::element_line(colour = "black", size = 1),
      axis.ticks.x = ggplot2::element_line(colour = axis_colour, size = 1),
      axis.ticks.y = ggplot2::element_blank(),
      axis.text.x = ggplot2::element_text(margin=ggplot2::margin(t = 5, b = 10)),
      axis.ticks.length.x = unit(1.5, "mm"),

      # format plot gridlines
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(colour = grid_line_colour),

      # format plot background
      panel.background = ggplot2::element_blank(),

      # format overall background (i.e. background behind the entire figure
      # including the plot, titles etc.)
      plot.background = ggplot2::element_blank(),

      # facet labels background
      strip.background = ggplot2::element_rect(fill=background_colour),
      strip.text = ggplot2::element_text(colour = text_colour, face = "bold",
                                         size = 12),
      panel.border = ggplot2::element_blank(),

      # alignment of text around the the plot
      plot.title.position = "plot",
      plot.caption.position = "plot"

    )
}

clean_axis <- function(){
    # limit expansion and turn clipping off
    coord_cartesian(expand = FALSE, clip = "off")
}
