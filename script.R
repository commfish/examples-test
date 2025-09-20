install.packages("remotes")
remotes::install_github("commfish/adfggraph")
library(adfggraph)
remotes::install_github("justinpriest/adfgcolors")
library(adfgcolors)

library(ggplot2)
ggplot(iris) + aes(x = Petal.Length, y = Petal.Width) + geom_point() +
  labs(x = "Petal length", y ="Petal width") + 
  theme_adfg(box = "yes")->plot1
ggsave("base_plot.png", plot = plot1, dpi = 500, height = 4, width = 6, units = "in")

library(ggplot2)
ggplot(iris) + aes(x = Petal.Length, y = Petal.Width) + geom_point() +
  labs(x = "Petal length", y = "Petal width") + 
  theme_adfg(box = "yes", font_size = 14) + 
  facet_wrap(~Species, scales = "free") +
  guides(color = "none")->plot2
ggsave("facet_plot_nocolor.png", plot = plot2, dpi = 500, height = 4, width =7, units = "in")


library(ggplot2)
ggplot(iris) + aes(x = Species, y= Petal.Length, fill = Species) + geom_violin() +
  labs(x = "Species", y = "Frequency") + 
  theme_adfg(legend.position.set = c(0.9, 0.25), box = "yes") + # move legend to a good spot
  scale_fill_grey(start = 0, end = 1)->plot3
ggsave("fill_plot_grey.png", plot = plot3, dpi = 500, height = 4, width = 6, units = "in")

library(ggplot2)
ggplot(iris) + aes(x = Petal.Length, y = Petal.Width, color = Species) + geom_point() +
  labs(x = "Petal length", y = "Petal width") + 
  theme_adfg(legend.position.set = c(0.9, 0.25), #move legend to a good spot
             box ="yes") + # add a border
  scale_color_adfg(palette = "bristolbay", discrete = TRUE, useexact = TRUE)->plot4
ggsave("color_plot.png", plot = plot4, dpi = 500, height = 4, width = 6, units = "in")

library(ggplot2)
ggplot(iris) + aes(x = Petal.Length, y= Petal.Width, color = Species) + geom_point() +
  labs(x = "Petal length", y = "Petal width") + 
  theme_adfg(box = "yes", font_size = 14) +
  scale_color_adfg(palette = "bristolbay", discrete = TRUE, useexact = TRUE)+
  facet_wrap(~Species, scales = "free")+
  guides(color = "none") ->plot5
ggsave("facet_plot.png", plot = plot5, dpi = 500, height = 4, width = 7, units = "in")

library(ggplot2)
ggplot(iris) + aes(x = Species, y = Petal.Length, fill = Species) + geom_violin() +
  labs(x = "Species", y = "Frequency") + 
  theme_adfg(legend.position.set = c(0.9, 0.25), box = "yes")+ # move legend to a good spot
  scale_fill_adfg(palette = "bristolbay", discrete = TRUE, useexact = TRUE)->plot6
ggsave("fill_plot.png", plot = plot6, dpi = 500, height = 4, width = 6, units = "in")

















