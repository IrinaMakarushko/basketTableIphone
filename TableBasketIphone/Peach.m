//
//  Peach.m
//  TableBasketIphone
//
//  Created by fpmi on 28.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Peach.h"

@implementation Peach

-(id) init:(NSString*) name  country:(NSString*)country count:(NSString*)count{
    self = [super initWithParams:name country:country];
    if(self){
        self.count = count;
    }
    return  self;
}

-(NSString*) getInfo{
    NSMutableString* info= [NSMutableString stringWithString:[super getInfo]];
    [info appendString:@" Count: "];
    [info appendString:_count];
    return [NSString stringWithString:info];
}

@end
