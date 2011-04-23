    //
//  ModalViewController2.m
//  AKSomeWindows
//
//  Created by tkawano on 4/23/11.
//  Copyright 2011 Fusic. All rights reserved.
//

#import "ModalViewController2.h"


@implementation ModalViewController2
	@synthesize label = label_;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

- (void)buttonDidPush {
	[self dismissModalViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

	UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
	label.text = @"Hello World 1";
	label.textAlignment = UITextAlignmentCenter;
	label.backgroundColor = [UIColor blackColor];
	label.textColor = [UIColor whiteColor];
	label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	[self.view addSubview:label];
	self.label = label;
	[label release];
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[button setTitle:@"閉じる" forState:UIControlStateNormal];
	[button sizeToFit];
	CGPoint newPoint = self.view.center;
	newPoint.y += 50;
	button.center = newPoint;
	button.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
	[button addTarget:self action:@selector(buttonDidPush) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:button];	
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
