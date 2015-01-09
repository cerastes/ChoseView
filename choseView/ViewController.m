//
//  ViewController.m
//  choseView
//
//  Created by cerastes on 14/12/9.
//  Copyright (c) 2014年 cerastes. All rights reserved.
//

#import "ViewController.h"
#import "CJSelectViewViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    CJSelectViewViewController *s = [[[NSBundle mainBundle]loadNibNamed:@"CJSelectViewViewController" owner:nil options:nil] lastObject];
    s.titleLabel.text = @"saddsds";
    s.prppreitys =@[@"11",@"22",@"33",@"44",@"55",@"66",@"77"];
    s.titles = @[@"11",@"22",@"33",@"44",@"55",@"66",@"77"];

    s.callBack = ^(id selectedValue){
    NSString *s = selectedValue;
    NSLog(@"dsfdsfsdfsd%@",s);
    };
    s.frame = self.view.frame;
    [self.view addSubview:s];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)show:(id)sender{
    
}
-(IBAction)hidden:(id)sender{
    
}

@end
