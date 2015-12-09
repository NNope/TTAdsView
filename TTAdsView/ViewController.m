//
//  ViewController.m
//  TTAdsView
//
//  Created by 谈Xx on 15/11/20.
//  Copyright © 2015年 谈Xx. All rights reserved.
//

#import "ViewController.h"
#import "TTAdsView.h"

@interface ViewController ()<TTAdsViewDelegate>
@property (nonatomic, strong) TTAdsView *ttads;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 本地图片
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 5; i++)
    {
        NSString *name = [NSString stringWithFormat:@"img_0%d",i+1];
        [array addObject:name];
    }
    // url
    /*
     http://pic14.nipic.com/20110522/7411759_164157418126_2.jpg
     http://img2.3lian.com/img2007/19/33/005.jpg
     http://pic.nipic.com/2007-11-09/200711912453162_2.jpg
     http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg
     http://pic25.nipic.com/20121209/9252150_194258033000_2.jpg
     http://img.taopic.com/uploads/allimg/130501/240451-13050106450911.jpg
     http://down.tutu001.com/d/file/20101129/2f5ca0f1c9b6d02ea87df74fcc_560.jpg
     */
    NSString *str1 = @"http://pic14.nipic.com/20110522/7411759_164157418126_2.jpg";
    NSString *str2 = @"http://img3.douban.com/view/status/median/public/198a1ad399063b1.jpg";
    NSString *str3 = @"http://img4.douban.com/view/status/median/public/a4292c8f3353deb.jpg";
    NSString *str4 = @"http://img4.douban.com/view/status/median/public/703f430b2045367.jpg";
    NSURL *url1 = [NSURL URLWithString:str1];
    NSURL *url2 = [NSURL URLWithString:str2];
    NSURL *url3 = [NSURL URLWithString:str3];
    NSURL *url4 = [NSURL URLWithString:str4];
    NSArray *urlarray = @[url1,url2,url3,url4];
    /*
     "title": "辉夜杯12月3日职业组开战",
     "title": "联想杯完美世界全国高校联赛",
     "title": "意见反馈",
     */
    NSString *ti1 = @"辉夜杯12月3日职业组开战";
    NSString *ti2 = @"联想杯完美世界全国高校联赛";
    NSString *ti3 = @"意见反馈";
    NSString *ti4 = @"联想杯完美世界全国高校联赛";
    NSArray *tiarray = @[ti1,ti2,ti3,ti4];
     self.ttads = [[TTAdsView alloc] initWithFrame:CGRectMake(0, 100, 375, 130) PlaceholderImage:nil Urls:urlarray titles:tiarray];
    
    self.ttads.timeInterval = 3;
    
    self.ttads.selectBlock = ^(NSInteger index){
        NSLog(@"点击了第%ld站图片",index);
    };
    self.ttads.delegate = self;
    [self.view addSubview:self.ttads];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(111, 555, 111, 111);
    [btn setTitle:@"TestButton" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(Test) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)Test
{
    NSString *ti1 = @"修改后标题";
    NSString *ti2 = @"修改后标题赛";
    NSString *ti3 = @"修改后标题";
    NSString *ti4 = @"修改后标题赛";
    NSArray *tiarray = @[ti1,ti2,ti3,ti4];
    self.ttads.titleArray = tiarray;
    
    NSString *str1 = @"http://pic14.nipic.com/20110522/7411759_164157418126_2.jpg";

    NSURL *url1 = [NSURL URLWithString:str1];
    NSURL *url2 = [NSURL URLWithString:str1];
    NSURL *url3 = [NSURL URLWithString:str1];
    NSURL *url4 = [NSURL URLWithString:str1];
    NSArray *urlarray = @[url1,url2,url3,url4];
    self.ttads.urlArray = urlarray;
    
    
    self.ttads.selectBlock = ^(NSInteger index){
        NSLog(@"我改了   。了第%ld站图片",index);
    };

}


-(void)TTAdsView:(UICollectionView *)tTAdsView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"点击了第%ld站图片",index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
