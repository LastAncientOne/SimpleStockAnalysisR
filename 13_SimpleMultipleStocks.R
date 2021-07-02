# Download Multiple Stocks
# Save to CSV
library(PerformanceAnalytics)
library(portfolioBacktest)

data(SP500_symbols)

# download data from internet
SP500_data <- stockDataDownload(stock_symbols = SP500_symbols,
                                from = "2018-01-01", to = "2020-12-31")

names(SP500_data[[which(lengths(SP500_data)>0)[1]]])

write.csv(SP500_data,"SP500_data.csv")

df <- data.frame(matrix(unlist(SP500_data), ncol = max(lengths(SP500_data)), byrow = TRUE))

prices <- stockDataDownload(stock_symbols = SP500_symbols,
                            from = "2018-01-01", to = "2020-12-31")['adjusted']

write.csv(prices,"SP500_prices.csv")
