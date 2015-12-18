//
//  MainController.m
//  POCGuillaume
//
//  Created by SQLI51107 on 18/12/2015.
//  Copyright © 2015 SQLI51107. All rights reserved.
//

#import "MainController.h"

static NSString *const kSegueIdentifier = @"mainToSecond";

@interface MainController ()
@property (weak, nonatomic) IBOutlet UIButton *nextScreenBtn;

@end

@implementation MainController

- (void)viewWillAppear:(BOOL)animated{
    //show navigation bar
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    //hide Back button
    self.navigationItem.hidesBackButton = YES;
    //show status bar
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
