if (require("tidyverse")) {
  library(tidyverse)
} else {
  install.packages("tidyverse")
  library(tidyverse)
}

if (require("plotly")) {
  library(plotly)
} else {
  install.packages("plotly")
  library(plotly)
}

if (require("shiny")) {
  library(shiny)
} else {
  install.packages("shiny")
  library(shiny)
}

if (require("shinydashboard")) {
  library(shinydashboard)
} else {
  install.packages("shinydashboard")
  library(shinydashboard)
}

if (require("devtools")) {
  library(devtools)
} else {
  install.packages("devtools")
  library(devtools)
}

if (require("tidyverse")) {
  library(tidyverse)
} else {
  install.packages("tidyverse")
  library(tidyverse)
}

if (require("kaggler")) {
  library(kaggler)
} else {
  devtools::install_github("ldurazo/kaggler")
  library(kaggler)
}

if (require("readr")) {
  library(readr)
} else {
  install.packages("readr")
  library(readr)
}

if (require("dplyr")) {
  library(dplyr)
} else {
  install.packages("dplyr")
  library(dplyr)
}

if (require("ggplot2")) {
  library(ggplot2)
} else {
  install.packages("ggplot2")
  library(ggplot2)
}

if (require("mapproj")) {
  library(mapproj)
} else {
  install.packages("mapproj")
  library(mapproj)
}

if (require("viridis")) {
  library(viridis)
} else {
  install.packages("viridis")
  library(viridis)
}

if (!file.exists("data.zip")){
  kgl_auth(creds_file = 'kaggle.json')
  response <- kgl_datasets_download_all(owner_dataset = "rohanrao/formula-1-world-championship-1950-2020")
  download.file(response[["url"]], "data.zip", mode="wb")
  unzip_result <- unzip("data.zip", overwrite = TRUE)
}

df_circuits <- read.csv('circuits.csv', encoding="UTF-8") 
df_constructor_results <- read.csv('constructor_results.csv', encoding="UTF-8")
df_constructor_standings <- read.csv('constructor_standings.csv', encoding="UTF-8")
df_constructors <- read.csv('constructors.csv', encoding="UTF-8")
df_driver_standings <- read.csv('driver_standings.csv', encoding="UTF-8")
df_drivers <- read.csv('drivers.csv', encoding="UTF-8")
df_lap_times <- read.csv('lap_times.csv', encoding="UTF-8")
df_pit_stops <- read.csv('pit_stops.csv', encoding="UTF-8")
df_qualifying <- read.csv('qualifying.csv', encoding="UTF-8")
df_races <- read.csv('races.csv', encoding="UTF-8")
df_results <- read.csv('results.csv', encoding="UTF-8")
df_seasons <- read.csv('seasons.csv', encoding="UTF-8")
df_status <- read.csv('status.csv', encoding="UTF-8")

vector_df <- c(df_circuits,
               df_constructor_results,
               df_constructor_standings,
               df_constructors,
               df_driver_standings,
               df_drivers,
               df_lap_times,
               df_pit_stops,
               df_qualifying,
               df_races,
               df_results,
               df_seasons,
               df_status)

df_world <- map_data("world")
df_europe <- filter(df_world, region=="Albania" | region=="Finland" | region=="Andorra" | region=="Austria" | region=="Belgium" 
                    | region=="Bulgaria" | region=="Bosnia and Herzegovina" | region=="Belarus" | region=="Switzerland"
                    | region=="Czech Republic" | region=="Germany" | region=="Denmark" | region=="Spain" | region=="Estonia"
                    | region=="France" | region=="UK" | region=="Guernsey" | region=="Greece"
                    | region=="Croatia" | region=="Hungary" | region=="Isle of Man" | region=="Ireland" | region=="Iceland"
                    | region=="Italy" | region=="San Marino" | region=="Jersey" | region=="Kosovo" | region=="Liechtenstein"
                    | region=="Lithuania" | region=="Luxembourg" | region=="Latvia" | region=="Monaco" | region=="Moldova"
                    | region=="Macedonia" | region=="Montenegro" | region=="Netherlands" | region=="Norway" | region=="Poland"
                    | region=="Portugal" | region=="Romania" | region=="Serbia" | region=="Slovakia" | region=="Slovenia"
                    | region=="Sweden" | region=="Ukraine" | region=="Vatican")

df_north_america <- filter(df_world, region=="USA" | region=="Mexico" | region=="Canada" | region=="Guatemala" 
                           | region=="Cuba" | region=="Haiti" | region=="Andorra" | region=="Dominican Republic"
                           | region=="Honduras" | region=="Nicaragua" | region=="El Salvador" | region=="Costa Rica" | region=="Panama"
                           | region=="Jamaica" | region=="Trinidad and Tobago" | region=="Belize" | region=="Bahamas" 
                           | region=="Barbados"| region=="Saint Lucia" | region=="Grenada" | region=="Saint Vincent and the Grenadines" 
                           | region=="Antigua and Barbuda" | region=="Dominica" | region=="Saint Kitts and Nevis")

df_south_america <- filter(df_world, region=="Brazil" | region=="Colombia" | region=="Argentina" | region=="Peru" 
                           | region=="Venezuela" | region=="Chile" | region=="Ecuador" | region=="Bolivia" | region=="Paraguay" 
                           | region=="Uruguay" | region=="Guyana" | region=="Suriname")


df_asia <- filter(df_world, region=="Russia" | region=="China" | region=="India" | region=="Kazakhstan" 
                  | region=="Saudi Arabia" | region=="Iran" | region=="Mongolia" | region=="Indonesia" 
                  | region=="Pakistan" | region=="Turkey" | region=="Myanmar" | region=="Afghanistan" | region=="Yemen" 
                  | region=="Thailand" | region=="Turkmenistan" | region=="Uzbekistan" | region=="Iraq" | region=="Japan" 
                  | region=="Vietnam " |region=="Malaysia" | region=="Oman" | region=="Philippines" | region=="Laos" 
                  | region=="Kyrgyzstan" | region=="Syria" | region=="Cambodia" | region=="Bangladesh" |region=="Nepal" 
                  | region=="Tajikistan" | region=="North Korea" | region=="South Korea" | region=="Jordan" 
                  | region=="United Arab Emirates" | region=="Azerbaijan" | region=="Georgia" | region=="Sri Lanka" 
                  | region=="Bhutan" | region=="Armenia" | region=="Israel" | region=="Kuwait" 
                  | region=="East Timor" | region=="Qatar" | region=="Lebanon" | region=="Cyprus" | region=="Palestine" 
                  | region=="Brunei" | region=="Bahrain" | region=="Singapore" | region=="Maldives")

df_africa <- filter(df_world, region=="Nigeria" | region=="Ethiopia" | region=="Democratic Republic of the Congo" 
                    | region=="Egypt" | region=="South Africa" | region=="Tanzania" | region=="Kenya" | region=="Uganda" 
                    | region=="Algeria" | region=="Sudan" | region=="Morocco" | region=="Ghana" | region=="Mozambique" 
                    | region=="Angola" | region=="Somalia" | region=="Ivory Coast" | region=="Madagascar" | region=="Cameroon" 
                    | region=="Burkina Faso" | region=="Niger" | region=="Malawi" | region=="Zambia" | region=="Mali" 
                    | region=="Senegal" | region=="Zimbabwe" | region=="Chad" | region=="Tunisia" | region=="Guinea" 
                    | region=="Rwanda" | region=="Benin" | region=="Burundi" | region=="South Sudan" | region=="Eritrea" 
                    | region=="Sierra Leone" | region=="Togo" | region=="Libya" | region=="Central African Republic" 
                    | region=="Mauritania" | region=="Republic of Congo" | region=="Liberia" | region=="Namibia" 
                    | region=="Botswana" | region=="Lesotho" | region=="Gambia" | region=="Gabon" | region=="Guinea-Bissau" 
                    | region=="Mauritius" | region=="Equatorial Guinea" | region=="Eswatini" | region=="Djibouti" 
                    | region=="Comoros" | region=="Western Sahara" | region=="Cape Verde" | region=="São Tomé and Príncipe" 
                    | region=="Seychelles")


df_oceania <- filter(df_world, region=="Australia")

df_circuits <- mutate(df_circuits, continent = case_when(country=="UAE" ~ "Asia",
                                                         country=="Japan" ~ "Asia",
                                                         country=="China" ~ "Asia",
                                                         country=="Korea" ~ "Asia",
                                                         country=="India" ~ "Asia",
                                                         country=="Russia" ~ "Asia",
                                                         country=="Turkey" ~ "Asia",
                                                         country=="Bahrain" ~ "Asia",
                                                         country=="Vietnam" ~ "Asia",
                                                         country=="Malaysia" ~ "Asia",
                                                         country=="Singapore" ~ "Asia", 
                                                         country=="Azerbaijan" ~ "Asia",
                                                         country=="Saudi Arabia" ~ "Asia",
                                                         
                                                         country=="UK" ~ "Europe",
                                                         country=="Spain" ~ "Europe",                                             
                                                         country=="Italy" ~ "Europe",
                                                         country=="Sweden" ~ "Europe",
                                                         country=="Monaco" ~ "Europe",
                                                         country=="France" ~ "Europe",
                                                         country=="Belgium" ~ "Europe",
                                                         country=="Hungary" ~ "Europe",
                                                         country=="Austria" ~ "Europe",
                                                         country=="Germany" ~ "Europe",
                                                         country=="Portugal" ~ "Europe",
                                                         country=="Switzerland" ~ "Europe",
                                                         country=="Netherlands" ~ "Europe",
                                                         
                                                         country=="USA" ~ "North America",
                                                         country=="Canada" ~ "North America",
                                                         country=="Mexico" ~ "North America",
                                                         
                                                         country=="Brazil" ~ "South America",
                                                         country=="Argentina" ~ "South America",
                                                         
                                                         country=="Morocco" ~ "Africa",
                                                         country=="South Africa" ~ "Africa",
                                                         
                                                         country=="Australia" ~ "Oceania",
                                                         
                                                         TRUE ~ "No continent"))

df_circuits[,"continent"] <- factor(df_circuits[,"continent"])

df_circuits <- df_circuits %>%
  merge(count(df_races, circuitId), by = "circuitId") %>%
  arrange(desc(n)) %>%
  mutate(text = paste(" Pays: ", country, "\n",
                      "Circuit: ", name, "\n",
                      "Nombre de courses: ", n))

Tracer_carte <- function(data_map, data_circuits, y1, y2, x1, x2, titre) 
{
  carte <- ggplot() +
    geom_polygon(data = data_map, aes(x = long, y = lat, group = group), color = "black", fill = "grey", alpha = 0.3) +
    geom_point(data = data_circuits, aes(x = lng, y = lat, size = n, color = n, text = text, alpha = 1)) +
    scale_size_continuous(range=c(1,10)) +
    scale_color_viridis(option="plasma", trans="log2") +
    theme_void() + ylim(y1, y2) + xlim(x1, x2) + coord_map() +
    ggtitle(titre)
  
  ggplotly(carte, tooltip="text") 
}

df_id <- select(df_results, raceId, driverId, constructorId)

#aggregate(df_constructor_results$points, by = list(df_constructor_results$constructorId), FUN=sum)
#tapply(df_constructor_results$points, df_constructor_results$constructorId, FUN=sum)

df_results <- df_constructor_results %>% group_by(constructorId) %>% summarise(pointsTotal = sum(points))

df_best_pit_stops <- df_pit_stops %>% 
  merge(df_id, by = c("raceId","driverId")) %>%
  mutate(seconds = milliseconds / 1000) %>%
  merge(df_results, by = "constructorId") %>%
  filter(pointsTotal >= 1000 & seconds <= 35)

Tracer_histo <- function(data_constructor, color) 
{
  histo <- ggplot() + 
    geom_histogram(data =  filter(df_best_pit_stops, constructorId == data_constructor), aes(x = seconds), binwidth = 0.5, color = "black", fill = color, alpha = 1) +
    labs(title = "Durée d'arrêt aux pit stops", x = "Seconde", y = "Occurrence")
  
  ggplotly(histo) 
}

ui <- dashboardPage(dashboardHeader(title = "Projet F1 DataViz"),
                    dashboardSidebar(disable = TRUE),
                    dashboardBody(fluidRow(box(plotlyOutput("circuit", height = 400)),
                                           box(title = "Régions du monde", selectInput("select_circuit", 
                                                                                       label = "Régions du monde", 
                                                                                       choices = c("Monde",
                                                                                                   "Europe",
                                                                                                   "Amérique du Nord",
                                                                                                   "Amérique du Sud",
                                                                                                   "Asie", 
                                                                                                   "Afrique", 
                                                                                                   "Océanie"), 
                                                                                       selected = "Monde"))),
                                  fluidRow(box(plotlyOutput("pit_stop", height = 400)),
                                           box(title = "Constructor",  selectInput("select_pit_stop", 
                                                                                   label = "Constructor", 
                                                                                   choices = c("McLaren",
                                                                                               "Williams",
                                                                                               "Renault",
                                                                                               "Ferrari",
                                                                                               "Red Bull", 
                                                                                               "Force India", 
                                                                                               "Mercedes"), 
                                                                                   selected = "McLaren"))))
)
server <- function(input, output) 
{
  output$circuit <- renderPlotly({
    args <- switch(input$select_circuit,
                   "Monde" = Tracer_carte(df_world, df_circuits, -60, 90, -170, 190, "Carte des circuits de F1 dans le monde"),
                   "Europe" = Tracer_carte(df_europe, filter(df_circuits, continent=="Europe"), 34, 60, -15, 45, "Carte des circuits de F1 en Europe"),
                   "Amérique du Nord" = Tracer_carte(df_north_america, filter(df_circuits, continent=="North America" | name=="Donington Park" | name=="Autodromo Nazionale di Monza"), 0, 100, -170, -50, "Carte des circuits de F1 en Amérique du Nord"),
                   "Amérique du Sud" = Tracer_carte(df_south_america, filter(df_circuits, continent=="South America" | name=="Donington Park" | name=="Autodromo Nazionale di Monza"), -60, 20, -85, -30, "Carte des circuits de F1 en Amérique du Sud"),
                   "Asie" = Tracer_carte(df_asia, filter(df_circuits, continent=="Asia" | name=="Donington Park" | name=="Autodromo Nazionale di Monza"), -20, 80, 20, 190, "Carte des circuits de F1 en Asie"), 
                   "Afrique" = Tracer_carte(df_africa, filter(df_circuits, continent=="Africa" | name=="Donington Park" | name=="Autodromo Nazionale di Monza"), -40, 40, -20, 55, "Carte des circuits de F1 en Afrique"), 
                   "Océanie" = Tracer_carte(df_oceania, filter(df_circuits, continent=="Oceania" | name=="Donington Park" | name=="Autodromo Nazionale di Monza"), -50, -10, 110, 160, "Carte des circuits de F1 en Océanie"))
  })   
  
  output$pit_stop <- renderPlotly({
    args <- switch(input$select_pit_stop,
                   "McLaren" = Tracer_histo(1, "orange"),
                   "Williams" = Tracer_histo(3, "blue"),
                   "Renault" = Tracer_histo(4, "yellow"),
                   "Ferrari" = Tracer_histo(6, "red"),
                   "Red Bull" = Tracer_histo(9, "white"),
                   "Force India" = Tracer_histo(10, "pink"),
                   "Mercedes" = Tracer_histo(131, "grey"))
  })
}

shinyApp(ui = ui, server = server)