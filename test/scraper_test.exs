defmodule ScraperTest do
  use ExUnit.Case
  
  doctest Scraper

  @valid_meta_url 	   "https://twitter.com/darrenrovell/status/839225719075049473"
  @valid_non_meta_url  "https://twitter.com/darrenrovell/status/83922571907504"

  @valid_meta %{description:  "“New paint job on Michael Jordan's private jet features the familiar Jordan shoe \"Elephant Print\" (Credit: Instagram/CorporateJets)”",
  				      image:        "https://pbs.twimg.com/media/C6WHVoDUwAAViOZ.jpg:large",
  				      title:        "Darren Rovell on Twitter",
  				      url:          "https://twitter.com/darrenrovell/status/839225719075049473"}

  @invalid_meta %{description: "", image: "", title: "",
                  url: "https://twitter.com/darrenrovell/status/83922571907504"}

  test "url scraper with valid url and having meta in url" do
    assert Scraper.scrape(@valid_meta_url)== @valid_meta
  end

  test "url scraper having non meta in url" do
    assert Scraper.scrape(@valid_non_meta_url)== @invalid_meta
  end  


end
