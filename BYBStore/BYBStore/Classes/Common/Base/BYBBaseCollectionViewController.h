//
//  BYBBaseCollectionViewController.h
//  BYBStore
//
//  Created by 晓梦影 on 2017/9/28.
//  Copyright © 2017年 BYBStore. All rights reserved.
//

#import "BYBBaseViewController.h"

@interface BYBBaseCollectionViewController : BYBBaseViewController<UICollectionViewDataSource,UICollectionViewDelegate>

@property(nonatomic, strong) UICollectionView *collectionView;

/** 是否第一次进入界面 */
@property (nonatomic, assign) BOOL isRefresh;

- (void)loadFooterData;
- (void)loadHeaderData;
- (void)endRefreshing;

@end
