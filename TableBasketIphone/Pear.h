//
//  Pear.h
//  TableBasketIphone
//
//  Created by fpmi on 28.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"
@interface Pear : Fruit

@property NSString* color;
-(id) init:(NSString*) name  country:(NSString*)country color:(NSString*)color;
-(NSString*) getInfo;
@end
