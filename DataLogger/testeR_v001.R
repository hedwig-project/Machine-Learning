#Colocar cabeçalhos em "dados.csv", como luminosity
df = read.csv("data.csv",stringsAsFactors = FALSE)
summary(df) #Distribution measures

#Histogramas
#hist(df$luminosity,main="Distribuição da Luminosidade",xlab="luminosidade",breaks =50,xlim = c(0,100))
#hist(df$humidity,main="Distribuição da Umidade",xlab="umidade (%)",breaks =50,xlim = c(50,100))
#hist(df$temperature,main="Distribuição da Temperatura",xlab="temperatura (ºC)",breaks =50,xlim = c(5,40))
#hist(df$presence,main="Distribuição da Presença",xlab="presença (cont de 0 a 100)",breaks =50,xlim = c(0,100))

#Aproximação pela normal
#qqnorm(df$luminosity)	#Bad
#qqnorm(df$humidity)	#Medium
#qqnorm(df$temperature)	#Escada, Good
#qqnorm(df$presence) #Exponencial, Ruim

#stripchart(df$luminosidade) #Não bom para muitos dados

#Gráficos
#plot(df$luminosity)
#plot(df$humidity)
#plot(df$temperature)
#plot(df$presence)

#Relações
#plot(df$luminosity,df$presence)
#plot(df$temperature,df$humidity)
#plot(df$humidity,df$presence)

##Classification
##presclassifier <- function(x){
##	prediction <- rep(NA, length(x)) #Initialize prediction vector
##	prediction[x>10.0] <- 100.00
##	prediction[x<=10.0] <- 0.0
##	return (prediction) #prediction is 0 or 100
##}

##presclass = presclassifier(df$presenca)
##plot(presclass)


#Clustering
#random seed
#set.seed(1)
#positive <- 50
#positive2 <- df$humidity
#kmeans_luminosidade <- kmeans(positive,3) #Interessante mudar o núm de clusters e ver resultados
#kmeans_presenca <- kmeans(positive2,2)
#plot(df$luminosity ~ df$luzLed,data = positive,col = kmeans_luminosidade$cluster)
#plot(df$presenca ~ df$presLed,data = presenca[1],col = kmeans_presenca$cluster)