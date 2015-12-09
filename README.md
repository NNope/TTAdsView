# TTAdsView
TTAdsView
一个基于UICollectionView的轮播控件
        
```使用本地数组
TTAdsView *Ads =[[TTAdsView alloc] initWithFrame:CGRectMake(0, 100, 300, 130) PlaceholderImage:nil imageNames:array];

使用url 增加title数组
TTAdsView *Ads = [[TTAdsView alloc] initWithFrame:CGRectMake(0, 100, 300, 130) PlaceholderImage:nil Urls:urlarray titles:tiarray];

回调的处理
A.selectBlock = ^(NSInteger index){
    NSLog(@"点击了第%ld站图片",index);
};

-(void)TTAdsView:(UICollectionView *)tTAdsView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"点击了第%ld站图片",index);
}
