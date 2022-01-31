## FUNCTION THAT WILL CHECK ALL CALLS FOR FAILURES AND CONVERT JSON RESPONSES
#####

.getOpenalexJSON <- function(url, .opts, httpheader, ...){
  
  if( is.null(.getOpenalexCache("User-Agent")) ){
    stop("Please set the User-Agent to your email address in order to be a part of the polite pool of the OpenAlex API: use the setUserAgent() function")
  }
  
  tryGetURL <- getURL(url, .opts=.opts, .encoding='UTF-8',
                      httpheader=httpheader, ...)
  tryGetURL <- fromJSON(tryGetURL)
  
  return(tryGetURL)
}
