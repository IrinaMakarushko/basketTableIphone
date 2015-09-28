//
//  Apple.m
//  TableBasketIphone
//
//  Created by fpmi on 28.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Apple.h"

@implementation Apple

-(id) init:(NSString*) name  country:(NSString*)country color:(NSString*)color{
    self = [super initWithParams:name country:country];
    if(self){
        self.color = color;
    }
    return  self;
}

-(NSString*) getInfo{
    NSMutableString* info= [NSMutableString stringWithString:[super getInfo]];
    
    NSMutableString* newInfo =[NSMutableString stringWithString:@" Color: " ];
    [newInfo appendString:_color];
   
    [info appendString:[NSString stringWithFormat: @"%@\n",newInfo]];
    return [NSString stringWithString:info];
}

@end