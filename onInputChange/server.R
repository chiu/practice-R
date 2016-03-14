# server.R
shinyServer(function(input, output, session) {
  observeEvent(input$random_number, {
    output$results = renderPrint({
      input$keypress_value
    })
    print(paste0("keypress entered into db", as.character(Sys.time())))
  })
})