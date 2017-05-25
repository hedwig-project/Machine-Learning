#Set working directory
directory = "D:/Victor/Poli/TCC/Dados/DataLogger"
setwd(directory)
# print(getwd())	#test if working directory has changed

#Date for creating folder
#print (as.character(Sys.Date()))
fileName = as.character(Sys.Date())
if (!file.exists(fileName)) {
	dir.create(fileName)	#create directory for storing data
}
directory = getwd()	#modify working directory to this new folder
setwd(file.path(directory,fileName))

#getwd()	#test if working directory is now the new folder

#Get Data from Blynk
#LDR
fileUrl = "http://blynk-cloud.com/1e300153262c41b99fb697cb39c17575/data/V2"
download.file(fileUrl, "vtakashi@hotmail.com_1_v2.csv.gz", mode="wb")
data = read.csv("vtakashi@hotmail.com_1_v2.csv.gz"))
write.csv(data, file="vtakashi@hotmail.com_1_v2.csv")

#Humidity
fileUrl = "http://blynk-cloud.com/1e300153262c41b99fb697cb39c17575/data/V3"
download.file(fileUrl, "vtakashi@hotmail.com_1_v3.csv.gz", mode="wb")
data = read.csv("vtakashi@hotmail.com_1_v3.csv.gz")
write.csv(data, file="vtakashi@hotmail.com_1_v3.csv")

#Temperature
fileUrl = "http://blynk-cloud.com/1e300153262c41b99fb697cb39c17575/data/V4"
download.file(fileUrl, "vtakashi@hotmail.com_1_v4.csv.gz", mode="wb")
data = read.csv("vtakashi@hotmail.com_1_v4.csv.gz")
write.csv(data, file="vtakashi@hotmail.com_1_v4.csv")

#Presence
fileUrl = "http://blynk-cloud.com/1e300153262c41b99fb697cb39c17575/data/V5"
download.file(fileUrl, "vtakashi@hotmail.com_1_v5.csv.gz", mode="wb")
data = read.csv("vtakashi@hotmail.com_1_v5.csv.gz")
write.csv(data, file="vtakashi@hotmail.com_1_v5.csv")

#Read data from csv into tables
#LDR
LDRData <- read.table("vtakashi@hotmail.com_1_v2.csv", sep = ",", header = FALSE)
#LDRData	#See if LDRData are ok
col_headings <- c('indice','luminosity','timestamp')
names(LDRData) <- col_headings
head(LDRData)	#See if LDRData headings are ok

#Humidity
HumidityData <- read.table("vtakashi@hotmail.com_1_v3.csv", sep = ",", header = FALSE)
#HumidityData	#See if Data are ok
col_headings <- c('indice','humidity','timestamp')
names(HumidityData) <- col_headings
head(HumidityData)	#See if Data headings are ok

#Temperature
TemperatureData <- read.table("vtakashi@hotmail.com_1_v4.csv", sep = ",", header = FALSE)
#TemperatureData	#See if Data are ok
col_headings <- c('indice','temperature','timestamp')
names(TemperatureData) <- col_headings
head(TemperatureData)	#See if Data headings are ok

#Presence
PresenceData <- read.table("vtakashi@hotmail.com_1_v5.csv", sep = ",", header = FALSE)
#PresenceData	#See if Data are ok
col_headings <- c('indice','presence','timestamp')
names(PresenceData) <- col_headings
head(PresenceData)	#See if Data headings are ok