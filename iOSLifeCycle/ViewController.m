//
//  ViewController.m
//  iOSLifeCycle
//
//  Created by mengyun on 2018/3/31.
//  Copyright © 2018年 mengyun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// 指定构造函数
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    NSLog(@"call func: %s", __FUNCTION__);
    if (self = [super initWithCoder:aDecoder]) {
        
    }
    return self;
}

// 有没有xib时都要调用，没有xib时需要在loadView人为设置view
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    NSLog(@"call func: %s", __FUNCTION__);
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
    }
    return self;
}

// 加载nib完成
- (void) awakeFromNib{
    NSLog(@"call func: %s", __FUNCTION__);
    [super awakeFromNib];
}

// 加载视图(默认从nib)，没有nib则需要自己创建view
- (void)loadView{
    NSLog(@"call func: %s", __FUNCTION__);
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor = [UIColor grayColor];
}

// 视图加载完成，viewController自带的view加载完成
- (void)viewDidLoad {
    NSLog(@"call func: %s", __FUNCTION__);
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// 视图将要出现
- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"%s", __FUNCTION__);
    [super viewWillAppear:animated];
}

// view 即将布局其 Subviews，即将开始计算约束等步骤
- (void)viewWillLayoutSubviews {
    NSLog(@"%s", __FUNCTION__);
    [super viewWillLayoutSubviews];
}

// view 已经布局其 Subviews
- (void)viewDidLayoutSubviews {
    NSLog(@"%s", __FUNCTION__);
    [super viewDidLayoutSubviews];
}

// 视图已经出现
- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"%s", __FUNCTION__);
    [super viewDidAppear:animated];
}

//视图将要消失
- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"%s", __FUNCTION__);
    [super viewWillDisappear:animated];
}

//视图已经消失
- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"%s", __FUNCTION__);
    [super viewDidDisappear:animated];
}

//出现内存警告
//模拟内存警告方法:点击模拟器->hardware-> Simulate Memory Warning
- (void)didReceiveMemoryWarning {
    NSLog(@"%s", __FUNCTION__);
    [super didReceiveMemoryWarning];
}

// 视图被销毁
- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}

@end
