## CREATE AND MANAGE A GLOBAL CACHE FOR THE CLIENT TO ACCESS
#####
## AUTHOR: BRIAN M. BOT
#####

.setOpenalexCache <- function(key, value){
  cache <- new("OpenalexCache")
  cache@env[[key]] <- value
  
  ## IF ONE OF THESE PARAMS THEN ADD TO opts
  validOpts <- c("low.speed.time", "low.speed.limit", "connecttimeout", "followlocation", "verbose")
  if(key %in% validOpts){
    opts <- .getOpenalexCache("opts")
    opts[[key]] <- value
    .setOpenalexCache("opts", opts)
  }
  
  ## IF ONE OF THESE PARAMS THEN ADD TO httpheader
  validHeaders <- c("Authorization", "User-Agent", "Accept")
  if(key %in% validHeaders){
    httpheader <- .getOpenalexCache("httpheader")
    httpheader[[key]] <- value
    .setOpenalexCache("httpheader", httpheader)
  }
  
  return(NULL)
}

.inOpenalexCache <- function(key){
  cache <- new("OpenalexCache")
  return(key %in% ls(cache@env))
}

.getOpenalexCache <- function(key){
  if( !.inOpenalexCache(key) ){
    return(NULL)
  } else{
    cache <- new("OpenalexCache")
    return(cache@env[[key]])
  }
}

