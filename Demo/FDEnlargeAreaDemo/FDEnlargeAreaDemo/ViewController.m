//
//  ViewController.m
//  FDEnlargeAreaDemo
//
//  Created by weichao on 16/10/1.
//  Copyright © 2016年 chaowei. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+FDEnlargeArea.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *enlargeButton;

@property (weak, nonatomic) IBOutlet UISwitch *enlargeSwitch;

@property (weak, nonatomic) IBOutlet UISlider *enlargeSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self enlarge];
}

- (IBAction)buttonClick:(id)sender {
    NSLog(@"sender:%@",sender);
}

- (IBAction)switchValueChanged:(id)sender {
    NSLog(@"sender:%@",sender);
}

- (IBAction)sliderValueChanged:(id)sender {
    NSLog(@"sender:%@",sender);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)enlarge {
    [self.enlargeButton fd_setEnlargeEdge:30];
    
    //[self.enlargeSwitch fd_setEnlargeEdge:20];
    
    [self.enlargeSlider fd_setEnlargeEdge:30];
}

@end
