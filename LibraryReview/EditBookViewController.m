//
//  EditBookViewController.m
//  LibraryReview
//
//  Created by Robert Shepperd on 8/24/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import "EditBookViewController.h"

@interface EditBookViewController ()

@end

@implementation EditBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)doneButtonTapped:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)cancelButtonTapped:(UIBarButtonItem *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
