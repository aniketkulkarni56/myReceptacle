//
//  ViewController.m
//  myPerspective
//
//  Created by Aniket K on 8/11/13.
//  Copyright (c) 2013 Aniket Kulkarni. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    iAmAKClickCounter = 0;
    
    self.btnAK.layer.borderColor =  [[UIColor colorWithWhite:1.0 alpha:0.5]CGColor];
    self.btnAK.layer.borderWidth = 3.f;
    self.btnAK.layer.cornerRadius = 10.f;
    
    for (UIButton *button in self.view3Buttons.subviews) {
        button.layer.borderColor = self.btnAK.layer.borderColor;
        button.layer.borderWidth = self.btnAK.layer.borderWidth;
        button.layer.cornerRadius = self.btnAK.layer.cornerRadius;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clickedAK:(id)sender {
    
    [self performSegueWithIdentifier:@"seguetoassortment" sender:nil];
    return;
    
    iAmAKClickCounter++;
    
//    CATransform3D transformer = CATransform3DIdentity;
////     transformer.m12 = 0.25;
//    transformer.m34 = 1/-500.f;
////    transformer = CATransform3DRotate(transformer, 60 * 3.14 * iAmAKClickCounter, 1, 0, 0);
////    transformer = CATransform3DScale(transformer, 1, 1, 0.5);
//    transformer = CATransform3DRotate(transformer,45 * 3.14 * 180 * iAmAKClickCounter, 0, 1, 0);
////    transformer = CATransform3DRotate(transformer, 60 * 3.14 * iAmAKClickCounter, 1, 0, 0);
//    self.btnAK.layer.transform = transformer;
//    
      CATransform3D transformer = CATransform3DIdentity;
//    transformer.m34 = 1/-500.f;
//    transformer = CATransform3DRotate(transformer, 60 * 3.14 * 180 * iAmAKClickCounter, 0, 0, 1);
    
    CATransformLayer *container = [CATransformLayer layer];
    container.frame = CGRectMake(0, 0, 320, 480);
    [self.view.layer addSublayer:container];

    [container addSublayer:self.view3Buttons.layer];
    transformer = CATransform3DTranslate(transformer, 0, 0, -10 * iAmAKClickCounter);
    container.transform = transformer;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
