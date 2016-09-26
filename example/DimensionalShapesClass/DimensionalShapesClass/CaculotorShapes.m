//
//  CaculotorShapes.m
//  DimensionalShapesClass
//
//  Created by 진호정 on 2016. 9. 26..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "CaculotorShapes.h"

@implementation CaculotorShapes

//사각형의 넓이를 구하는 메서드
- (NSUInteger)squareArea:(NSUInteger)oneSide
{
    NSUInteger area = oneSide*oneSide;
    NSLog(@"area : %ld",area);
    return area;
}
//사각형의 둘레 구하는 메서드
-(NSUInteger)squarePerimeter:(NSUInteger)oneSide{

    NSUInteger perimeter = 4*oneSide;
    NSLog(@"perimeter : %ld",perimeter);
    return perimeter;
}

//직사각형 넓이 구하는 메서드
- (NSUInteger)rectangleAreaWithHorizontal:(NSUInteger)horizontal vertical:(NSUInteger)vertical{

    NSUInteger area =horizontal*vertical;
    NSLog(@"area : %ld",area);

    return area;
}



//직사각형 둘레 구하는 메서드
- (NSUInteger)rectanglePerimterWithHorizontal :(NSUInteger)horizontal vertical:(NSUInteger)vertical{

    NSInteger perimeter = (2*horizontal) +(2*vertical);
    NSLog(@"perimeter : %ld",perimeter);

    return perimeter;
}



//원넓이 구하는 메서드
- (CGFloat)circleArea:(NSInteger)radius{

    CGFloat area =3.14*(CGFloat)radius*radius;
    NSLog(@"area : %lf",area);

    return area;
}

//원둘레 구하는 메서드
- (CGFloat)circleCircumference:(NSInteger)radius{
    
    CGFloat circumference= 2*3.14*(CGFloat)radius;
    NSLog(@"circumference : %lf",circumference);

    return circumference;
}


//삼각형넓이 구하는 메서드
- (CGFloat)triangleWithHorizontal:(NSUInteger)horizontal
                           height:(NSInteger)height{

    CGFloat area =(CGFloat)(horizontal*height)/2;
    NSLog(@"area : %lf",area);

    return area;
}


//마름모넓이 구하는 메서드
- (CGFloat)trapeoidWithBigSide:(NSUInteger)bigSide smallSide:(NSInteger)smallSide height:(NSInteger)height{


    CGFloat area =(CGFloat)((smallSide+bigSide)*height)/2;

    NSLog(@"area = %lf",area);

    return area;
}

//큐브의 부피를 구하는 메서드
- (CGFloat)cube:(NSInteger)oneSide{

    CGFloat volume=oneSide>>3;
    NSLog(@"volume : %lf",volume);

    return volume;
}

//직사각형큐브의 부피를 구하는 메서드
- (CGFloat)rectangularSolidWithHorizontal:(NSInteger)horizontal vertical:(NSUInteger)vertical height :(NSInteger)height{

    CGFloat volume = (CGFloat)(horizontal*vertical*height);
    NSLog(@"volume : %lf",volume);

    return volume;
}

//원기둥의 부피를 구하는 메서드
- (CGFloat)circleCylinderWithRadius:(NSUInteger)radius height:(NSUInteger)height{

    CGFloat volume =3.14*(CGFloat)(radius*radius*height);
    NSLog(@"volume : %lf",volume);

    return volume;
}

//구의 부피를 구하는 메서드
- (CGFloat)sphere:(NSUInteger)radius{

    CGFloat volume = ((CGFloat)(radius*radius*radius)*4*3.14)/3;
    NSLog(@"volume : %lf",volume);

    return volume;
}

//원뿔의 부피를 구하는메서드
- (CGFloat)coneWithRadius:(NSUInteger)radius height:(NSInteger)height{

    CGFloat volume= (3.14*(CGFloat)(radius*radius*height))/3;
    NSLog(@"volume : %lf",volume);

    return volume;
}
@end
