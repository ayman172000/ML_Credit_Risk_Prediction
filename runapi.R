setwd(dir = here::here())
r <- plumb(file = 'plumberEbank.R')
r$run(port = 8000)
