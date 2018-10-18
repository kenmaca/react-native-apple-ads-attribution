
#import "RNAppleAdsAttribution.h"
#import <iAd/iAd.h>

@implementation RNAppleAdsAttribution

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(getAttributionData:(RCTPromiseResolveBlock)resolve
                  rejecter : (RCTPromiseRejectBlock)reject)
{
    extern NSString * const ADClientErrorDomain;
    typedef NS_ENUM(NSInteger, ADClientError) {
      ADClientErrorUnknown = 0,
      ADClientErrorLimitAdTracking = 1
    };

    [[ADClient sharedClient] requestAttributionDetailsWithBlock: ^(NSDictionary *attributionDetails, NSError *error) {
      if (!error) {
        resolve(attributionDetails);
        return;
      }

      // failed, so return empty
      resolve(@{});
      return;
    }];
}

@end
