//
//  ToolNetWorkSolveVC.m
//  Car
//
//  Created by muxi on 15/2/2.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import "ToolNetWorkSolveVC.h"
#import "ToolNetWorkView.h"

#define ios6x ([[[UIDevice currentDevice] systemVersion] floatValue] < 7.0f)

@interface ToolNetWorkSolveVC ()

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *lineHConstraint;

@end

@implementation ToolNetWorkSolveVC

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title=@"无网络解决方案";
    
    self.lineHConstraint.constant=.5f;
    
    if(ios6x) return;
    
    self.edgesForExtendedLayout=UIRectEdgeNone;
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [ToolNetWorkView dismissNetWordNotiInViewController:self.navigationController];
}

-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    [ToolNetWorkView dismissNetWordNotiInViewController:self.navigationController];
}



@end
