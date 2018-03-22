#Consumer Key (API Key) KlF22uIOXjhkX1vC2bwBwEx38 
#Consumer Secret (API Secret) W88wTp6VqpQo5MTgXw1aUY4hERJRsR4yexOQQm8EFqN4L5JuZn 
#Access Token 976789803797643264-mJPnvYsINLjMJhxNqEZ9I4A0e7XUiCY 
#Access Token Secret UUhGZCTvskL5dVXAzpAthLmhwSuvWaRZ5iksG47cIjtiV 

# Use Existing Twitter Authentication Stored
# Marketing Analytics


library("twitteR")
library("ROAuth")

# Certificate not Required
load("twitter authentication.Rdata")

AccessToken="976789803797643264-mJPnvYsINLjMJhxNqEZ9I4A0e7XUiCY"
AccessTokenSecret="UUhGZCTvskL5dVXAzpAthLmhwSuvWaRZ5iksG47cIjtiV"
ConsumerKey="KlF22uIOXjhkX1vC2bwBwEx38"
ConsumerSecret="W88wTp6VqpQo5MTgXw1aUY4hERJRsR4yexOQQm8EFqN4L5JuZn"

load("twitter authentication.Rdata")
#registerTwitterOAuth(cred)

setup_twitter_oauth(ConsumerKey, ConsumerSecret, AccessToken, AccessTokenSecret)

search.string <- "#crime"
no.of.tweets <- 100

tweets <- searchTwitter(search.string, n=no.of.tweets,lang="en")
tweets


homeTimeline(n=15)
mentions(n=15)