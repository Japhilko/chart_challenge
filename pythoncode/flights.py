import pandas

def read_flights(file):
  flights = pandas.read_csv(file)
  flights = flights[flights['dest'] == "ORD"]
  flights = flights[['carrier', 'dep_delay', 'arr_delay']]
  flights = flights.dropna()
  return flights


# Day 6 of the #30DayChartChallenge - I experienced with the #rstats package reticulate. Finally I created the plot with #python, which is still experimental for me. Thanks to Christian Hill for the code on https://scipython.com/

# https://scipython.com/book2/chapter-3-simple-plotting/examples/a-simple-plot/
