text1 <- read.table('./text1.txt', sep = '|', header = FALSE)
text2 <- read.table('./text2.txt', sep = '|', header = FALSE)

merge <- text1[text1$V1 %in% text2$V1, ]