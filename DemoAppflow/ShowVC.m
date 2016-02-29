//
//  ShowVC.m
//  DemoAppflow
//
//  Created by Susim Samanta on 29/02/16.
//  Copyright © 2016 Susim Samanta. All rights reserved.
//

#import "ShowVC.h"

@interface ShowVC ()
@property(nonatomic,weak) IBOutlet UILabel *showTitleLabel;
@property(nonatomic) Fruit *fruit;
@end

@implementation ShowVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUIWithDataSource];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setUIWithDataSource{
    self.showTitleLabel.text = self.fruit.name;
}
- (void)loadDataSource:(Fruit *)fruit {
    self.fruit = fruit;
}

@end
