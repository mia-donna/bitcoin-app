{-# LANGUAGE DeriveGeneric #-}

module Parse where

import Data.Aeson (eitherDecode)
import qualified Data.ByteString.Lazy.Char8 as L8
import GHC.Generics ( Generic )
import Data.Aeson.Types

-- list of features in each earthquake
data Features = Features {
           features :: [Properties]
    } deriving (Show, Generic)

instance FromJSON Features
instance ToJSON Features

-- array of properties of earthquake 
data Properties = Properties {
           mag :: Double,
           place :: String
    } deriving (Show, Generic)

instance FromJSON Properties
instance ToJSON Properties

parse :: L8.ByteString -> Either String Features
parse json = eitherDecode json :: Either String Features 


