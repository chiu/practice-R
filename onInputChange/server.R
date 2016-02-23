# server.R

shinyServer(function(input, output, session) {
  # output$results = renderPrint({
  #   input$keypress_value
  #
  # })
  #
  # observe({
  #   print(input$keypress_value)}
  # )
  observeEvent(input$random_number, {
    output$results = renderPrint({
      input$keypress_value
      # print(input$random_number)
      # print(input$keypress_value)
    })
    print(paste0("keypress entered into db", as.character(Sys.time())))
    
  })
})