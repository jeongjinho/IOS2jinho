//
//  main.m
//  DimensionalShapesClass
//
//  Created by 진호정 on 2016. 9. 26..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CaculotorShapes.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        CaculotorShapes *caculator = [[CaculotorShapes alloc] init];
        
        [caculator squareArea:3];
        [caculator squarePerimeter:3];
        [caculator circleCircumference:3];
        [caculator triangleWithHorizontal:2 height:3];
        [caculator sphere:1];
        [caculator rectangleAreaWithHorizontal:1 vertical:2];
        [caculator circleArea:2];
        [caculator circleCircumference:5];
        [caculator trapeoidWithBigSide:5 smallSide:2 height:2];
        [caculator rectangularSolidWithHorizontal:2 vertical:3 height:4];
        [caculator circleCylinderWithRadius:1 height:2];
        [caculator rectanglePerimterWithHorizontal:2 vertical:3];
        [caculator coneWithRadius:5 height:3];
        [caculator cube:2];
    }
    return 0;
}
