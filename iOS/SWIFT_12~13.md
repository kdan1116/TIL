# SWIFT_12~13
## 접근제어
* 객체지향 프로그래밍 패러다임에서 은닉화는 중요한 개념 중 하나이다, 이를 구현하기 위한 핵심 기능은 접근제어이다
* 접근제어는 코드끼리 상호작용을 할 때 파일 간 모듈 간에 접근을 제한할 수 있는 기능, 코드의 상세 구현은 숨기고 허용된 기능만 사용하는 인터페이스를 제공 할 수 있다

### 접근제어의 필요성
* 불필요한 접근으로 의도치 않은 결과를 초래하거나 꼭 필요한 부분만 제공을 해야하는데 전체 코드가 노출될 가능성이 있을 때 접근제어를 이용한다

### 모듈과 소스파일
* 모듈은 배포할 코드의 묶음 단위이다, 통상 하나의 프레임워크나 라이브러리 또는 애플리케이션이 모듈 단위가 될 수도 있다 (import 키워드)
* 소스파일은 하나의 스위프트 소스 코드 파일을 의미한다, 자바는 파일 하나에 타입을 하나만 정의하지만, 스위프트는 소스파일 하나에 여러 타입이나 함수 등 많은 것을 정의하고 구현할 수 있다

### 접근수준
* 접근제어는 접근수준 키워드를 통해 구현할 수 있다, 각 타입에 특정 접근수준을 지정할 수 있고, 타입 내부의 프로퍼티, 메서드, 이니셜라이저, 서브스크립트 각각에도 접근수준을 지정할 수 있다
* 접근수준을 명시할 수 있는 키워드는 다섯 가지가 있다 ->
* open => 모듈 외부, 클래스에서만 사용
* public => 모듈 외부
* internal => 모듈 내부
* fileprivate => 파일 내부
* private => 기능 정의 내부

### 공개 접근수준, public
* 자신이 구현된 소드 파일은 물론 그 소스파일이 속해 있는 모듈, 그 모듈을 가져다 쓰는 모듈 등 모든 곳에서 사용 할 수 있다
* public 접근 수준은 주로 프레임워크에서 외부와 연결된 인터페이스를 구현하는데 많이 쓰인다

### 개방 접근수준, open
* 클래스와 클래스의 멤버에서만 사용할 수 있다
* 개방 접근수준을 제외한 다른 모든 접근수준의 클래스 멤버는 해당 멤버가 정의된 모듈 안에서만 재정의할 수 있다
* 개방 접근 수준을 제외한 다른 모든 접근수준의 클래스가 정의된 모듈 안에서만 상속할 수 있다
* 개방 접근수준의 클래스는 그 클래스가 정의된 모듈 밖의 다른 모듈에서도 상속할 수 있다
* 개방 접근수준의 클래스 멤버는 해당 멤버가 정의된 모듈 밖의 다른 모듈에서도 재정의할 수 있다
* 클래스를 개방 접근수준으로 명시하는 것은 그 클래스를 다른 모듈에서도 부모클래스로 사용하겠다는 목적으로 클래스를 설계하고 코드를 작성했음을 의미한다

### 내부 접근수준, internal
* internal 키워드로 지정하는 내부 접근수준은 기본적으로 모든 요소에 암묵적으로 지정하는 기본 접근수준이다
* 내부 접근수준으로 지정된 요소는 소스파일이 속해 있는 모듈 어디에서든 쓰일 수 있다, 다만 그 모듈을 가져다 쓰는 외부 모듈에서는 접근할 수 없다
* 보통 외부에서 사용할 클래스나 구조체가 아니며, 모듈 내부에서 광역적으로 사용할 경우 내부 접근수준을 지정한다

### 파일외부비공개 접근수준, fileprivate
* 파일외부비공개 접근수준으로 지정된 요소는 그 요소가 구현된 소스파일 내부에서만 사용할 수 있다
* 해당 소스파일 외부에서 값이 변경되거나 함수를 호출하면 부작용이 생길 수 있는 경우에 사용하면 좋다

### 비공개 접근수준, private
* 비공개 접근수준으로 지정된 요소는 그 기능을 정의하고 구현한 범위 내에서만 사용할 수 있다
* 같은 소스파일 안에 구현한 다른 타입이나 기능에서도 사용할 수 없다

### 접근제어 구현 참고사항
* 모든 타입에 적용되는 접근수준의 규칙은 상위 요소보다 하위 요소가 더 높은 접근수준을 가질 수 없다
* 함수의 매개변수로 특정 접근수준이 부여된 타입이 전달되거나 반환된다면, 그 타입의 접근수준보다 함수의 접근수준이 높에 설정될 수 없다
* 함수뿐만 아니라 튜플의 내부 요소 타입 또한 튜플의 접근수준보다 같거나 높아야 한다
* 프레임워크를 만들 때는 다른 모듈에서 특정 기능에 접근할 수 있도록 API로 사용할 기능을 공개 접근 수준으로 지정해주어야 한다
* 열거형의 접근수준을 구현할 때 열거형 내부의 각 case 별로 따로 접근수준을 부여할 수는 없다
* 각 case의 접근 수준은 열거형 자체의 접근수준을 따른다
* 열거형의 원시 값 타입으로 열거형의 접근수준보다 낮은 접근수준의 타입이 올 수는 없다, 연관 값의 타입도 마찬가지이다

### private 와 fileprivate
* fileprivate 접근수준으로 지정한 요소는 같은 파일 어떤 코드에서도 접근할 수 있다
* private 접근수준으로 지정한 요소는 같은 파일 내부에 다른 타입의 코드가 있더라도 접근이 불가능하다 (익스텐션 코드가 같은 파일에 존재하는 경우에는 접근 가능하다)

### 읽기 전용 구현
* 요소의 접근수준 키워드 뒤에 set처럼 표현하면 설정자의 접근수준만 더 낮도록 지정해줄 수 있다

## 클로저
* 스위프트의 클로저는 람다와 유사하다
* 클로저는 일정 기능을 하는 코드를 하나의 블록으로 모아놓은 것을 말한다
* 클로저는 변수나 상수가 선언된 위치에서 참조를 획득하고 저장할 수 있다
* 클로저의 세 가지 형태 =>
	* 1. 이름이 있으면서 어떤 값도 획득하지 않는 전역함수 형태
	* 2. 이름이 있으면서 다른 함수 내부의 값을 획득할 수 있는 중첩된 함수의 형태
	* 3. 이름이 없고 주변 문맥에 따라 값을 획득할 수 있는 축약 문법으로 작성한 형태

* 클로저는 매개변수와 반환 값의 타입을 문맥을 통해 유추할 수 있기 때문에 매개변수와 반환 값의 타입을 생략 할 수 있다
* 클로저에 단 한 줄의 표현만 들어있다면 암시적으로 이를 반환 값으로 취급한다
* 축약된 전달인자 이름을 사용할 수 있다
* 후행 클로저 문법을 사용할 수 있다

## 기본 클로저
* 스위프트 표준 라이브러리에는 배열의 값을 정렬하기 위해 구현한 sorted(by:) 메서드가 있다
* 이 메서드는 클로저를 통해 어떻게 정렬할 것인가에 대한 정보를 받아 처리하고 결과값을 배열로 돌려준다, 단순히 정렬만 하기 때문에 입력 받은 배열의 타입과 크기가 동일하다
* 클로저도 함수와 마찬가지로 입출력 매개변수를 사용할 수 있다
* 매개변수 이름을 지정한다면 가변 매개변수 또한 사용이 가능하다
* 클로저는 매개변수 기본값을 사용할 수 없다

### 후행 클로저
* 클로저가 조금 길어지거나 가독성이 조금 떨어진다 싶으면 후행 클로저 기능을 사용하면 좋다

### 문맥을 이용한 타입 유추
* 메서드의 전달인자로 전달하는 클로저는 메서드에서 요구하는 형태로 전달해야 한다
* 전달인자로 전달하는 클로저를 구현할 때는 매개변수의 타입이나 반환 값의 타입을 굳이 표현해주지 않고 생략하더라도 문제가 없다

### 단축 인자 이름
* 단축 인자 이름은 첫 번째 전달인자부터 $0,$1,$2 … 순으로 $와 숫자의 조합으로 표현한다 (in키워드를 사용할 필요가 없어진다)

### 암시적 반환 표현
* 클로저에서는 return 키워드마저 생략할 수 있다, 클로저가 반환 값을 갖는 클로저이고 클로저 내부의 실행문이 단 한 줄이라면, 암시적으로 그 실행문을 반환 값으로 사용할 수 있다

### 연산자 함수
* 클로저는 매개변수의 타입과 반환 타입이 연산자를 구현한 함수의 모양과 동일하다면 연산자만 표기하더라도 알아서 연산하고 반환한다

### 값 획득
* 클로저는 자신이 정의된 위치의 주변 문맥을 통해 상수나 변수를 획득 할 수 있다
* 값 획득을 통해 클로저는 주변에 정의한 상수나 변수가 더 이상 존재하지 않더라도 해당 상수나 변수의 값을 자신 내부에서 참조하거나 수정할 수 있다
* 클로저는 비동기 작업에 많이 사용된다

### 클로저는 참조 타입
* 함수와 클로저는 참조 타입이다
* 함수나 클로저를 상수나 변수에 할당할 때마다 사실은 상수나 변수에 함수나 클로저의 참조를 설정하는 것이다
* 클로저의 참조를 다른 상수에 할당해준다면 이는 두 상수가 모두 같은 클로저를 가리킨다는 뜻이다

### 탈출 클로저
* 함수의 전달인자로 전달한 클로저가 함수 종료 후에 호출될 때 클로저가 함수를 탈출한다고 표현한다
* 정렬할 요소를 비교 연산하기 위해 전달인자로 전달하는 클로저는 비탈출 클로저이다
* 비탈출 클로저는 함수의 동작이 끝난 후 전달된 클로저가 필요 없을 때 사용한다
* 클로저가 함수를 탈출할 수 있는 경우 중 하나는 함수 외부에 정의된 변수나 상수에 저장되어 함수가 종료된 후에 사용할 경우이다
* 비탈출 클로저 내부에서 self 키워드는 선택 사항이다

### withoutActuallyEscaping
* 비탈출 클로저를 탈출 클로저처럼 사용할 수 있게하는 키워드

### 자동 클로저
* 함수의 전달인자로 전달하는 표현을 자동으로 변환해주는 클로저를 자동 클로저라고 한다
* 자동 클로저는 전달인자를 갖지 않는다, 자동 클로저는 호출되었을 때 자신이 감싸고 있는 코드의 결과값을 반환한다
* 자동 클로저는 클로저가 호출되기 전까지 클로저 내부의 코드가 동작하지 않는다, 따라서 연산을 지연시킬 수 있다
* 자동 클로저는 전달인자를 갖지 않기 때문에 반환 타입의 값이 자동 클로저의 매개변수로 전달되면 이를 클로저로 바꿔줄 수 있다
* 자동 클로저를 사용하면 기존의 사용 방법처럼 클로저를 전달인자로 넘겨줄 수 없다