
# Apple Search Ads Attribution API for React Native

## Requirements
- iAd Framework

## Getting started
`$ yarn add react-native-apple-ads-attribution`

### Manual installation
#### iOS

1. In XCode, [follow the instructions](https://searchads.apple.com/v/advanced/help/pdf/attribution-api.pdf) in Step 1 to add the iAd framework
1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-apple-ads-attribution` and add `RNAppleAdsAttribution.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNAppleAdsAttribution.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project

## Usage
```javascript
import AppleAdsAttribution from 'react-native-apple-ads-attribution';

let attributionData = AppleAdsAttribution.getAttributionData();
```

## Documentation

#### getAttributionData()
Gets install attribution data from the Apple Search Ads Attribution API.

##### Examples
```javascript
AppleAdsAttribution.getAttributionData().then(attributionData => {
  console.log(attributionData);

  // {
  //   “Version3.1”: {
  //   “iad-attribution”: true,
  //   “iad-org-name”: “Light Right”,
  //   “iad-campaign-id”: 15292426,
  //   “iad-campaign-name”: “Light Bright Launch”,
  //   “iad-purchase-date”: “2016-10-14T17:18:07Z”,
  //   “iad-conversion-date”: “2016-10-14T17:18:07Z”,
  //   “iad-conversion-type”: “Download”,
  //   “iad-click-date”: “2016-10-14T17:17:00Z”,
  //   “iad-adgroup-id”: 15307675,
  //   “iad-adgroup-name”: “LightRight Launch Group”,
  //   “iad-keyword”: “light right”,
  //   “iad-keyword-matchtype”: “Broad”
  //   }
});
```

##### Notes
> If you receive an empty object, wait a few seconds and try again

> Test values (mirroring the example above) will be sent when using a iOS simulator

## License
The MIT License (MIT)

Copyright (c) 2018 Kenneth Ma, Freckle IOT

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
