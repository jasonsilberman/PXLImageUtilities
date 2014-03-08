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
	CGRect rect = CGRectMake(0, 0, image.size.width, image.size.height);
	UIGraphicsBeginImageContextWithOptions(rect.size, NO, image.scale);
	CGContextRef c = UIGraphicsGetCurrentContext();
	[image drawInRect:rect];
	CGContextSetFillColorWithColor(c, [color CGColor]);
	CGContextSetBlendMode(c, kCGBlendModeSourceAtop);
	CGContextFillRect(c, rect);
	UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	return result;
}

- (UIImage *)compressToQuality:(CGFloat)compressionQuality {
	NSData *imageData = UIImageJPEGRepresentation(self, compressionQuality);
	return [[UIImage alloc] initWithData:imageData];
}

@end
