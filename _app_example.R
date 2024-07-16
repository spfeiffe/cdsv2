ui <- fluidPage	(
				titlePanel("Miles Per Gallon"),
				sidebarLayout	(
								sidebarPanel(),
								mainPanel	(
											textOutput("myTextOutput") # ,
											# br(),
											# textOutput("myTextOutput2")
											)
								),
				theme = bslib::bs_theme(version = "5")
				)
 
server <- function(input, output)
	{
	output$myTextOutput <- renderPrint	(
											{
											print("Hi, there!")
											# if (file.exists("./my_special_app_log.txt"))
											# 	{
											# 	r <- readLines("./my_special_app_log.txt")
											# 	writeLines(c(r, "\napple"), "./my_special_app_log.txt")
											# 	} else	{
											# 			writeLines("apple", "./my_special_app_log.txt")
											# 			}
											# r2 <- readLines("./my_special_app_log.txt")
											# print(r2)
											# # dir("../var/log/shiny-server")
											}
										)
	# output$myTestOutput2 <- renderPrint	(
	# 										{
	# 										if (file.exists("./my_special_app_log.txt"))
	# 											{
	# 											r3 <- readLines("./my_special_app_log.txt")
	# 											writeLines(c(r3, "\nbanana"), "./my_special_app_log.txt")
	# 											} else	{
	# 													writeLines("banana", "./my_special_app_log.txt")
	# 													}
	# 										r4 <- readLines("./my_special_app_log.txt")
	# 										print(r4)
	# 										}
	# 									)
	# cat(file=stdout(), "Checkpoint Zeta.") # https://stackoverflow.com/questions40934481/print-information-into-shiny-server-log 
	# docker container exec -it 72b66f883a47 sh -c "ls /proc/1/root/var/log/shiny-server" 
	}

shinyApp(ui, server)