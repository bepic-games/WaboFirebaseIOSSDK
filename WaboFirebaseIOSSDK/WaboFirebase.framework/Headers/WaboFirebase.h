//
//  WaboFirebase.h
//  WaboFirebase
//
//  Created by Bepic on 2023/2/22.
//

#import <Foundation/Foundation.h>

//! Project version number for WaboFirebase.
FOUNDATION_EXPORT double WaboFirebaseVersionNumber;

//! Project version string for WaboFirebase.
FOUNDATION_EXPORT const unsigned char WaboFirebaseVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <WaboFirebase/PublicHeader.h>


#pragma mark - Objective-C
#import "OnlineConfig.h"
#import "WaboAnalyticsEvent.h"
#import "WaboAnalyticsParameter.h"
@import WaboBase;
@import WaboBridge;

typedef void(^WaboSDKBridgeDelegate)(id _Nullable any);

@interface WaboFirebaseConfig : NSObject
@property(assign) BOOL debug;
@end

@interface WaboFirebase : NSObject
@property(atomic) BOOL isInit;
@property(retain) WaboFirebaseConfig * _Nonnull waboFirebaseConfig;
@property(nonatomic, copy) WaboSDKBridgeDelegate _Nullable waboFirebaseInitDelegate;
@property(nonatomic) WaboAnalyticsEvent * _Nonnull waboAnalyticsEvent;
@property(nonatomic) WaboAnalyticsParameter * _Nonnull waboAnalyticsParameter;

+ (WaboFirebase * _Nonnull)sharedInstance;

- (BOOL)isInited;

- (WaboBridgeResult * _Nonnull)bridgeVersion;

- (WaboBridgeResult * _Nonnull)sdkVersion;

- (void)onInitWithJson:(NSString * _Nonnull) jsonString;

- (WaboBridgeResult * _Nonnull)getEventName:(NSString * _Nonnull) name;

- (WaboBridgeResult * _Nonnull)getParameterName:(NSString * _Nonnull) name;

- (void)uploadEvent:(NSString * _Nonnull)eventName :(NSDictionary * _Nonnull) params;

- (void)setWaboFirebaseInitDelegate:(WaboSDKBridgeDelegate _Nonnull) delegate;

- (NSDictionary * _Nullable) jsonStringToDictionary:(NSString * _Nullable) jsonString;

@end
