//
//  ViewController.m
//  SafetyArrayDemo
//
//  Created by Artron_LQQ on 16/2/27.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "ViewController.h"
#import "NSArray+SafetyArray.h"
//#import "NSMutableArray+SafetyArray.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *array = @[@"a",@"d",@"f",@"g",@"t"];
    
    //数组越界,但是不会crash
    for (int i = 0; i < 10; i++) {
        NSLog(@"array >>> %@",[array objectAtIndex:i]);
    }
    
    for (int i = 0; i < 10; i++) {
        NSLog(@"A222 >>> %@",[array lqqNew_objectAtIndex:i]);
    }
    
    
    NSMutableArray *mArray = [[NSMutableArray alloc]initWithArray:array];
    NSString *str = nil;
    
    //添加空值,不会crash
    [mArray addObject:str];
    [mArray lqqNew_addObject:str];
    
    //可变数组越界,但是不会crash
    for (int i = 0; i < 10; i++) {
        NSLog(@"mArray >>> %@",[mArray objectAtIndex:i]);
    }
    
    for (int i = 0; i < 10; i++) {
        NSLog(@"mArray22 >>> %@",[mArray lqqNew_objectAtIndex:i]);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
