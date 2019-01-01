//
//  cc_clipboard.h
//  cc-clipboard
//
//  Created by Maiken on 31/12/2018.
//  Copyright © 2018 hello_chenchen. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <Cocoa/Cocoa.h>
//#import <AppKit/AppKit.h>
#import <AppKit/NSPasteboard.h>

@interface cc_clipboard: NSObject{
    NSPasteboardType m_pasteBoardType;
    NSPasteboard* m_clipboard;
//    @property (nonatomic) NSPasteboard * clipboard;
}

-(NSPasteboardType) getPasteBoardType;

@end
