//
//  CJSelectViewViewController.h
//  choseView
//
//  Created by cerastes on 14/12/9.
//  Copyright (c) 2014年 cerastes. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef  void(^CallBack)(id selectedValue);

@interface CJSelectViewViewController : UIView<UITableViewDataSource,UITableViewDelegate>
{
    
}
@property NSArray *prppreitys;
@property NSArray *titles;
@property (strong)CallBack callBack;

@property IBOutlet UILabel     *titleLabel;
@property IBOutlet UITableView *mainChoseView;

-(IBAction)suerSelect:(id)sender;
-(IBAction)hiddenSelf:(id)sender;

@end
