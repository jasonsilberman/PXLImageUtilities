//
//  UIImage+PXLUtilities.h
//  PXLImageUtilitiesDemo
//
//  Created by Jason Silberman on 3/8/14.
//  Copyright (c) 2014 Jason Silberman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (PXLUtilities)

+ (UIImage *)maskedImageNamed:(NSString *)name color:(UIColor *)color;
+ (UIImage *)imageFromBase64String:(NSString *)base64String;
+ (UIImage *)imageFromBase64data:(NSData *)base64Data;

- (UIImage *)compressToQuality:(CGFloat)compressionQuality;
- (NSData *)convertImageToBase64String;
- (NSData *)convertImageToBase64Data;

@end
