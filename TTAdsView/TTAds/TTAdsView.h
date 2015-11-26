//
//  TTAdsView.h
//  TTAdsView
//
//  Created by 谈Xx on 15/11/20.
//  Copyright © 2015年 谈Xx. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TTAdsView;

// 协议
@protocol TTAdsViewDelegate <NSObject>
@optional
- (void)TTAdsView:(UICollectionView *)tTAdsView didSelectItemAtIndex:(NSInteger)index;
@end

typedef void (^SelectHandle)(NSInteger index);


@interface TTAdsView : UIView<UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic, strong) UICollectionView *AdsCollectView;
/**
 *  图片url数组
 */
@property (nonatomic, strong) NSArray *urlArray;
/**
 *  占位图
 */
@property (nonatomic, strong) UIImage *placeHolderImg;
/**
 *  间隔 默认5s
 */
@property (nonatomic,assign)NSInteger timeInterval;
/**
 *  点击block
 */
@property (nonatomic,copy) SelectHandle selectBlock;
/**
 *  代理
 */
@property (nonatomic,weak) id <TTAdsViewDelegate> delegate;

-(instancetype)initWithFrame:(CGRect)frame PlaceholderImage:(UIImage *)image Urls:(NSArray *)urlarray;
-(instancetype)initWithFrame:(CGRect)frame PlaceholderImage:(UIImage *)image imageNames:(NSArray *)imagearray;
+(instancetype)TTAdsViewWithFrame:(CGRect)frame PlaceholderImage:(UIImage *)image Urls:(NSArray *)urlarray;

-(void)stop;

@end
