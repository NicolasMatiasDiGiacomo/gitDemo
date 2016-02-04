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
    [self moveLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)moveLabel
{
    UILabel *helloLabel = [[UILabel alloc]initWithFrame:CGRectMake( 0, 50, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    helloLabel.text = @"Hello World";
    helloLabel.textColor = [UIColor redColor];
    helloLabel.textAlignment = NSTextAlignmentCenter;
    [UIView transitionWithView:helloLabel duration:0.5f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        helloLabel.center = CGPointMake(arc4random()%(int)[UIScreen mainScreen].bounds.size.width-50, arc4random()%(int)[UIScreen mainScreen].bounds.size.height-50);
        helloLabel.transform = CGAffineTransformMakeScale(1.5,1.5);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.5f animations:^{
            helloLabel.transform = CGAffineTransformIdentity;
        }];
        [UIView animateWithDuration:0.5f animations:^{
            helloLabel.alpha = 1;
        }];
        [UIView animateWithDuration:0.5f animations:^{
            helloLabel.alpha = 0;
        }];
        [UIView animateWithDuration:0.5f animations:^{
            helloLabel.center = CGPointMake(arc4random()%(int)[UIScreen mainScreen].bounds.size.width-50, arc4random()%(int)[UIScreen mainScreen].bounds.size.height-50);
        }];
        [UIView animateWithDuration:0.5f animations:^{
            helloLabel.alpha = 1;
        }];
    }];
    self.helloWorldLabel = helloLabel;
    [self.view addSubview:self.helloWorldLabel];
    //aca podes hacer el comentario que quieras
    //y cuando quieras le haces commit desde aca pusheando a github
    // Do any additional setup after loading the view, typically from a nib.
}

@end
