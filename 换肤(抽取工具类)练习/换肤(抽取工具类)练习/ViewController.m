//
//  ViewController.m
//  换肤(抽取工具类)练习
//
//  Created by 李凯 on 2020/3/11.
//  Copyright © 2020 kevin. All rights reserved.
//

#import "ViewController.h"
#import "Tool.h"
#import "Const.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configImage];
}

- (IBAction)chunJieBtnClicked:(UIButton *)sender {
    [Tool saveWithTheme:kChunjie];
    self.testLabel.textColor = [Tool setLabelColorWithTheme: kChunjie];
    [self configImage];
}

- (IBAction)zhongQiuBtnClicked:(UIButton *)sender {
    [Tool saveWithTheme:kZhongqiu];
    self.testLabel.textColor = [Tool setLabelColorWithTheme: kZhongqiu];
    [self configImage];
}

- (IBAction)guoQingBtnClicked:(UIButton *)sender {
    [Tool saveWithTheme:kGuoqing];
    self.testLabel.textColor = [Tool setLabelColorWithTheme: kGuoqing];
    [self configImage];
}

- (void)configImage {
    self.bgImageView.image = [Tool getImageWithType:kTypeBack];
    [self.btn setImage:[Tool getImageWithType:kTypeIcon] forState:UIControlStateNormal];
}

@end
