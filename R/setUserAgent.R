## AUTHOR: BRIAN M. BOT
#####

setUserAgent <- function(emailContact){
  stopifnot( length(emailContact)==1L & is.character(emailContact))

  ## IF PASS CHECK, THEN SET IN CACHE FOR FUTURE CALLS
  .setOpenalexCache("User-Agent", paste0("openalexr/", utils::packageDescription("openalexr", fields="Version"), " (mailto:", emailContact, ")"))

  message("Email contact successfully stored for userAgent population for future OpenAlex API calls")
  return(invisible(NULL))
}

