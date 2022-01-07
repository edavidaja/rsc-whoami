library(plumber)
library(reticulate)

source_python("whoami.py")

whoami <- function() {
  newphone <- system2(command = "whoami", stdout = TRUE)
  rlog::log_info(newphone)
  newphone
}

whoami_python <- function() {
  whodis_python()
}

#* @apiTitle new phone
#* @apiDescription who dis

#* return the current user
#* @get /whodis
whoami

#* return the current user from reticulated function
#* @get /whodis_python
whoami_python

