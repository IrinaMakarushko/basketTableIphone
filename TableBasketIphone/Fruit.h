//
//  Fruit.h
//  TableBasketIphone
//
//  Created by fpmi on 28.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fruit : NSObject

@property NSString* name;
@property NSString* country;

-(id) initWithParams:(NSString*) name  country:(NSString*)country;
-(NSString*) getInfo;

@end
