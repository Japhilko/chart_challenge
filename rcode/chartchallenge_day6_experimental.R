#30DaysChartChallenge 
# Jan-Philipp Kolb
# Day6 - comparissons - experimental

library(reticulate)



# Problem - how to install matplotlib -------------------------------------



py_run_string("import numpy as np")

py_install("matplotlib")
py_install("Qt")
py_run_string("import matplotlib.pyplot as plt")

# Create dataset
py_run_string("height = [3, 12, 5, 18, 45]")
py_run_string("bars = ('A', 'B', 'C', 'D', 'E')")
py_run_string("x_pos = np.arange(len(bars))")

# Create bars
py_run_string("plt.bar(x_pos, height)")

# Create names on the x-axis
py_run_string("plt.xticks(x_pos, bars)")

# Show graphic
py_run_string("plt.show()")


repl_python()


# Day 6 of the #30DayChartChallenge - I experienced with the #rstats package reticulate 



# Problem - where is the flights dataset ----------------------------------

library(reticulate)

source_python("flights.py")
flights <- read_flights("flights.csv")

library(ggplot2)
ggplot(flights, aes(carrier, arr_delay)) + geom_point() + geom_jitter()




# https://rstudio.github.io/reticulate/articles/calling_python.html
# https://blog.rstudio.com/2018/03/26/reticulate-r-interface-to-python/

# https://www.python-graph-gallery.com/1-basic-barplot