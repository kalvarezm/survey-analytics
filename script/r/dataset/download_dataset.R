DATA_DOWNLOADED_PATH <- here("data/downloaded")
DATA_RAW_PATH <- here("data/raw")
DATA_PROCESSED_PATH <- here("data/processed")

create_folders <- function() {
  if (!file.exists(DATA_DOWNLOADED_PATH)) {
    dir.create(DATA_DOWNLOADED_PATH, recursive = TRUE)
  }
  if (!file.exists(DATA_RAW_PATH)) {
    dir.create(DATA_RAW_PATH, recursive = TRUE)
  }
  if (!file.exists(DATA_PROCESSED_PATH)) {
    dir.create(DATA_PROCESSED_PATH, recursive = TRUE)
  }  
}

create_folders()

# TODO generalize
download_file <- function(url) {

  # Create folders
  folder_path <- paste(DATA_DOWNLOADED_PATH, "ENAHO", sep = "/")
  if (!file.exists(folder_path)) {
    dir.create(folder_path, recursive = TRUE)
  }

  # Download dataset
  file_name <- basename(url)
  file_path <- paste(folder_path, file_name, sep = "/")
  if (!file.exists(file_path)) {
    download.file(url, file_path)
  }

  # Extract files
  folder_extracted_path <- paste(DATA_RAW_PATH, "ENAHO", sep = "/")
  if (!file.exists(folder_extracted_path)) {
    dir.create(folder_extracted_path, recursive = TRUE)
  }
  # Taken from: https://stackoverflow.com/questions/15073753/regex-return-file-name-remove-path-and-file-extension
  file_extracted_path <- paste(folder_extracted_path,
    sub("([^.]+)\\.[[:alnum:]]+$", "\\1", file_name),
    sep = "/"
  )
  if (!file.exists(file_extracted_path)) {
    unzip(file_path, exdir = folder_extracted_path)
  }
  
}
