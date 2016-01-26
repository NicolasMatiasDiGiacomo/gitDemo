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
    UILabel *helloLabel = [[UILabel alloc]initWithFrame:CGRectMake( 0, 50, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    helloLabel.text = @"Hello World";
    helloLabel.textColor = [UIColor redColor];
    helloLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:helloLabel];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
