//
//  ViewController.m
//  gitDemo
//
//  Created by Nicolas Matias Di Giacomo  on 1/26/16.
//  Copyright © 2016 Nicolas Matias Di Giacomo . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *helloLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 50, 200, 40)];
    helloLabel.text = @"Hello World";
    [self.view addSubview:helloLabel];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
