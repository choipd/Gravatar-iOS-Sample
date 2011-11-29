//
//  GViewController.h
//  GrovatarSample
//
//  Created by Myungjin Choi on 11. 11. 29..
//  Copyright (c) 2011년 Insol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
@property (weak, nonatomic) IBOutlet UITextView *urlStringField;
- (IBAction)showProfile:(id)sender;

@end
