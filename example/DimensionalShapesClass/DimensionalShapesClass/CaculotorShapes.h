//
//  CaculotorShapes.h
//  DimensionalShapesClass
//
//  Created by 진호정 on 2016. 9. 26..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *@version 0.1
 *@author  jinho
 *@brief 각종 도형의 부피,넓이,둘레 등을 구하는 메서드를 가지고 있는 도형계산기클래스   
 *@param oneSide 한변의 길이
 *@param horizontal 가로
 *@param vertical  세로
 *@param radius   반지름
 *@param bigSide  큰 변의 길이
 *@param smallSide 작은 변의 길이
 
 */


@interface CaculotorShapes : NSObject


//사각형의 넓이를 구하는 메서드
- (NSUInteger)squareArea:(NSUInteger)oneSide;
//사각형의 둘레 구하는 메서드
- (NSUInteger)squarePerimeter:(NSUInteger)oneSide;
//직사각형 넓이 구하는 메서드
- (NSUInteger)rectangleAreaWithHorizontal:(NSUInteger)horizontal vertical:(NSUInteger)vertical;
//직사각형 둘레 구하는 메서드
- (NSUInteger)rectanglePerimterWithHorizontal:(NSUInteger)horizontal vertical:(NSUInteger)vertical;
//원넓이 구하는 메서드
- (CGFloat)circleArea:(NSInteger)radius;
//원둘레 구하는 메서드
- (CGFloat)circleCircumference:(NSInteger)radius;
//삼각형넓이 구하는 메서드
- (CGFloat)triangleWithHorizontal:(NSUInteger)horizontal height:(NSInteger)height;
//마름모넓이 구하는 메서드
- (CGFloat)trapeoidWithBigSide:(NSUInteger)bigSide smallSide:(NSInteger)smallSide height:(NSInteger)height;
//큐브의 부피를 구하는 메서드
- (CGFloat)cube:(NSInteger)oneSide;
//직사각형큐브의 부피를 구하는 메서드
- (CGFloat)rectangularSolidWithHorizontal:(NSInteger)horizontal vertical:(NSUInteger)vertical height:(NSInteger)height;
//원기둥의 부피를 구하는 메서드
- (CGFloat)circleCylinderWithRadius:(NSUInteger)radius height:(NSUInteger)height;
//구의 부피를 구하는 메서드
- (CGFloat)sphere:(NSUInteger)radius;
//원뿔의 부피를 구하는메서드
- (CGFloat)coneWithRadius :(NSUInteger)radius height:(NSInteger)height;


@end
