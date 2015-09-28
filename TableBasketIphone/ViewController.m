//
//  ViewController.m
//  TableBasketIphone
//
//  Created by fpmi on 28.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"


@interface ViewController ()

@end

@implementation ViewController{
    NSArray *  tableData;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional
    
    AppDelegate * appdelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.basket = appdelegate.basket;
    
    Iterator * iterator = [self.basket getIterator];
    tableData = [[NSMutableArray alloc]init];
    NSMutableArray * data = [[NSMutableArray alloc]init];
    while([iterator hasNext]){
        Fruit * fruit = [iterator getNext];
        [data addObject:fruit.name];
    }
    tableData  = [NSArray arrayWithArray:data];


}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* info = [[self.basket.fruitList objectAtIndex:indexPath.row]getInfo];
    
    UIAlertView *messageAlert = [[UIAlertView alloc]
                                 initWithTitle:@"Row Selected" message:info delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    // Display Alert Message
    [messageAlert show];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
