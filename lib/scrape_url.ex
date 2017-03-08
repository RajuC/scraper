defmodule ScrapeUrl do

  @meta_map  %{"og:description" => :description,
               "og:image"       => :image,
               "og:title"       => :title
              }
  @meta_keys  ["og:description", "og:image", "og:title"]

  def scrape(resp), do: resp.body |> Floki.find("meta[property]") |> meta_info()


  def meta_info([]), do: %{title: "", description: "", image: ""}
  def meta_info(array), do: meta_info(array, %{})


  def meta_info([], acc), do: [] |> meta_info() |> Map.merge(acc)
  def meta_info([{_, [{_, key}, {_, value}], _} | tail], acc) when key in @meta_keys do
    acc = Map.put(acc, @meta_map[key], value)
    meta_info(tail, acc)
  end
  def meta_info([{_, [{_,_},{_, key}, {_, value}], _} | tail], acc) when key in @meta_keys do
    acc = Map.put(acc, @meta_map[key], value)
    meta_info(tail, acc)
  end
  def meta_info([{_, _, _} | tail], acc), do: meta_info(tail, acc)
end