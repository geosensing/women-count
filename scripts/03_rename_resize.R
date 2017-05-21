#
# Rename and reisze files for Mturk
# 

# Set directory
setwd(githubdir)
setwd("women-count/")

# Load data
photos <- read.csv("data/photos_meta_exif.csv")

# file_id
photos$file_id <- sub(".*/", "", photos$filename)

# Create new sequential ID
photos$unique_id <- 1000 + photo$no

for (i in dir("photos/")) {

  new_name <- paste0(photos$unique_id[match(i, photos$file_id)], ".jpg")
  file.rename(paste0("photos/", i), paste0("photos/", new_name))
}

# Write out
write.csv(photos, file = "data/photos_meta_exif_new_id.csv", row.names = F)

# Resize images
library(imager)

for (i in dir("photos/")) {

  photo <- load.image(paste0("photos/", i))
  small_photo <- resize(photo, -50, -50)
  save.image(small_photo, paste0("small_photos/", i))
}

