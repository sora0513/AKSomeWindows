//
//  AKSomeWindowsAppDelegate.h
//  AKSomeWindows
//
//  Created by tkawano on 4/23/11.
//  Copyright 2011 Fusic. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AKSomeWindowsViewController;

@interface AKSomeWindowsAppDelegate : NSObject <UIApplicationDelegate> {
@private
    UIWindow *window;
	UINavigationController *navigationController_;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UINavigationController *navigationController;

@end

