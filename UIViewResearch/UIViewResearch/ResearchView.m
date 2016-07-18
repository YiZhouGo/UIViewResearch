//
//  ResearchView.m
//  UIViewResearch
//
//  Created by yizhou on 16/6/21.
//  Copyright © 2016年 GoPage. All rights reserved.
//

#import "ResearchView.h"

@interface ResearchView()

@property (nonatomic, assign) BOOL isRed;

@property (nonatomic, assign) BOOL isBottom;

@end

@implementation ResearchView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.contentLab];
        self.backgroundColor = [UIColor greenColor];
        self.isRed = YES;
        self.isBottom = NO;
    }
    return self;
}

-(void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    NSLog(@"drawRect");
    if (self.isRed) {
        self.contentLab.backgroundColor = [UIColor redColor];
    }else{
        self.contentLab.backgroundColor = [UIColor magentaColor];
    }
    
    CGSize size = [self.contentLab sizeThatFits:CGSizeMake(100, 10000)];
    self.contentLab.frame = CGRectMake(0, 0, size.width, size.height);

}


-(void)layoutSubviews{
    [super layoutSubviews];
    NSLog(@"layoutSubViews:%@",[NSThread currentThread]);
    if (self.isBottom) {
        self.contentLab.center = CGPointMake(200, 200);
    }else{
        self.contentLab.center = CGPointMake(100, 100);
    }
}

-(UILabel *)contentLab{
    if (!_contentLab) {
        _contentLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 80)];
        if (self.isRed) {
            _contentLab.backgroundColor = [UIColor redColor];
        }
        _contentLab.text = @"pl";
        _contentLab.numberOfLines = 0;
        _contentLab.center = CGPointMake(100, 100);
    }
    return _contentLab;
}

-(void)changColor {
    if (self.isRed) {
        self.isRed = NO;
    }else{
        self.isRed = YES;
    }
}

-(void)changeFrame {
//改变子视图frame则直接调用layoutSubView
//    self.contentLab.center = CGPointMake(arc4random()%50 , arc4random()%50);
    if (self.isBottom) {
        self.isBottom = NO;
    }else{
        self.isBottom = YES;
    }
    
}


@end
