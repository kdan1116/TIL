# SWIFT_28
## 오류처리
* 오류처리는 프로그램이 오류를 일으켰을 때 이것을 감지하고 회복시키는 일련의 과정 이다
* 스위프트의 오류처리 기능을 통해 시스템에서 발생한 오류를 처리할 수 있는 것이 아님을 명심해야 한다

### 오류의 표현
* 스위프트에서 오류는 Error라는 프로토콜을 준수하는 타입의 값을 통해 표현된다 (Error 프로토콜은 사실상 요구사항이 없는 빈 프로토콜일 뿐이지만, 오류를 표현하기 위한 타입은 이 프로토콜을 채택한다)
* 오류를 던저줄 때는 throw 구문을 사용한다

### 오류 포착 및 처리
* 오류를 던질 수도 있지만 오류가 던져지는 것에 대비하여 던져진 오류를 처리하기 위한 코드도 작성해야 한다
* 스위프트에는 오류를 처리하기 위한 네 가지 방법이 있다 ->
	* 함수에서 발생한 오류를 해당 함수를 호출한 코드에 알리는 방법
	* do-catch 구문을 이용하여 오류를 처리하는 방법
	* 옵셔널 값으로 오류를 처리하는 방법
	* 오류가 발생하지 않을 것이라고 확신하는 방법

### 함수에서 발생한 오류 알리기
* 함수가 오류를 던지면 프로그램의 흐름이 바뀔 가능성이 크다, 그러므로 어디서 오류를 던지고 받을 것인가 결정하는 것은 매우 중요하다
* try 키워드로 던져진 오류를 받을 수 있다 (try, try?, try!)
* 함수, 메서드, 이니셜라이저의 매개변수 뒤에 throws 키워드를 사용하면 해당 함수, 메서드, 이니셜라이저는 오류를 던질 수 있다
* throws는 함수나 메서드의 자체 타입에도 영향을 미칩니다, 즉 throws 함수나 메서드는 같은 이름의 throws가 명시되지 않는 함수나 메서드와 구분된다
* throws를 포함한 함수,메서드, 이니셜라이저는 throws 함수, 메서드, 이니셜라이저로 재정의 할 수 있다

### do-catch 구문을 이용하여 오류처리
* 함수, 메서드, 이니셜라이저 등에서 오류를 던져주면 오류 발생을 전달받은 코드 블록은 do-catch 구문을 사용하여 오류를 처리해주어야 한다
* do 절 내부의 코드에서 오류를 던지면 catch 절에서 오류를 전달 받아 적절하게 처리해주면 된다
* catch 절에서는 catch 키워드 뒤에 처리할 오류의 종류를 써준다

### 옵셔널 값으로 오류처리
* try? 를 사용하여 옵셔널 값으로 변환하여 오류를 처리할 수도 있다 (try? 표현을 통해 동작하던 코드가 오류를 던지면 그 코드의 반환 값은 nil이 된다)
* 반환 타입이 다른 타입이여도 try? 표현을 사용하면 반환 타입이 옵셔널이 된다

### 오류가 발생하지 않을 것이라고 확신하는 방법
* 코드를 작성하는 프로그래머가 오류를 던질 수 있는 함수 등을 호출할 때 오류가 절대로 발생하지 않을 것이라고 확신할 수 있는 상황이라면 오류가 발생하지 않을 것이라는 전제하에 try! 표현을 사용할 수 있다

### 다시던지기
* 함수나 메서드는 rethrows 키워드를 사용하여 자신의 매개변수로 전달받은 함수가 오류를 던진다는 것을 나타낼 수 있다
* rethrows 키워드를 사용하여 다시던지기가 가능하게 하려면 최소 하나 이상의 오류 발생 가능한 함수를 매개변수로 전달받아야 한다
* 다시던지기 함수 또는 메서드는 기본적으로 스스로 오류를 던지지 못한다, 하지만 catch 절 내부에서는 throw 구문을 작성할 수 있다
* 다시던지기 함수나 메서드가 오류를 던지는 함수를 do-catch 구문 내부에서 호출하고 catch 절 내부에서 다른 오류를 던짐으로써 오류를 던지는 함수에서 발생한 오류를 제어할 수 있다
* 다시던지기 내부의 catch 절에서는 다시던지기 함수의 매개변수로 전달받은 오류던지기 함수만 호출하고 결과로 던져진 오류만 제어할 수 있다
* 부모클래스의 던지기 메서드는 자식 클래스에서 다시던지기 메서드로 재정의할 수 있다
* 던지기 메서드는 다시던지기 메서드 요구에 부합하지만 다시던지기 메서드는 던지기 메서드 요구에 부합하지 못한다
* 부모클래스의 던지기 메서드는 자식클래스에서 다시던지기 메서드로 재정의할 수 있지만, 부모클래스의 다시던지기 메서드는 자식클래스의 던지기 메서드로 재정의할 수 없다

### 후처리 defer
* defer 구문을 사용하여 현재 코드 블록을 나가기 전에 꼭 실행해야 하는 코드를 작성해줄 수 있다
* defer 구문은 오류처리 상황뿐만 아니라, 함수, 메서드, 반복문, 조건문 등등 보통의 코드 블록 어디에서든 사용할 수 있다
* defer 구문은 현재 코드 범위를 벗어나기 전까지 실행을 미루고 있다가 프로그램 실행 흐름이 코드 범위를 벗어나기 직전에 실행된다
* defer 구문 내부에는 break, return 등과 같이 구분을 빠져나갈 수 있는 코드 또는 오류를 던지는 코드는 작성하면 안 된다
* 여러 개의 defer 구문이 하나의 범위 내부에 속해 있다면 맨 마지막에 작성된 구문부터 역순으로 실행된다
* do 구문을 catch 절과 함께 사용하지 않고 단독으로 사용할 수도 있다, 코드 블록 내부에 또 한 단계 하위의 블록을 만들고자 할 때