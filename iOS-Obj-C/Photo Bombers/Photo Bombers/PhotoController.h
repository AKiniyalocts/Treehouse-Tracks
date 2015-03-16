//
//  PhotoController.h
//  Photo Bombers
//
//  Created by Anthony Kiniyalocts on 3/16/15.
//  Copyright (c) 2015 Treehouse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhotoController : NSObject

+ (void)imageForPhoto: (NSDictionary *)photo size: (NSString *) size completion:(void(^)
                                                                                (UIImage *image)) completion;

@end
