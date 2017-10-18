//
//  AddNoteViewController.h
//  NoteBook
//
//  Created by Jim Jin [STAFF] on 10/9/17.
//  Copyright © 2017 JIM. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Note;

@protocol AddnoteViewControllerDeleage <NSObject>

- (void)saveNote:(Note *)note;

@end

@interface AddNoteViewController : UIViewController

@end
