//
//  Orange.h
//  TableBasketIphone
//
//  Created by fpmi on 28.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

@interface Orange : Fruit

@property NSString* size;


-(id) init:(NSString*) name  country:(NSString*)country size:(NSString*)size;
@end

