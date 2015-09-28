//
//  ViewController.h
//  TableBasketIphone
//
//  Created by fpmi on 28.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//



#import <UIKit/UIKit.h>
#import "Basket.h"

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property Basket * basket;
@end

