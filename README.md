
# Apple Search Ads Attribution API for React Native

## Getting started

`$ yarn add react-native-apple-ads-attribution`

### Manual installation

#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-apple-ads-attribution` and add `RNAppleAdsAttribution.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNAppleAdsAttribution.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project

## Usage
```javascript
import AppleAdsAttribution from 'react-native-apple-ads-attribution';

let attributionData = await AppleAdsAttribution.getAttributionData();
```
