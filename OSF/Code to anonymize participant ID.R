library("tidyverse")
library("remotes")

#install.packages("anonymizer")
remotes::install_github("paulhendricks/anonymizer")

library("anonymizer")
library("tidyverse")

#Generate Random Anonymized ID
mydata$anonymizedID <- anonymize(c(mydata$tcid), .algo = "crc32", .seed = 20201124) #change seed for every paper (based on the date) so that participant gets a new code each time

#Re-Sort Data by Random Anonymized ID to Mix-Up Participants (so they are not in the same order for every paper)
mydata <- mydata %>%
  arrange(anonymizedID)
