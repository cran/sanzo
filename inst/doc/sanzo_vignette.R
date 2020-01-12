## ----install, warning = FALSE, error = FALSE, eval = FALSE--------------------
#  
#  # Install development version of package, if needed.
#  devtools::install_github("jmaasch/sanzo")
#  

## ----load, warning = FALSE, error = FALSE-------------------------------------

# Load package.
library(sanzo)


## ----doc----------------------------------------------------------------------

# Examples:
?sanzo.info2()
?sanzo.trio()


## ----names--------------------------------------------------------------------

names(duos)
names(trios)
names(quads)


## ----info---------------------------------------------------------------------

knitr::kable(sanzo.info2())
knitr::kable(sanzo.info3())
knitr::kable(sanzo.info4())


## ----grid, eval = FALSE-------------------------------------------------------
#  
#  # Set up gridded layout, if desired:
#  graphics::layout(matrix(1:4, nrow = 2))
#  graphics::par(mar = c(2, 2, 2, 2))
#  
#  # Print demo plots for duos.
#  sanzo.demo2()
#  
#  # Print demo plots for trios.
#  sanzo.demo3()
#  
#  # Print demo plots for quads.
#  sanzo.demo4()
#  
#  # Print demo plots for all palettes.
#  sanzo.demo.all()
#  

## ----base---------------------------------------------------------------------

graphics::plot(iris$Sepal.Width, iris$Petal.Width, pch = 18:20,
               main = "Combination 121", ylab = "", xlab = "", 
               col = sanzo.trio("c121") [unclass(iris$Species)])


## ----base2--------------------------------------------------------------------

graphics::barplot(BOD$demand, col = sanzo.trio("c239"), 
                  main = "Combination 239", ylim = c(0, 20), border = NA)


