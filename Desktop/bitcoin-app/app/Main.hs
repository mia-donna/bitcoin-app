module Main where

import HTTP

main :: IO ()
main = do
    let url = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson"
    json <- download url
    print json
