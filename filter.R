text1 <- read.table('./text1.txt', sep = '|', header = FALSE, na.strings = "N/A", fill = TRUE)
text2 <- read.table('./text2.txt', sep = '|', header = FALSE, na.strings = "N/A", fill = TRUE)

merged <- merge(text1, text2, by = "V1")
