//
//  SecondViewController.m
//  换肤(抽取工具类)练习
//
//  Created by 李凯 on 2020/3/11.
//  Copyright © 2020 kevin. All rights reserved.
//

#import "SecondViewController.h"
#import "Tool.h"
#import "Const.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.bgImageView.image = [Tool getImageWithType:kTypeBack];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
