//
//  AddNoteViewController.m
//  NoteBook
//
//  Created by Jim Jin [STAFF] on 10/9/17.
//  Copyright © 2017 JIM. All rights reserved.
//

#import "AddNoteViewController.h"

@interface AddNoteViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation AddNoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    NSLog(@"textField text: %@", textField.text);
    return YES;
    
}

@end
