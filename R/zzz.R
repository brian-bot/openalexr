## Startup functions and global constants
###############################################################################

kCertBundle <- "certificateBundle/cacert.pem"

.onLoad <- function(libname, pkgname){
  
  ## SET ESPN CACHE AND START OPTIONS
  .setOpenalexCache("opts", list())
  .setOpenalexCache("openalexEndpoint", "https://api.openalex.org/")
  .setOpenalexCache("httpheader", character())
  ## userAgent should include email contact per documentation
  # .setOpenalexCache("User-Agent", .userAgent())
  .setOpenalexCache("low.speed.time", 60)
  .setOpenalexCache("low.speed.limit", 1)
  .setOpenalexCache("connecttimeout", 300)
  .setOpenalexCache("followlocation", TRUE)
  .setOpenalexCache("verbose", FALSE)
  .setOpenalexCache("cainfo", file.path(libname, pkgname, kCertBundle))
}

