//
//  assortmentVC.m
//  myPerspective
//
//  Created by Aniket K on 8/13/13.
//  Copyright (c) 2013 Aniket Kulkarni. All rights reserved.
//

#import "assortmentVC.h"

@interface assortmentVC ()

@end

@implementation assortmentVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
//    [self.collectionView registerClass:[assortmentCell class] forCellWithReuseIdentifier:@"assortmentCell"];

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 8;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 2;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(120, 50);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    assortmentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"assortedCell" forIndexPath:indexPath];
    [cell.btnNumber setTitle:[NSString stringWithFormat:@"%d %d",indexPath.section ,indexPath.row] forState:UIControlStateNormal];
    
    return cell;
    
}

@end
