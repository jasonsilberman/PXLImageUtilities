//
//  UIImage+PXLUtilities.h
//  PXLImageUtilitiesDemo
//
//  Created by Jason Silberman on 3/8/14.
//  Copyright (c) 2014 Jason Silberman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (PXLUtilities)

/**
 * @return image filled with color
 */
+ (UIImage *)maskedImageNamed:(NSString *)name color:(UIColor *)color;

/**
 * @return image filled with color
 */
+ (UIImage *)imageFromImage:(UIImage *)image filledWithColor:(UIColor *)color;

/**
 * @return creates an image from base64 encoded string
 */
+ (UIImage *)imageFromBase64String:(NSString *)base64String;

/**
 * @return creates an image from base64 encoded data
 */
+ (UIImage *)imageFromBase64data:(NSData *)base64Data;

/**
 * @return creates an image of a screenshot of view
 */
+ (UIImage *)imageFromScreenshotOfView:(UIView *)view;

/**
 * @return compresses image to quality using UIImageJPEGRepresentation too quality
 */
- (UIImage *)compressToQuality:(CGFloat)compressionQuality;

/**
 * @return string of image encoded using base64
 */
- (id)convertImageToBase64String;

/**
 * @return data of image encoded using base64
 */
- (id)convertImageToBase64Data;

/**
 * @return image filled with color
 */
- (UIImage *)fillWithColor:(UIColor *)fillColor;

@end
