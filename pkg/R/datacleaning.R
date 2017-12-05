#' Install and load data cleaning packages. 
#'
#' 
#' @docType package
#' @name datacleaning
{}


# This is only to suppress a NOTE in R CMD CHECK
#' @import deductive
#' @import dcmodify
#' @import errorlocate
#' @import lumberjack
#' @import rspa
#' @import simputation
#' @import validate
#' @import validatetools
{}


# packages that will always be loaded
CORE_PKGS <- c("validate","simputation","lumberjack","dcmodify")


load_datacleaning <- function(){
  current_search_path <- search()
  pgks <- paste0("package:",CORE_PKGS)
  to_load <- CORE_PKGS[!CORE_PKGS %in% current_search_path]
  msgf("Loading %s", paste(to_load,collapse=", "))
  sapply(to_load, library,character.only=TRUE)
}

msgf <- function(fmt,...){
  message(sprintf(fmt,...))
}

