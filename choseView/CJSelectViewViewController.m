//
//  CJSelectViewViewController.m
//  choseView
//
//  Created by cerastes on 14/12/9.
//  Copyright (c) 2014年 cerastes. All rights reserved.
//

#import "CJSelectViewViewController.h"

@interface CJSelectViewViewController ()

@end

@implementation CJSelectViewViewController

-(IBAction)suerSelect:(id)sender{
    [self removeFromSuperview];
}
-(IBAction)hiddenSelf:(id)sender{
    [self removeFromSuperview];
}

#pragma mark - tableDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  self.titles.count;

//    return  self.titles.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *identify = @"sdas";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    cell.textLabel.text = self.titles[indexPath.row];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    self.callBack(self.prppreitys[indexPath.row]);
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
