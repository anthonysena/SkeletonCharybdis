Covid19CharacterizationCharybdis::preMergeResultsFiles("E:/CHARYBDIS/ResultsForDataOhdsiOrg - All")

#Example R code to upload a dataset to the S3 bucket using the private key
# one time R package install
#devtools::install_github("ohdsi/OhdsiSharing")
#library("OhdsiSharing")

# upload local file '/tmp/test.txt' to sftp server study folder using the '/tmp/ohdsi-shiny-data' private key
# The remoteFolder will be created if it doesn't already exist
privateKeyFileName <- "E:/CHARYBDIS/ohdsi-shiny-data"
userName <- "ohdsi-shiny-data"
fileName <- "E:/SkeletonCharybdis/Results/PreMerged.RData"
remoteFolder <- 'ScyllaCharacterization'
OhdsiSharing::sftpUploadFile(privateKeyFileName, userName, remoteFolder, fileName)

# list files in directory to get random string prefixed file name of the uploaded file for referencing the file name in shiny app S3 URL
privateKeyFileName <- "E:/CHARYBDIS/ohdsi-shiny-data"
userName <- "ohdsi-shiny-data"
remoteFolder <- 'SkeletonCharybdis'
sftpConnection <- OhdsiSharing::sftpConnect(privateKeyFileName, userName)
charybdisFiles <- OhdsiSharing::sftpLs(sftpConnection, paste0("/", remoteFolder))
OhdsiSharing::sftpLs(sftpConnection, "/")
for(i in 1:nrow(charybdisFiles)) {
  fileName <- charybdisFiles$fileName[i]
  print(fileName)
  if (fileName != "oh6952gq_PreMerged.RData") {
    #OhdsiSharing::sftpRm(sftpConnection, paste0("/", remoteFolder, "/", fileName))  
  }
}
sftpConnection
OhdsiSharing::sftpDisconnect(sftpConnection)
