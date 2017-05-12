# link to the workshop website:

library(RCurl)
loc <- getURL("https://raw.githubusercontent.com/chrissuthy/Ecotox_woRkshop/master/ecotox_survival.csv")
data <- read.csv(text = loc)
head(data)
