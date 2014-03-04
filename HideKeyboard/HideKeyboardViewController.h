//
//  HideKeyboardViewController.h
//  HideKeyboard
//
//  Created by Todd Claussen on 2/24/14.
//  Copyright (c) 2014 Todd Claussen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HideKeyboardViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *scrollview;
@property (strong, nonatomic) IBOutlet UITextField *txtfirst;
@property (strong, nonatomic) IBOutlet UITextField *txtsecond;
@property (strong, nonatomic) IBOutlet UITextField *txtthird;
@property (strong, nonatomic) IBOutlet UITextField *txtfourth;
@property (strong, nonatomic) IBOutlet UITextField *txtfifth;

-(IBAction) doneEditing:(id) sender;
@end
