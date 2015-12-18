//
//  SplashViewController.m
//  POCGuillaume
//
//  Created by SQLI51107 on 18/12/2015.
//  Copyright © 2015 SQLI51107. All rights reserved.
//

#import "SplashViewController.h"

static NSString *const kSegueIdentifierSplashToMain = @"splashToMain";

@interface SplashViewController ()

@end

@implementation SplashViewController

- (void)viewWillAppear:(BOOL)animated{
    //hide navigation bar
    [self.navigationController setNavigationBarHidden:YES animated:YES];   
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //Gesture to hide splashscreen
    UITapGestureRecognizer *singleFingerTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
    [self.view addGestureRecognizer:singleFingerTap];
 
}

- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer {
    [self performSegueWithIdentifier:kSegueIdentifierSplashToMain sender:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)prefersStatusBarHidden{
    return YES;
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
