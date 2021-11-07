ui <- dashboardPage(skin = "red",
                    dashboardHeader(title = "Projet F1 DataViz"), # Titre
                    dashboardSidebar(disable = TRUE),  # Pas de Sidebar
                    dashboardBody(fluidRow(box(plotlyOutput("circuit", height = 400)),  # Premier panel pour la carte prenant l'output "circuit"
                                           box(title = "Paramètres de la carte", selectInput("select_circuit",   # SelectBox comme input
                                                                                       label = "Régions du monde", 
                                                                                       choices = c("Monde",  # Choix par continent
                                                                                                   "Europe",
                                                                                                   "Amérique du Nord",
                                                                                                   "Amérique du Sud",
                                                                                                   "Asie", 
                                                                                                   "Afrique", 
                                                                                                   "Océanie"), 
                                                                                       selected = "Monde"))),  # Valeur par default "Monde"
                                  
                                  fluidRow(box(plotlyOutput("pit_stop", height = 400)),  # Deuxième panel pour l'a carte'histogramme prenant l'output "pit_stop"
                                           box(title = "Paramètres de l'histogramme",  selectInput("select_pit_stop",  # SelectBox comme input
                                                                                   label = "Constructeur", 
                                                                                   choices = c("McLaren",   # Choix par constructur
                                                                                               "Williams",
                                                                                               "Renault",
                                                                                               "Ferrari",
                                                                                               "Red Bull", 
                                                                                               "Force India", 
                                                                                               "Mercedes"), 
                                                                                   selected = "McLaren"))))  # Valeur par default "McLaren"
)