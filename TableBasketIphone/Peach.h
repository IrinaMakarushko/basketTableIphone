//
//  Peach.h
//  TableBasketIphone
//
//  Created by fpmi on 28.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

@interface Peach : Fruit

@property NSString* count;

-(id) init:(NSString*) name  country:(NSString*)country count:(NSString*)count;
-(NSString*) getInfo;
@end
