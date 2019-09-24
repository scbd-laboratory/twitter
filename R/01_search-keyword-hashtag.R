# Intall library rtweet
install.packages("rtweet")

# Panggil library terlebih dulu
library("rtweet")

# Ganti dengan keword yang akan dicari
keyword <- "Keyword"
jumlahtweet <- 1000

# Bila ingin Mengambil Retweet tuliskan "TRUE", bila tidak tuliskan "FALSE"
retweet <- TRUE

#Autentifikasi
token <- create_token(
  app = "Nama Aplikasi",
  consumer_key = "Masukan Twitter Consumer Key",
  consumer_secret = "Masukan Twitter Consumer Secret",
  access_token = "Masukan Twitter Access Token",
  access_secret = "Masukan Twitter Access Secred")

#Mencari Tweet
crawling <- search_tweets(keyword, n = jumlahtweet, include_rts = retweet)

#Save Sebagai CSV
write_as_csv(crawling, "hasilcrawling-keyword.csv", prepend_ids = TRUE, na = "",fileEncoding = "UTF-8")
