# Scraper

simple url scraper

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `scraper` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:scraper, "~> 0.1.0"}]
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


Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/scraper](https://hexdocs.pm/scraper).

