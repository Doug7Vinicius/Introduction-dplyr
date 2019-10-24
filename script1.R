df <- . %>% 
  runif(100) %>% 
  matrix(., ncol = 10) %>% 
  as.data.frame(.)

df

diameters <- as.data.frame(replicate(4, rnorm(10,mean=1.31,sd=0.05)))

ds <-  %>% 
  rnorm(10, mean = 1.31, sd = 0.05)
ds

is.na(tible_chicago[["tmpd"]])

library(data.table)

iris_dt <- as.data.table(iris)
iris_dt[,
        list(SPmean = mean(Sepal.Length),
             PLmean = mean(Petal.Length)),
        by = Species]


# Endereço web do arquivo, mas poderia ser local.
url <- "http://leg.ufpr.br/~walmes/data/euro_football_players.txt"

# Importa a tabela de dados.
tb <- read_tsv(file = url,
               comment = "#")
head(tb, n = 6)

# Cria um tibble data.frame a partir de vetores.
df1 <- tibble(matricula = c(256, 487, 965, 125, 458, 874, 963),
              nome = c("João", "Vanessa", "Tiago", "Luana", "Gisele",
                       "Pedro", "André"),
              curso = c("Mat", "Mat", "Est", "Est", "Est", "Mat", "Est"),
              prova1 = c(80, 75, 95, 70, 45, 55, 30),
              prova2 = c(90, 75, 80, 85, 50, 75, NA),
              prova3 = c(80, 75, 75, 50, NA, 90, 30),
              faltas = c(4, 4, 0, 8, 16, 0, 20))
df2 <- tibble(matricula = c(505, 658, 713),
              nome = c("Bia", "Carlos", "Cris"),
              curso = c("Eng", "Eng", "Eng"),
              prova1 = c(65, 75, 75),
              prova2 = c(85, 80, 90),
              faltas = c(0, 0, 2))

df_extra <- tribble(
  ~mat,     ~nome, ~idade, ~bolsista,
  256,  'João'  ,     18,       "S",
  965,  'Tiago' ,     18,       "N",
  285,  'Tiago' ,     22,       "N",
  125,  'Luana' ,     21,       "S",
  874,  'Pedro' ,     19,       "N",
  321,  'Mia'   ,     18,       "N",
  669,  'Luana' ,     19,       "S",
  967,  'André' ,     20,       "N",
)

#Ordenação

df1 %>% 
  arrange(matricula)

df1 %>% 
  arrange(curso, prova1)

df1 %>% 
  arrange(curso, desc(prova1))

df1 %>% 
  filter(curso == Est)


df1 %>% 
  mutate("média" = (prova1 + prova2 + prova3)/3, na.rm = TRUE)



chicago2 %>% 
  filter(!Ano == 1987 & Dia == 1)


# Cria a variável que é a condição.
df1[["condicao"]] <- cut(df1[["media"]],
                         breaks = inter,
                         labels = condi,
                         right = FALSE,
                         include.lowest = TRUE)

chicago %>% 
  group_by(year) %>% 
  summarise("média" = mean(tmpd, na.rm = TRUE))


years <- group_by(chicago, year)

chicago <- mutate(chicago, year = as.POSIXlt(date)$year + 1900)


summarize(years, "pm25" = mean(pm25tmean2, na.rm = TRUE), 
                    "o3" = max(o3tmean2, na.rm = TRUE), 
                   "no2" = median(no2tmean2, na.rm = TRUE))
