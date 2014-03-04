//
//  HideKeyboardViewController.m
//  HideKeyboard
//
//  Created by Todd Claussen on 2/24/14.
//  Copyright (c) 2014 Todd Claussen. All rights reserved.
//

#import "HideKeyboardViewController.h"

@interface HideKeyboardViewController ()

@end

@implementation HideKeyboardViewController
@synthesize txtfirst,txtsecond,txtthird,txtfourth,txtfifth,scrollview;

- (void)viewDidLoad
{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)dismissKeyboard {
    // add textfields and textviews
    //[Nameofoutletlikeatextfield resignFirstResponder];
    [txtfirst resignFirstResponder];
    [txtsecond resignFirstResponder];
    [txtthird resignFirstResponder];
    [txtfourth resignFirstResponder];
    [txtfifth resignFirstResponder];
}

//right-click drag textfield to fileowner select doneediting
//right-click drag textfield to fileowner select delegate
-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [scrollview setContentOffset:CGPointZero animated:YES];
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    CGPoint scrollPoint = CGPointMake(0, textView.frame.origin.y);
    [scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    [scrollview setContentOffset:CGPointZero animated:YES];
}


@end
