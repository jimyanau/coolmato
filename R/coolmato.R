

#' Load required packages. Install them if not installed already.
#'
#' @param .required_packages A character list of the packages you need to load.
#'
#' @return
#' @export
#'
#' @examples
#' Required_Packages=c("data.table", "lubridate","DT","tidyr", "dplyr")
#'
#' install_n_load(Required_Packages)
install_n_load <- function(.required_packages)
                    {
                          Remaining_Packages <- .required_packages[!(.required_packages %in% installed.packages()[,"Package"])]

                          if(length(Remaining_Packages))
                          {
                              install.packages(Remaining_Packages)
                          }
                          for(package_name in .required_packages)
                          {
                              library(package_name,character.only=TRUE,quietly=TRUE)
                          }
                    }



