library(rvest)
library(dplyr)
library(robotstxt)
path=paths_allowed("https://bwfworldtour.bwfbadminton.com/rankings/?id=9&cat_id=57&ryear=2022&week=45&page_size=25&page_no=1")
url <- "https://bwfworldtour.bwfbadminton.com/rankings/?id=9&cat_id=57&ryear=2022&week=45&page_size=25&page_no=1"
web <- read_html(url)
Playername <- web %>%
  html_nodes(".player") %>%html_text()
View(Playername)
Country <- web %>%
  html_nodes(".country span") %>%html_text()
View(Country)
Points <- web %>%
  html_nodes("td:nth-child(5)") %>%html_text()
View(Points)
Player.ranking <- data.frame(Playername,Country,Points)
View(Player.ranking)
write.csv(Player.ranking,"My_Player data.csv")
