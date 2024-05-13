## Calculate_Cluster_Contributions_V2.R
## Skyler Brand
## Created 28Feb2024 with contribution from Austin Keeler and ChatGPT

## Generates an excel file with the number of cells from each input sample that were assigned to each cluster in the UMAP

rm(list = ls())
library(data.table)

##Iterate the following input values for each file you want to analyze
F3 <- 3
F3.OUT <- "CellsPerClusters_File3.csv"
F4 <- 4
F4.OUT <- "CellsPerClusters_File4.csv"
F9 <- 9
F9.OUT <- "CellsPerClusters_File9.csv"
F10 <- 10
F10.OUT <- "CellsPerClusters_File10.csv"
F17 <- 17
F17.OUT <- "CellsPerClusters_File17.csv"
F18 <- 18
F18.OUT <- "CellsPerClusters_File18.csv"
F19 <- 19
F19.OUT <- "CellsPerClusters_File19.csv"
F20 <- 20
F20.OUT <- "CellsPerClusters_File20.csv"

## Input parameters
CLUSTERS.IN <- read.csv("clusters_P0.csv", header = FALSE)
FILES.IN <- read.csv("Concat_Transformed_P0.csv")

# Create a data frame with "Cluster" column
T.CLUSTERS <- data.frame(Cluster = t(CLUSTERS.IN))

# Merge dataframes (md) using cbind
md <- cbind(T.CLUSTERS,FILES.IN$File)
names(md)[names(md) == "FILES.IN$File"] <- "File"

## EXPAND THE FOLLOWING FOR EACH FILE OF INTEREST
##First file of interest
md.f3 <- subset(md, File == F3, select = c(Cluster,File))
md.f3 <- md.f3$Cluster + 1 ##shifts cluster numbers so they are correct
print(table(md.f3))
md.f3.out <- table(md.f3)
md.f3.out <- as.matrix(md.f3.out)
print(md.f3.out)
fwrite(md.f3.out, file = F3.OUT)

##Second file of interest
md.f4 <- subset(md, File == F4, select = c(Cluster,File))
md.f4 <- md.f4$Cluster + 1 ##shifts cluster numbers so they are correct
print(table(md.f4))
md.f4.out <- table(md.f4)
md.f4.out <- as.matrix(md.f4.out)
print(md.f4.out)
fwrite(md.f4.out, file = F4.OUT)

##Third file of interest
md.f9 <- subset(md, File == F9, select = c(Cluster,File))
md.f9 <- md.f9$Cluster + 1 ##shifts cluster numbers so they are correct
print(table(md.f9))
md.f9.out <- table(md.f9)
md.f9.out <- as.matrix(md.f9.out)
print(md.f9.out)
fwrite(md.f9.out, file = F9.OUT)

##Fourth file of interest
md.f10 <- subset(md, File == F10, select = c(Cluster,File))
md.f10 <- md.f10$Cluster + 1 ##shifts cluster numbers so they are correct
print(table(md.f10))
md.f10.out <- table(md.f10)
md.f10.out <- as.matrix(md.f10.out)
print(md.f10.out)
fwrite(md.f10.out, file = F10.OUT)

##Fifth file of interest
md.f17 <- subset(md, File == F17, select = c(Cluster,File))
md.f17 <- md.f17$Cluster + 1 ##shifts cluster numbers so they are correct
print(table(md.f17))
md.f17.out <- table(md.f17)
md.f17.out <- as.matrix(md.f17.out)
print(md.f17.out)
fwrite(md.f17.out, file = F17.OUT)

##Sixth file of interest
md.f18 <- subset(md, File == F18, select = c(Cluster,File))
md.f18 <- md.f18$Cluster + 1 ##shifts cluster numbers so they are correct
print(table(md.f18))
md.f18.out <- table(md.f18)
md.f18.out <- as.matrix(md.f18.out)
print(md.f18.out)
fwrite(md.f18.out, file = F18.OUT)

##Seventh file of interest
md.f19 <- subset(md, File == F19, select = c(Cluster,File))
md.f19 <- md.f19$Cluster + 1 ##shifts cluster numbers so they are correct
print(table(md.f19))
md.f19.out <- table(md.f19)
md.f19.out <- as.matrix(md.f19.out)
print(md.f19.out)
fwrite(md.f19.out, file = F19.OUT)

##Eighth file of interest
md.f20 <- subset(md, File == F20, select = c(Cluster,File))
md.f20 <- md.f20$Cluster + 1 ##shifts cluster numbers so they are correct
print(table(md.f20))
md.f20.out <- table(md.f20)
md.f20.out <- as.matrix(md.f20.out)
print(md.f20.out)
fwrite(md.f20.out, file = F20.OUT)

##Copy paste these lines of code for each file of interest.