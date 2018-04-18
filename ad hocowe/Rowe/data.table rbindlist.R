library(data.table)

?rbindlist

# Funkcja rbindlist z ustawionym parametrem fill = TRUE pozwala na łączenie ramek danych z różną liczbą zmiennych.
# W celu otrzymania podpisanego zbioru można zastosować komendę:
#   as.data.frame(rbindlist(list(dat15, dat16, dat17), fill = TRUE))