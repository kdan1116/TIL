# SWIFT_25
## 패턴
* 패턴은 단독 또는 복합 값의 구조를 나타내는 것, 패턴 매칭은 코드에서 어떤 패턴의 형태를 찾아내는 행위라고 할 수 있다
* 대부분의 패턴은 switch, if, guard, for 등의 키워드와 아주 친하며 두 개 이상의 키워드가 합을 이뤄 동작한다

### 스위프트의 패턴은 크게 두 종류로 나뉜다
* 값을 해체 (추출) 하거나 무시하는 패턴 = 와일드카드 패턴, 식별자 패턴, 값 바인딩 패턴, 튜플 패턴
* 패턴 매칭을 위한 패턴 = 열거형 케이스 패턴, 옵셔널 패턴, 표현 패턴, 타입캐스팅 패턴

### 와일드카드 패턴
* 와일드카드 식별자 (_)를 사용한다는 것은 이 자리에 올 것이 무엇이든간에 상관하지 말라는 뜻이다
* 와일드카드 식별자가 위치한 곳의 값은 무시한다

### 식별자 패턴
* 식별자 패턴은 변수 또는 상수의 이름에 알맞은 값을 어떤 값과 매치시키는 패턴을 말한다
* 경우에 따라서 식별자 패턴은 값 바인딩 패턴의 일종이라 할 수 있다

### 값 바인딩 패턴
* 값 바이니딩 패턴은 변수 또는 상수의 이름에 매치된 값을 바인딩하는 것이다
* 값 바인딩 해턴의 일종인 식별자 패턴은 매칭되는 값을 새로운 이름의 변수 또는 상수에 바인딩 한다

### 튜플 패턴
* 튜플 패턴은 소괄호 () 내에 쉽표로 분리하는 리스트이다
* 튜플 패턴을 for-in 구문 또는 변수나 상수 선언에서 사용한다면 와일드카드 패턴, 식별자 패턴, 옵셔널 패턴, 또 다른 패턴 등을 함께 사용할 수 있다

### 열거형 케이스 패턴
* 열거형 케이스 패턴은 값의 열거형 타입의 case 와 매치시킨다
* 열거형 케이스 패턴은 switch 구문의 case 레이블과 if, while, guard, for - in 구문의 case 조건에서 볼 수 있다

### 옵셔널 패턴
* 옵셔널 패턴은 옵셔널 또는 암시적 추출 옵셔널 열거형에 감싸져 있는 값을 매치시킬 때 사용한다
* 옵셔널 패턴은 식별자 패턴 뒤에 물음표를 넣어 표기하며 열거형 케이스 패턴과 동일한 위치에 자리한다
* 옵셔널 패턴은 옵셔널 값을 저장하는 배열의 for-in 구문을 통한 순환에서 nil 이 아닌 값을 찾는 데도 유용하게 쓰인다

### 타입캐스팅 패턴
* 타입캐스팅 패턴에는 is 패턴과 as 패턴이 있다, is 패턴은 switch의 case 레이블에서만 사용할 수 있다
* is 패턴은 is (TYPE_NAME)과 같이 쓸 수 있고 as 패턴은 SomePattern as (TYPE_NAME)과 같이 쓸 수 있다
* is 우측에 쓰여진 타입 또는 그 타입의 자식클래스 타입이면 값과 매치시킨다
* as 우측에 쓰여진 타입 또는 그 타입의 자식클래스 타입이면 값과 매치시킨다

### 표현 패턴
* 표현 패턴은 표현식의 값을 평가한 결과를 이용하는 것, switch 구문의 case 레이블에서만 사용할 수 있다
* 표현 패턴은 스위프트 표준 라이브러리의 패턴 연산자인 ~= 연산자의 연산 결과가 true를 반환하면 매치시킨다
* 표현 패턴은 정수값과 정수의 범위를 나타내는 Range 객체와 매치시킬 수도 있다
* 표현 패턴을 이용하여 ~= 연산자를 중복 정의하거나 ~= 연산자를 새로 정의하거나 또는 자신이 만든 타입에 ~= 연산자를 구현해준다면 자신이 원하는대로 패턴을 완성시킬 수 있다
* 표현 패턴은 프로토콜과 제네릭을 더해 특정 프로토콜을 따르는 타입에 대해서 원하는 패턴을 만들 수 있다