module Main where

import HTTP
import Parse

main :: IO ()
main = do
    let url = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson"
    json <- download url
    case (parse json) of 
        Left err -> print err
        Right feats -> print . head $ (features feats)
