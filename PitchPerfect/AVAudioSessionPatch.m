//
//  AVAudioSessionPatch.m
//  PitchPerfect
//
//  Created by MAC on 30/10/2018.
//  Copyright © 2018 Dan. All rights reserved.
//

#import <Foundation/Foundation.h>
// AVAudioSessionPatch.h

@import AVFoundation;

NS_ASSUME_NONNULL_BEGIN

@interface AVAudioSessionPatch : NSObject

+ (BOOL)setSession:(AVAudioSession *)session category:(AVAudioSessionCategory)category withOptions:(AVAudioSessionCategoryOptions)options error:(__autoreleasing NSError **)outError;

@end

NS_ASSUME_NONNULL_END

// AVAudioSessionPatch.m

#import "AVAudioSessionPatch.h"

@implementation AVAudioSessionPatch

+ (BOOL)setSession:(AVAudioSession *)session category:(AVAudioSessionCategory)category withOptions:(AVAudioSessionCategoryOptions)options error:(__autoreleasing NSError **)outError {
    return [session setCategory:category withOptions:options error:outError];
}

@end
