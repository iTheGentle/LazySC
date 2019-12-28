#line 1 "/Users/iTheGentle/Desktop/LazySC/LazySC/LazySC.xm"

#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class PHAsset; @class SCGalleryImportCameraRollAssetItem; 
static void (*_logos_orig$_ungrouped$SCGalleryImportCameraRollAssetItem$setIneligible$)(_LOGOS_SELF_TYPE_NORMAL SCGalleryImportCameraRollAssetItem* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$SCGalleryImportCameraRollAssetItem$setIneligible$(_LOGOS_SELF_TYPE_NORMAL SCGalleryImportCameraRollAssetItem* _LOGOS_SELF_CONST, SEL, BOOL); static void (*_logos_orig$_ungrouped$SCGalleryImportCameraRollAssetItem$setIneligibleReason$)(_LOGOS_SELF_TYPE_NORMAL SCGalleryImportCameraRollAssetItem* _LOGOS_SELF_CONST, SEL, NSUInteger); static void _logos_method$_ungrouped$SCGalleryImportCameraRollAssetItem$setIneligibleReason$(_LOGOS_SELF_TYPE_NORMAL SCGalleryImportCameraRollAssetItem* _LOGOS_SELF_CONST, SEL, NSUInteger); static id (*_logos_meta_orig$_ungrouped$PHAsset$fetchAssetsInAssetCollection$options$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id _logos_meta_method$_ungrouped$PHAsset$fetchAssetsInAssetCollection$options$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id (*_logos_orig$_ungrouped$PHAsset$creationDate)(_LOGOS_SELF_TYPE_NORMAL PHAsset* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PHAsset$creationDate(_LOGOS_SELF_TYPE_NORMAL PHAsset* _LOGOS_SELF_CONST, SEL); 

#line 1 "/Users/iTheGentle/Desktop/LazySC/LazySC/LazySC.xm"
#import "MiAlert.h"
#import <Photos/Photos.h>

static void _logos_method$_ungrouped$SCGalleryImportCameraRollAssetItem$setIneligible$(_LOGOS_SELF_TYPE_NORMAL SCGalleryImportCameraRollAssetItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1){
_logos_orig$_ungrouped$SCGalleryImportCameraRollAssetItem$setIneligible$(self, _cmd, 0);
}
static void _logos_method$_ungrouped$SCGalleryImportCameraRollAssetItem$setIneligibleReason$(_LOGOS_SELF_TYPE_NORMAL SCGalleryImportCameraRollAssetItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSUInteger arg1){
_logos_orig$_ungrouped$SCGalleryImportCameraRollAssetItem$setIneligibleReason$(self, _cmd, 0);
}


static __attribute__((constructor)) void _logosLocalCtor_5784034e(int __unused argc, char __unused **argv, char __unused **envp){
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
NSError * error = NULL;
NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
NSString *documentsDirectory = [paths objectAtIndex:0];
NSString *getPath = [documentsDirectory stringByAppendingPathComponent:@"ii"];

if(![[NSFileManager defaultManager] fileExistsAtPath:getPath]) {
dispatch_async(dispatch_get_main_queue(), ^{
[MiAlert ShowMessage:@"هلآ والله بالزين، لو سمحت ممكن نتعرف ♥️🤭\n@iTheGentle" Mode:1];

});
NSString *mn = @"";
[mn writeToFile:getPath atomically:NO encoding:NSUTF8StringEncoding error:&error];
}
});
}


static id _logos_meta_method$_ungrouped$PHAsset$fetchAssetsInAssetCollection$options$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
PHFetchOptions *fetchOptions = [[PHFetchOptions alloc] init];
NSString *sourceString = [[NSThread callStackSymbols] objectAtIndex:1];

NSCharacterSet *separatorSet = [NSCharacterSet characterSetWithCharactersInString:@" -[]+?.,"];
NSMutableArray *array = [NSMutableArray arrayWithArray:[sourceString  componentsSeparatedByCharactersInSet:separatorSet]];
[array removeObject:@""];

NSLog(@"Stack = %@", [array objectAtIndex:0]);
NSLog(@"Framework = %@", [array objectAtIndex:1]);
NSLog(@"Memory address = %@", [array objectAtIndex:2]);
NSLog(@"Class caller = %@", [array objectAtIndex:3]);
NSLog(@"Function caller = %@", [array objectAtIndex:4]);



return _logos_meta_orig$_ungrouped$PHAsset$fetchAssetsInAssetCollection$options$(self, _cmd, [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeSmartAlbum subtype:PHAssetCollectionSubtypeSmartAlbumUserLibrary options:fetchOptions].firstObject,nil);
}
static id _logos_method$_ungrouped$PHAsset$creationDate(_LOGOS_SELF_TYPE_NORMAL PHAsset* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
return [NSDate date];
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SCGalleryImportCameraRollAssetItem = objc_getClass("SCGalleryImportCameraRollAssetItem"); MSHookMessageEx(_logos_class$_ungrouped$SCGalleryImportCameraRollAssetItem, @selector(setIneligible:), (IMP)&_logos_method$_ungrouped$SCGalleryImportCameraRollAssetItem$setIneligible$, (IMP*)&_logos_orig$_ungrouped$SCGalleryImportCameraRollAssetItem$setIneligible$);MSHookMessageEx(_logos_class$_ungrouped$SCGalleryImportCameraRollAssetItem, @selector(setIneligibleReason:), (IMP)&_logos_method$_ungrouped$SCGalleryImportCameraRollAssetItem$setIneligibleReason$, (IMP*)&_logos_orig$_ungrouped$SCGalleryImportCameraRollAssetItem$setIneligibleReason$);Class _logos_class$_ungrouped$PHAsset = objc_getClass("PHAsset"); Class _logos_metaclass$_ungrouped$PHAsset = object_getClass(_logos_class$_ungrouped$PHAsset); MSHookMessageEx(_logos_metaclass$_ungrouped$PHAsset, @selector(fetchAssetsInAssetCollection:options:), (IMP)&_logos_meta_method$_ungrouped$PHAsset$fetchAssetsInAssetCollection$options$, (IMP*)&_logos_meta_orig$_ungrouped$PHAsset$fetchAssetsInAssetCollection$options$);MSHookMessageEx(_logos_class$_ungrouped$PHAsset, @selector(creationDate), (IMP)&_logos_method$_ungrouped$PHAsset$creationDate, (IMP*)&_logos_orig$_ungrouped$PHAsset$creationDate);} }
#line 54 "/Users/iTheGentle/Desktop/LazySC/LazySC/LazySC.xm"
