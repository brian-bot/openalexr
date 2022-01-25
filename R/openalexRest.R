## REST API CALLS
#####
## FOCUS ON GET CALLS ONLY FOR NOW
#####

openalexRestGET <- function(uri, endpoint = .getOpenalexCache("openalexEndpoint"), .opts=.getOpenalexCache("opts"), httpheader=.getOpenalexCache("httpheader"), ...){
  uri <- sub(endpoint, "", uri, fixed=T)
  if(substr(uri, 1, 1) == "/"){
    uri <- substr(uri, 2, nchar(uri))
  }
  
  url <- paste(endpoint, uri, sep="")
  .getOpenalexJSON(url, .opts=.opts, httpheader=httpheader, ...)
}

