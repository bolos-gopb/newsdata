library(httr2)


date <- Sys.Date() - 1

req <- request("https://newsapi.org/v2/everything") |>
  req_url_query(
    q = '`"data science"`',
    from = date,
    pagesize = 10,
    apiKey = Sys.getenv("NEWS_API_KEY")
  )

req_perform(req, path = paste0("data/", date, ".json"))
