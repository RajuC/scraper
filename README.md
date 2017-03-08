# Scraper

Simple url scraper

## Installation


```elixir
def deps do
  [{:scraper, git: "git@github.com:RajuC/scraper.git"}]
end
```


  ## Examples
```

 Scraper.scrape("https://twitter.com/darrenrovell/status/839225719075049473")                                                                                              
%{description: "“New paint job on Michael Jordan's private jet features the familiar Jordan shoe \"Elephant Print\" (Credit: Instagram/CorporateJets)”",
  image: "https://pbs.twimg.com/media/C6WHVoDUwAAViOZ.jpg:large",
  title: "Darren Rovell on Twitter",
  url: "https://twitter.com/darrenrovell/status/839225719075049473"}

```

