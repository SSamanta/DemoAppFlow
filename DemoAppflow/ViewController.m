//
//  ViewController.m
//  DemoAppflow
//
//  Created by Susim Samanta on 29/02/16.
//  Copyright © 2016 Susim Samanta. All rights reserved.
//

#import "ViewController.h"
#import "ShowVC.h"
#import "Fruit.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(IBAction)showMeButtonTapped:(id)sender {
    ShowVC *showVc = [self.storyboard instantiateViewControllerWithIdentifier:@"ShowVC"];
    Fruit *fruit = [[Fruit alloc] init];
    fruit.name = @"Apple";
    [showVc loadDataSource:fruit];
    [self.navigationController pushViewController:showVc animated:YES];
}
@end
