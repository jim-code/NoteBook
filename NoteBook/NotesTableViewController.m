//
//  NotesTableViewController.m
//  NoteBook
//
//  Created by Jim Jin [STAFF] on 10/9/17.
//  Copyright © 2017 JIM. All rights reserved.
//

#import "NotesTableViewController.h"
#import "Note.h"
#import "AddNoteViewController.h"

@interface NotesTableViewController () <AddnoteViewControllerDeleage>

@property (strong, nonatomic) NSArray *notes;

@end

@implementation NotesTableViewController

- (void)viewDidLoad {
     [super viewDidLoad];
     
     [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"NoteCell"];
    
    Note *note1 = [[Note alloc] init];
    note1.noteText = @"1";
    Note *note2 = [[Note alloc] init];
    note2.noteText = @"2";
    self.notes = @[note1, note2];
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addbuttonTapped:)];
    
    self.navigationItem.leftBarButtonItem = addButton;
}

- (void)addbuttonTapped:(id)sender {
    AddNoteViewController *addNoteVC = [[AddNoteViewController alloc] initWithNibName:@"View" bundle:[NSBundle mainBundle]];
    
    [self presentViewController:addNoteVC animated:YES completion:nil];
    
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.notes.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NoteCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.notes[indexPath.row] noteText];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

@end
