server <- function(input, output) 
{
  output$circuit <- renderPlotly({  # Création de l'output "circuit"
    args <- switch(input$select_circuit,  # Fonction générée en fonction de l'input choisi
                   "Monde" = Tracer_carte(df_world, df_circuits_new, -60, 90, -170, 190, "Carte des circuits de F1 dans le monde"),
                   "Europe" = Tracer_carte(df_europe, filter(df_circuits_new, continent=="Europe"), 34, 60, -15, 45, "Carte des circuits de F1 en Europe"),
                   "Amérique du Nord" = Tracer_carte(df_north_america, filter(df_circuits_new, continent=="North America" | name=="Donington Park" | name=="Autodromo Nazionale di Monza"), 0, 100, -170, -50, "Carte des circuits de F1 en Amérique du Nord"),
                   "Amérique du Sud" = Tracer_carte(df_south_america, filter(df_circuits_new, continent=="South America" | name=="Donington Park" | name=="Autodromo Nazionale di Monza"), -60, 20, -85, -30, "Carte des circuits de F1 en Amérique du Sud"),
                   "Asie" = Tracer_carte(df_asia, filter(df_circuits_new, continent=="Asia" | name=="Donington Park" | name=="Autodromo Nazionale di Monza"), -20, 80, 20, 190, "Carte des circuits de F1 en Asie"), 
                   "Afrique" = Tracer_carte(df_africa, filter(df_circuits_new, continent=="Africa" | name=="Donington Park" | name=="Autodromo Nazionale di Monza"), -40, 40, -20, 55, "Carte des circuits de F1 en Afrique"), 
                   "Océanie" = Tracer_carte(df_oceania, filter(df_circuits_new, continent=="Oceania" | name=="Donington Park" | name=="Autodromo Nazionale di Monza"), -50, -10, 110, 160, "Carte des circuits de F1 en Océanie"))
  })   
  
  output$pit_stop <- renderPlotly({  # Création de l'output "pit_stop"
    args <- switch(input$select_pit_stop,  # Fonction générée en fonction de l'input choisi
                   "McLaren" = Tracer_histo(1, "orange"),
                   "Williams" = Tracer_histo(3, "blue"),
                   "Renault" = Tracer_histo(4, "yellow"),
                   "Ferrari" = Tracer_histo(6, "red"),
                   "Red Bull" = Tracer_histo(9, "white"),
                   "Force India" = Tracer_histo(10, "pink"),
                   "Mercedes" = Tracer_histo(131, "grey"))
  })
}