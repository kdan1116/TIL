# Ch_3
### 상수 (literal)
* 표현되는 데이터는 상수 아니면 변수
* 메모리 공간에 저장, 이름이 존재 하지 않으니 값의 변경이 불가, 존재 의미가 없어지면 바로 소멸.
* 정수형 상수 - 기본적으로 int형 ( 4 byte ) 
* 실수형 상수 - 기본적으로 double형 ( 8 byte )
* 접미사를 이용한 상수표현방식
* long num1 = 100000000000L(소문자 가능); //접미사 L은 long형 상수 표현
* float num2 = 12.45F(소문자 가능); //접미사 F는 float형 상수 표현 

### 자료형의 변환 (형 변환에 사용되는 소괄호는 구분자가 아닌 연산자이다.)
* CPU는 하나의 연산에 사용되는 두 피연산자의 자료형이 다를 경우, 연산 불가.

#### 자동 형 변환 ( Implicit Conversion ) 규칙 
(값의 표현 범위에 따라)
* byte -> short -> int -> long -> float -> double
*                char ->

#### 명시적 형 변환 (Explicit Conversion)
*  자동 형 변환 발생 지점을 표시, 자동 형 변환의 규칙에 위배되지만 변환이 필요한 상황.
