shinyUI(pageWithSidebar(
        headerPanel('Cars k-means Clustering'),
        sidebarPanel(
                selectInput('xcol', 'X Axis', choices = names(mtcars)),
                selectInput('ycol', 'Y Axis', choices = names(mtcars),
                            selected=names(mtcars)[[2]]),
                numericInput('clusters', 'Total Clusters', 3,
                             min = 1, max = 8),
                helpText("Note: This is a key explaining possible inputs values for app"),
                helpText("mpg - miles per gallon"),
                helpText("cyl - clylinder"),
                helpText("disp - disp for each cars"),
                helpText("hp - horse power"),
                helpText("drat - drat for cars"),
                helpText("wt - weight"),
                helpText("qsec - qsec for cars"),
                helpText("vs - vs for cars"),
                helpText("am - am for cars"),
                helpText("gear - number of grears"),
                helpText("carb - carb for cars")
        ),
        
        mainPanel(
                plotOutput('plot1')
        )
        
))