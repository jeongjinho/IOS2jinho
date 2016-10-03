View

	UI 구성할 때 가장 기본적인 클래스 대부분의 View모음 로 UI가 구성된게 많으니 ,기본적인 View의 구성을 알아보자



먼저 기본적인 프로퍼티들을 알아 보자

UIView *view  하나 만들어져있다고 가정하고,

###frame
  view.frame을 하면  size와 origin이 나온다 . 
origin에서  . 을 붙여 접근을 하면 x,y의 프로퍼티에 접근 할 수 있다.   

```
x ; view의 현재 x좌표점을 리턴한다.
y : view의 현재 y좌표점을 리턴한다.
```
<br>
size에 . 을 붙이면  height와width가 나온다,

```
height :  현재 view의 세로길이를 리턴한다.
width  :  현재 view의  가로길이를 리턴한다.
```

###bounds

frame과 비슷한 프로퍼티로써    origin은 구할 수 없고 size만 구할 수 있다.

```
height :  현재 view의 세로길이를 리턴한다.
width  :  현재 view의  가로길이를 리턴한다.
```


###center
view.center로 접근한다 .  center . 을 하면 x,y가나온다.

```
x ; view의 정중앙 x좌표점을 리턴한다.
y : view의 정중앙 y좌표점을 리턴한다.
```


###transform

외형을 변경시키기 위한 프로퍼티이다.
```objectivec
	view.transForm = CGAffineTransFormMakeScale(scale,scale);
```
 
 view의 비율을  입력받아 scale값으로 변경 시킬 수 있다.
 하지만 절대적이기때문에 상대적 방법으로 사용할 수는 없다.

```objectivec
view.transform = CGAffineTransformScale(view.transform, deltaScale, deltaScale);
```
현재  transform의 상태와  기존값에대한 변위 scale값을 입력받는다.  하지만 뷰상태의 scale 값을 얻기 어렵기때문에 다음과 방법을 쓴다.
```objectivec
 view.layer.transform = CATransform3DMakeScale(scale, scale, 1);
 
view.layer.transform = CATransform3DScale(view.layer.transform, deltaScale, deltaScale, 1);
```
이런식으로 위에 두개로 아래두개로 대체해서 쓸 수있다.

여기서는  valueForKeyPath로 기존값의 변위를 구할 수있다.
```objectivec
CGFloat scale = [[view.layer valueForKeyPath:@"transform.scale.x"] floatValue];
```


##메서드


- (void)addSubview:(UIView *)view;


: 만약   view에  subView를 올리면  subView가 생성될때  (0.0,50,50)위치에 생성되도록했다면 그것은 메인뷰의 기준이아닌 view 기준으로  잡히게된다.

예시

```objectivec
	UIView *view = [[UIView alloc] initWithFrame :CGRect(50,40,60,80)];//view를생성
[self.view addSubview:view];//메인뷰 위에 subview로 올림

UIView *secondView = [[UIView alloc] initWithFrame :CGRect(30,30,50,40)];/secondView생성

[view addSubview:secondView];// view위에 second View를 올린다. 30,30.50,40은 view의 50,40,60,80을 0,0,view의 가로,세로를 기준로한다.
```


그림

![Alt text](./스크린샷 2016-10-02 오후 8.16.22.png)

그림을 보자면 메인뷰의 x,y는 (0.0)이다.  여기서 subView로 올리면 (0.0)기준으로 (40,40)으로 좌표점이 옮겨지게된다.
이제 secondView를  view위에 올린다하면  view가  secondView입장에서 메인뷰가되는 것이니  (0,0)에서 (30,30)으로 가게된다. 
하지만 메인뷰에서 보면 0에서40에서만들어 졌으므로  secondView는 40에서 30 더   간 거리만큼 좌표점에 찍히게 된다.


결론  
```
  올리고싶은  UIVeiw기준으로  위치를 잡게된다.
   
```





