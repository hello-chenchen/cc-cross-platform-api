//
//  cc_clipboard.m
//  cc-clipboard
//
//  Created by Maiken on 31/12/2018.
//  Copyright © 2018 hello_chenchen. All rights reserved.
//

#import "cc_clipboard.h"

@interface cc_clipboard()

-(NSPasteboardType) checkPasteBoardType:(NSPasteboardType) type;

@end

@implementation cc_clipboard

-(NSPasteboardType) getPasteBoardType{
    NSArray<NSPasteboardType> *types = m_clipboard.types;

    NSPasteboardType type = nil;
    for(int i = 0; i < types.count; i++){
        NSPasteboardType checkType = [self checkPasteBoardType: types[i]];
        if(nil != checkType) {
            type = checkType;
            break;
        }
    }
    
    return type;
}

-(NSPasteboardType) checkPasteBoardType:(NSPasteboardType) type{
    if(NSFilenamesPboardType == type) {
        NSLog(@"hello_chenchen: pasteboard type is NSFilenamesPboardType!");
        return NSFilenamesPboardType;
    }
    if(NSStringPboardType == type) {
        NSLog(@"hello_chenchen: pasteboard type is NSStringPboardType!");
        return NSStringPboardType;
    }
    if(NSPasteboardTypeRTF == type) {
        NSLog(@"hello_chenchen: pasteboard type is NSPasteboardTypeRTF!");
        return NSPasteboardTypeRTF;
    }
    
    return nil;
}

@end
