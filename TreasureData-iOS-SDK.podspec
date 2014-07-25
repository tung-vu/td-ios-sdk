Pod::Spec.new do |s|
  s.name         = "TreasureData-iOS-SDK"
  s.version      = "0.1.0"
  s.summary      = "TreasureData SDK for iOS."
  s.license      = "Apache"
  s.author       = { "TreasureData" => "mitsu@treasure-data.com" }
  s.platform     = :ios
  s.homepage     = "https://github.com/treasure-data/td-ios-sdk"
  s.source       = { :git => "https://github.com/treasure-data/td-ios-sdk.git", :tag => "0.1.0" }
  s.source_files  = 'TreasureData'
  s.library      = 'z'
  s.frameworks   = ['Security']
  s.public_header_files = "TreasureData/TreasureData.h"
  s.dependency "KeenClientTD", '= 3.2.13'
  s.requires_arc = true
end
