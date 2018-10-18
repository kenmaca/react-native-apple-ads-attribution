
import { NativeModules } from 'react-native';

const { RNAppleAdsAttribution } = NativeModules;

class AppleAdsAttribution {
  getAttributionData() {
    return RNAppleAdsAttribution.getAttributionData();
  }
}

const AppleAdsAttributionInstance = new AppleAdsAttribution();

export default AppleAdsAttributionInstance;
