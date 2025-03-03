#  Android-ConstraintLayout Example 
## 정렬
![](Android-ConstraintLayout%20Example/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202019-07-29%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%201.52.44.png)


```
android:layout_width=“wrap_content”
android:layout_height=“wrap_content”
app:layout_constraintLeft_toLeftOf=“parent”
app:layout_constraintRight_toRightOf=“parent”
app:layout_constraintHorizontal_bias=“0.5”
app:layout_constraintVertical_bias=“0.5”
```

* ConstraintLayout은 뷰의 위치를 다른 뷰에 상대적으로 지정하게 된다
* 좌우상하로 Constraint 를 정의하면 가운데로 정렬된다
* bias를 통해서 정렬되는 위치를 정할 수 있다

## Centering positioning (중앙 배치)
*  layout_constraintLeft_toLeftOf,  layout_constraintRight_toRightOf 를 둘다 parent 로 설정하면 View가 중앙정렬이 된다

* bias 라는 속성으로 이미 정렬된 View를 한쪽으로 치우치게 만들 수도 있다

## 원형 배치
![](Android-ConstraintLayout%20Example/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202019-07-29%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%202.53.50.png)


```
<Button
        android:id=“@+id/buttonA”
        android:layout_width=“wrap_content”
        android:layout_height=“wrap_content”
        android:text=“@string/buttonA”
        app:layout_constraintLeft_toLeftOf=“parent”
        app:layout_constraintRight_toRightOf=“parent”
        app:layout_constraintBottom_toBottomOf=“parent”
        app:layout_constraintTop_toTopOf=“parent”
/>
<Button
        app:layout_constraintCircle=“@id/buttonA”
        app:layout_constraintCircleRadius=“100dp”
        app:layout_constraintCircleAngle=“40”
        android:id=“@+id/buttonB”
        android:layout_width=“wrap_content”
        android:layout_height=“wrap_content”
        android:text=“@string/buttonB”
        app:layout_constraintLeft_toLeftOf=“parent”
        app:layout_constraintRight_toRightOf=“parent”
/>
```

* 하나의 View 중점을 기준으로 다른 View의 중점을 배치할 수 있다
* 각도와 거리의 값이 필요하며 뷰가 배치됭 수 있는 곳을 이으면 원이 된다

## Demension Constraints
![](Android-ConstraintLayout%20Example/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202019-07-29%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%203.58.16.png)

```
android:minWidth: 최소 가로 길이
android:minHeight :최소 세로 길이
android:maxWidth : 최대 가로 길이
android:maxHeight : 최대 세로 길이
```

* max와 min을 사용하면 크기를 제한할 수 있다

```
app:layout_constrainedWidth=”true|false”
app:layout_constrainedHeight=”true|false”
```

* 이 방법으로 제한을 주고 싶다면 ConstraintLayout 내에서 WRAP_CONTENT와 함께 사용하면 크기를 제한할 수 있다

![](Android-ConstraintLayout%20Example/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202019-07-29%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%204.06.10.png)

## Chains
*  두개의 뷰가 서로 연결되어 있을 경우 Chain이 생성된다
* 여러 뷰끼리 묶어서 처리하고 싶을 때 유용하다

* chain은 뷰간의 상호 참조 연결을 할때 어떤 방식으로 연결시켜 표현할지 결정한다
* 수평기준 가장 왼쪽에 있는 View 또는 수직 기준으로 가장 상단에 있는 View가 Head(기준)가 된다

![](Android-ConstraintLayout%20Example/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202019-07-25%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%205.09.00.png)

![](Android-ConstraintLayout%20Example/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202019-07-29%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%204.23.32.png)

## Margins (여백)
* 만약 여백을 주고 싶다면 margin을 이용하면 된다
* 여백에 들어가는 값은 오직 0 또는 양수값만 적용할 수 있다

## Barrier
![](Android-ConstraintLayout%20Example/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202019-07-29%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%205.42.53.png)

```
<androidx.constraintlayout.widget.Barrier
  android:layout_width="wrap_content"
  android:layout_height="wrap_content"
  app:barrierDirection="end"
  app:barrierMargin="16dp"
  app:constraint_referenced_ids="button1,button2"/>
```

## Guideline
![](Android-ConstraintLayout%20Example/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202019-07-31%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%202.22.13.png)

* 가이드라인을 사용하면 화면을 그릴 때 더 편안하게 만들 수 있다