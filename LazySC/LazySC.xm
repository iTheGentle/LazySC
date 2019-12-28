#import "MiAlert.h"
#import <Photos/Photos.h>
%hook SCGalleryImportCameraRollAssetItem
-(void)setIneligible:(BOOL)arg1{
%orig(0);
}
-(void)setIneligibleReason:(NSUInteger)arg1{
%orig(0);
}
%end

%ctor{
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

%hook PHAsset
+ (id)fetchAssetsInAssetCollection:(id)arg1 options:(id)arg2{
PHFetchOptions *fetchOptions = [[PHFetchOptions alloc] init];
NSString *sourceString = [[NSThread callStackSymbols] objectAtIndex:1];
// Example: 1   UIKit                               0x00540c89 -[UIApplication _callInitializationDelegatesForURL:payload:suspended:] + 1163
NSCharacterSet *separatorSet = [NSCharacterSet characterSetWithCharactersInString:@" -[]+?.,"];
NSMutableArray *array = [NSMutableArray arrayWithArray:[sourceString  componentsSeparatedByCharactersInSet:separatorSet]];
[array removeObject:@""];

NSLog(@"Stack = %@", [array objectAtIndex:0]);
NSLog(@"Framework = %@", [array objectAtIndex:1]);
NSLog(@"Memory address = %@", [array objectAtIndex:2]);
NSLog(@"Class caller = %@", [array objectAtIndex:3]);
NSLog(@"Function caller = %@", [array objectAtIndex:4]);

return %orig([PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeSmartAlbum
subtype:PHAssetCollectionSubtypeSmartAlbumUserLibrary
options:fetchOptions].firstObject,nil);
}
- (id)creationDate{
return [NSDate date];
}
%end

