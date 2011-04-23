//
//  AKTableViewViewController.h
//  AKSomeWindows
//
//  Created by tkawano on 4/23/11.
//  Copyright 2011 Fusic. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AKTableViewViewController : UITableViewController {

@private
	NSArray *items_;
}

@property(nonatomic, retain) NSArray *items;

@end
