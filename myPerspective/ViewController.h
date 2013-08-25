//
//  ViewController.h
//  myPerspective
//
//  Created by Aniket K on 8/11/13.
//  Copyright (c) 2013 Aniket Kulkarni. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "assortmentVC.h"

@interface ViewController : UIViewController {
    
    NSInteger iAmAKClickCounter;
}

@property (nonatomic,retain) IBOutlet UIButton *btnAK;
@property (nonatomic,retain) IBOutlet UIView *view3Buttons;


@end
