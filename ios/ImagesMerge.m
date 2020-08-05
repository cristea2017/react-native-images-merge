
#import <Foundation/Foundation.h>


#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"
@interface RCT_EXTERN_MODULE(ReactNativeImagesMerge, NSObject)
RCT_EXTERN_METHOD(mergeImages: (NSArray)imagesData callback:(RCTResponseSenderBlock)callback)
@end
