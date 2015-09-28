//
//  Fruit.m
//  TableBasketIphone
//
//  Created by fpmi on 28.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit

-(id) initWithParams:(NSString*) name  country:(NSString*)country {
    self = [super init];
    if(self){
        _name=name;
        _country = country;
    }
    return  self;
}

-(NSString*) getInfo{
    NSMutableString* newInfo2 =[NSMutableString stringWithString:@"Name: " ];
    [newInfo2 appendString:_name];
    
    NSMutableString* newInfo =[NSMutableString stringWithString:@" Country: " ];
    [newInfo appendString:_country];
    
    NSMutableString* info= [NSMutableString stringWithString:[NSString stringWithFormat: @"%@\n",newInfo2]];
    [info appendString:[NSString stringWithFormat: @"%@\n",newInfo]];

   return [NSString stringWithString:info];
}

@end