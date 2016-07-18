//
//  ViewController.m
//  UIViewResearch
//
//  Created by yizhou on 16/6/21.
//  Copyright © 2016年 GoPage. All rights reserved.
//

#import "ViewController.h"
#import "ResearchView.h"

@interface ViewController ()

@property (nonatomic, strong) ResearchView * researchView;

- (IBAction)clicked:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.researchView];
}

- (IBAction)clicked:(UIButton *)sender {
//当我们在某个类的内部调整子视图位置时，需要调用layoutSubViews。反过来的意思就是说：如果你想要在外部设置subviews的位置，就不要重写。
//    self.researchView.frame = CGRectMake(10, 20, 150, 200);
    
//重新对关于颜色的变量参数进行修改后，需要重绘当前对象
//    [self.researchView changColor];
//    [self.researchView setNeedsDisplay];

    
//改变当前lab的内容，需要重新调用drawrect方法，在drawrect方法内重绘lab的frame，可以使用sizeThatsFit获取当前大小，然后重新对lab赋值。
//    self.researchView.contentLab.text = @"ssssssssssssssssssssssssssssssssssss";
//    [self.researchView setNeedsDisplay];

    
    [self.researchView changeFrame];
//  强制更新视图布局
    [self.researchView setNeedsLayout];
//当大小发生变化的时候才需要重新布局
//    [self.researchView layoutIfNeeded];
}

#pragma mark - getter && setter

- (ResearchView *)researchView
{
    if (!_researchView){
        _researchView = [[ResearchView alloc] initWithFrame:CGRectMake(10, 10, 150, 200)];
    }
    return _researchView;
}

@end
