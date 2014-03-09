//
//  UIImage+PXLUtilities.m
//  PXLImageUtilitiesDemo
//
//  Created by Jason Silberman on 3/8/14.
//  Copyright (c) 2014 Jason Silberman. All rights reserved.
//

#import "UIImage+PXLUtilities.h"

@implementation UIImage (PXLUtilities)

+ (UIImage *)maskedImageNamed:(NSString *)name color:(UIColor *)color {
	UIImage *image = [UIImage imageNamed:name];
	return [image fillWithColor:color];
}

+ (UIImage *)imageFromBase64String:(NSString *)base64String {
    NSData *data = [[NSData alloc] initWithBase64EncodedString:base64String options:0];
	UIImage *image = [UIImage imageWithData:data];
	return image;
}

+ (UIImage *)imageFromBase64data:(NSData *)base64Data {
    NSData *data = [[NSData alloc] initWithBase64EncodedData:base64Data options:0];
	UIImage *image = [UIImage imageWithData:data];
	return image;
}

+ (UIImage *)imageFromScreenshotOfView:(UIView *)view {
	UIGraphicsBeginImageContext(view.bounds.size);
	CGContextRef context = UIGraphicsGetCurrentContext();
	[view.layer renderInContext:context];
	UIImage *screenShot = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	return screenShot;
}

- (UIImage *)compressToQuality:(CGFloat)compressionQuality {
	NSData *imageData = UIImageJPEGRepresentation(self, compressionQuality);
	return [[UIImage alloc] initWithData:imageData];
}

- (id)convertImageToBase64String {
	NSString *base64String = [UIImagePNGRepresentation(self) base64EncodedStringWithOptions:0];
    
    return base64String;
}

- (id)convertImageToBase64Data {
    NSData *base64Data = [UIImagePNGRepresentation(self) base64EncodedDataWithOptions:0];
    
    return base64Data;
}

- (UIImage *)fillWithColor:(UIColor *)fillColor {
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
	UIGraphicsBeginImageContextWithOptions(rect.size, NO, self.scale);
	CGContextRef c = UIGraphicsGetCurrentContext();
	[self drawInRect:rect];
	CGContextSetFillColorWithColor(c, [fillColor CGColor]);
	CGContextSetBlendMode(c, kCGBlendModeSourceAtop);
	CGContextFillRect(c, rect);
	UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	return result;
}

@end
