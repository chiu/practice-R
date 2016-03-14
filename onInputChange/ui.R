# ui.R

shinyUI(bootstrapPage(
  # a div named mydiv
  tags$div(
    id = "mydiv",
    style = "width: 50px; height :50px;
    left: 100px; top: 100px;
    background-color: gray; position: absolute"
  ),
  
  # a shiny element to display unformatted text
  verbatimTextOutput("results"),
  
  # javascript code to send data to shiny server
  tags$script(
    '
    $(document).on("keypress", function (e) {
    Shiny.onInputChange("keypress_value", e.which);
    var number = Math.random();
    Shiny.onInputChange("random_number", number);
    });
    '
  )
  
  ))