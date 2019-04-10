fluidPage(
  selectInput(
    "favourite_movie_franchise",
    label = "Favourite movie franchise",
    choices = c("Starwars", "Star Trek", "The Mummy", "The Muppets")
  ),
  plotOutput("random_histogram")
)