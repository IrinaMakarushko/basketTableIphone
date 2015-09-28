//
//  Orange.m
//  TableBasketIphone
//
//  Created by fpmi on 28.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//
#import "Orange.h"

@implementation Orange

-(id) init:(NSString*) name  country:(NSString*)country size:(NSString*)size{
    self = [super initWithParams:name country:country];
    if(self){
        self.size = size;
    }
    return  self;
}

-(NSString*) getInfo{
    NSMutableString* info= [NSMutableString stringWithString:[super getInfo]];
    [info appendString:@" Size: "];
    [info appendString:_size];
    return [NSString stringWithString:info];
}
@end