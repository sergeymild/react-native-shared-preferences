#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(SharedPreferences, RCTEventEmitter)
RCT_EXTERN_METHOD(initialize:(nullable NSString*)suiteName)

RCT_EXTERN_METHOD(setInt:(NSString*)key value:(int)value)
RCT_EXTERN_METHOD(setString:(NSString*)key value:(NSString*)value)
RCT_EXTERN_METHOD(setFloat:(NSString*)key value:(float)value)
RCT_EXTERN_METHOD(setBool:(NSString*)key value:(BOOL)value)
RCT_EXTERN_METHOD(synchronize)

RCT_EXTERN_METHOD(getInt:(NSString*)key
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(getString:(NSString*)key
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(getBool:(NSString*)key
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(getKeys:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(getAll:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(removeValue:(NSString*)key)
RCT_EXTERN_METHOD(removeValues:(NSArray*)keys)
RCT_EXTERN_METHOD(removeAll)

@end
