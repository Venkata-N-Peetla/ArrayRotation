//
//  ViewController.m
//  ArrayRotation
//
//  Created by Venkata Narasimham Peetla on 2/16/18.
//  Copyright © 2018 PEETLA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Roted array %@", [self leftRotationOfAnArray:@[@1, @2, @3, @4, @5, @6, @7, @8, @9] byRotationTimes:4]);

    NSLog(@"Roted array %@", leftRotationOfAnArray(@[@1, @2, @3, @4, @5, @6, @7, @8, @9], 4));

//    [self leftRotationOfAnArray:@[@1, @2, @3, @4, @5, @6, @7, @8, @9] byRotationTimes:4];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

NSArray<NSNumber *> *leftRotationOfAnArray(NSArray<NSNumber *> *inputArray, NSUInteger rotationTimes) {
    NSMutableArray *rotatedArray = [NSMutableArray array];
    /* To get the starting point of rotated array */
    NSUInteger mod = rotationTimes % inputArray.count;
    for (int i = 0; i < inputArray.count; i++) {
        rotatedArray[i] = inputArray[(mod+i) % inputArray.count];
    }

    return [rotatedArray copy];
}

- (NSArray *)leftRotationOfAnArray:(NSArray<NSNumber *> *)inputArray byRotationTimes:(NSUInteger)rotationTimes {
    NSMutableArray *rotatedArray = [NSMutableArray array];
    /* To get the starting point of rotated array */
    NSUInteger mod = rotationTimes % inputArray.count;
    for (int i = 0; i < inputArray.count; i++) {
        rotatedArray[i] = inputArray[(mod+i) % inputArray.count];
    }

    return [rotatedArray copy];
}

@end
