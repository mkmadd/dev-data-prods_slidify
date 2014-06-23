require(rCharts)

units <- reactive({as.character(input$sel_units)})
temp <- reactive({as.numeric(input$date_end - input$date_start, units=units())})
output$test_out <- renderText({temp()})