//
//  GViewController.m
//  GrovatarSample
//
//  Created by Myungjin Choi on 11. 11. 29..
//  Copyright (c) 2011년 Insol. All rights reserved.
//

#import "GViewController.h"
#import "GravatarHelper.h"
#import "UIImageView+WebCache.h"

@implementation GViewController
@synthesize emailField;
@synthesize profileImage;
@synthesize urlStringField;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setEmailField:nil];
    [self setProfileImage:nil];
    [self setUrlStringField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)showProfile:(id)sender {
    [emailField resignFirstResponder];
    
    if ([emailField.text isEqualToString:@""]) {
        urlStringField.text = @"Fill in email field first, please!";
        return;
    }
    
    NSURL* url = [GravatarHelper getGravatarURL:emailField.text];
    urlStringField.text = [url absoluteString];
    [profileImage setImageWithURL:url];
}
@end
