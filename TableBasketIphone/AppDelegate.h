//
//  AppDelegate.h
//  TableBasketIphone
//
//  Created by fpmi on 28.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Basket.h"
#import "Fruit.h"
#import "Orange.h"
#import "Apple.h"
#import "Peach.h"
#import "Pear.h"



@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property Basket * basket;

@end

