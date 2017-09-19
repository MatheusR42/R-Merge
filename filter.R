text1 <- read.table('./text1.txt', sep = '|', header = FALSE, na.strings = "N/A", fill = TRUE)
text2 <- read.table('./text2.txt', sep = '|', header = FALSE, na.strings = "N/A", fill = TRUE)

merge <- text1[text1$V1 %in% text2$V1, ]