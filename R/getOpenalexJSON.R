## FUNCTION THAT WILL CHECK ALL CALLS FOR FAILURES AND CONVERT JSON RESPONSES
#####

.getOpenalexJSON <- function(url, .opts, httpheader, ...){
  
  tryGetURL <- getURL(url, .opts=.opts, .encoding='UTF-8',
                      httpheader=httpheader, ...)
  tryGetURL <- fromJSON(tryGetURL)
  
  return(tryGetURL)
}
