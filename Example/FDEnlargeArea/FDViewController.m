//
//  FDViewController.m
//  FDEnlargeArea
//
//  Created by toolazytoname on 06/23/2018.
//  Copyright (c) 2018 toolazytoname. All rights reserved.
//

#import "FDViewController.h"
#import "UIControl+FDEnlargeArea.h"


@interface FDViewController ()
@property (weak, nonatomic) IBOutlet UIButton *enlargeButton;

@property (weak, nonatomic) IBOutlet UISwitch *enlargeSwitch;

@property (weak, nonatomic) IBOutlet UISlider *enlargeSlider;

@end

@implementation FDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self enlarge];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)enlarge {
    [self.enlargeButton fd_setEnlargeEdge:30];
    
    //invalid
    //[self.enlargeSwitch fd_setEnlargeEdge:30];
    
    //invalid
    [self.enlargeSlider fd_setEnlargeEdge:30];
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


@end
