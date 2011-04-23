    //
//  ViewController1.m
//  AKSomeWindows
//
//  Created by tkawano on 4/23/11.
//  Copyright 2011 Fusic. All rights reserved.
//

#import "ViewController1.h"


@implementation ViewController1
	@synthesize label = label_;


- (id)init {
	self = [super init];
	if (!self) {
		return nil;
	}
	self.title = @"ViewController1";
	return self;
}

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

- (void)viewDidLoad {
    [super viewDidLoad];

	UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
	label.text = @"Hello ViewController1";
	label.textAlignment = UITextAlignmentCenter;
	label.backgroundColor = [UIColor whiteColor];
	label.textColor = [UIColor blackColor];
	label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	[self.view addSubview:label];
	self.label = label;
	[label release];
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
