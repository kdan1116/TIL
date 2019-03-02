#  SWIFT_19~20
## 타입캐스팅
* 다른 프로그래밍 언어에서 대부분 지원하는 암시적 데이터 타입 변환은 지원하지 않는다

### 기존 언어의 타입 변환과 스위프트의 타입 변환
* 기존 값을 전달인자로 받는 이니셜라이저를 통해 새로운 Int 구조체의 인스턴스를 생성한다, 스위프트에서는 이를 타입캐스팅이라 하지 않는다
* 적절하지 못한 매개변수가 전달된다면 새로운 인스턴스가 생성되지 않을 수 있다

### 스위프트 타입캐스팅
* 스위프트에서는 다른 언어의 타입 변환 혹은 타입캐스팅을 이니셜라이저로 단순화했다
* 스위프트의 타입 캐스팅은 인스턴스의 타입을 확인하거나 자신을 다른 타입의 인스턴스인양 행세할 수 있는 방법으로 사용할 수 있다
* 스위프트의 타입캐스팅은 is 와 as 연산자로 구현한다, 이 두 연산자로 값의 타입을 확인하거나 다른 타입으로 전환 할 수 있다, 또한 타입캐스팅을 통해 프로토콜을 준수하는지도 확인해볼 수 있다

### 데이터 타입 확인
* 타입 확인 연산자인 is를 사용하여 인스턴스가 어떤 클래스의 인스턴스인지 타입을 확인해볼 수 있다
* is 연산자는 클래스의 인스턴스뿐만 아니라 모든 데이터 타입에 사용할 수 있다
* 메타 타입 타입을 이용하면 타입을 확인해 볼 수 있다
* 메타 타입 타입은 타입의 타입을 뜻한다, 클래스 타입 구조체 타입, 열거형 타입, 프로토콜 타입 등의 타입의 타입이다, 즉 타입 자체가 하나의 타입으로 또 표현할 수 있다
* 클래스, 구조체, 열거형의 이름은 타입의 이름이다, 그 타입의 이름 뒤에 .Type을 붙이면 이는 메타 타입을 나타내는 것이다
* 프로토콜 타입의 메타 타입은 .Protocol이라고 붙이면 된다
* self를 사용해서 타입을 값처럼 표현할 수도 있다
* .self 표현은 값 뒤에 써주면 그 값 자신을, 타입 이름 뒤에 써주면 타입을 표현하는 값을 반환한다

### 다운캐스팅
* 클래스의 상속 모식도에서 자식클래스보다 더 상위에 있는 부모클래스의 타입을 자식클래스의 타입으로 캐스팅하는 것을 다운캐스팅이라 한다
* 타입캐스트 연산자에는 as?와 as! 두 가지가 있다
* 타입캐스트 연산자를 사용하여 자식클래스 타입으로 다운캐스팅할 수 있다
* 컴파일러가 다운캐스팅을 확신할 수 있는 경우에는 as? 나 as! 대신 as를 사용할 수도 있다
* 캐스팅은 실제로 인스턴스를 수정하거나 값을 변경하는 작업이 아니다, 단지 어떤 타입으로 다루고 어떤 타입으로 접근해야 할지 판단할 수 있도록 힌트를 주는 것이다

### Any, AnyObject의 타입캐스팅
* Any는 함수 타입을 포함한 모든 타입을 뜻하고, AnyObject는 클래스 타입만을 뜻한다
* Any는 함수, 구조체, 클래스, 열거형 등 모든 타입의 인스턴스를 의미할 수 있다

## 프로토콜
* 스위프트는 프로토콜 지향 프로그래밍으로 볼 수 있다
* 프로토콜은 특정 역할을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진을 정의한다
* 구조체, 클래스, 열거형은 프로토콜을 채택해서 특정 기능을 실행하기 위한 프로토콜의 요구사항을 실제로 구현할 수 있다
* 프로토콜은 정의를 하고 제시를 할 뿐 스스로 기능을 구현하지는 않는다

### 프로토콜 정의
* 구조체, 클래스, 열거형 등에서 프로토콜을 채택하려면 타입 이름 뒤에 : 을 붙여준 후 채택할 프로토콜 이름을 , 로 구분하여 명시한다

### 프로토콜 요구사항
* 프로토콜은 타입이 특정 기능을 실행하기 위해 필요한 기능을 요구한다, 프로토콜이 자신을 채택한 타입에 요구하는 사항은 프로퍼티나 메서드와 같은 기능들이다

### 프로퍼티 요구
* 프로토콜은 자신을 채택한 타입이 어떤 프로퍼티를 구현해야 하는지 요구할 수 있다, 하지만 프로토콜은 그 프로퍼티의 종류 (연산, 저장) 는 따로 신경 쓰지 않는다
* 프로토콜을 채택한 타입은 프로토콜이 요구하는 프로퍼티의 이름과 타입만 맞도록 구현해주면 된다, 다만 읽기 전용인지 쓰기 전용인지는 프로토콜이 정해야 한다
* 프로토콜의 프로퍼티 요구사항은 var 키워드를 사용한 변수 프로퍼티로 정의한다
* 읽기와 쓰기가 모두 가능한 프로퍼티는 정의 뒤에 { get set } 을 명시
* 읽기 전용 프로퍼티는 정의 뒤에 { get } 을 명시
* 프로토콜이 읽고 쓰기가 가능한 프로퍼티를 요구한다면 읽기만 가능한 상수 저장 프로퍼티 또는 읽기 전용 연산 프로퍼티를 구현할 수 없다
* 프로토콜이 읽기 가능한 프로퍼티를 요구한다면 타입에 프로퍼티를 구현할 때 상수 저장 프로퍼티나 읽기 전용 연산 프로퍼티를 포함해서 어떤 식으로든 프로퍼티를 구현할 수 있다
* 타입 프로퍼티를 요구하려면 static 키워드를 사용한다
* 클래스의 타입 프로퍼티에는 상속 가능한 타입 프로퍼티인 class 타입 프로퍼티와 상속 불가능한 static 타입 프로퍼티가 있다, 하지만 이 두 타입 프로퍼티를 따로 구분하지 않고 모두 static 키워드를 사용하여 타입 프로퍼티를 요구하면 된다

### 메서드 요구
* 프로토콜은 특정 인스턴스 메서드나 타입 메서드를 요구할 수 있다
* 프로토콜이 요구할 메서드는 프로토콜 정의에서 작성한다
* 메서드의 실제 구현부인 중괄호 부분은 제외하고 메서드의 이름, 매개변수, 반환 타입 등만 작성하며 가변 매개변수도 허용한다
* 프로토콜의 메서드 요구에서는 매개변수 기본값을 지정할 수 없다
* 타입 메서드를 요구할 때는 타입 프로퍼티 요구와 마찬가지로 앞에 static 키워드를 명시한다

* 여러 위치에서 프로토콜을 타입으로 사용할 수 있다
	* 1. 함수, 메서드, 이니셜라이저에서 매개변수 타입이나 반환 타입으로 사용될 수 있다
	* 2. 프로퍼티, 변수, 상수 등의 타입으로 사용될 수 있다
	* 3. 배열, 딕셔너리 등 컨테이너 요소의 타입으로 사용 될 수 있다

### 가변 메서드 요구
* 값 타입 (구조체와 열거형) 의 인스턴스 메서드에서 자신 내부의 값을 변경하고자 할 때는 메서드의 func 키워드 앞에 mutating 키워드를 적어 메서드에서 인스턴스 내부의 값을 변경한다는 것을 명시해줘야 한다
* 참조 타입인 클래스의 메서드 앞에는 mutating 키워드를 명시하지 않아도 인스턴스 내부 값을 바꾸는 데 문제가 없지만, 값 타입인 구조체와 열거형의 메서드 앞에는 mutating 키워드를 붙인 가변 메서드 요구가 필요하다
* 만약 프로토콜에서 가변 메서드를 요구하지 않는다면, 값 타입의 인스턴스 내부 값을 변경하는 mutating 메서드는 구현이 불가능하다

### 이니셜라이저 요구
* 프로토콜은 특정한 이니셜라이저를 요구할 수도 있다
* 이니셜라이저의 매개변수를 지정하기만 할 뿐, 중괄호를 포함한 이니셜라이저 구현은 하지 않는다
* 클래스 타입에서 프로토콜의 이니셜라이저 요구에 부합하는 이니셜라이저를 구현할 때는 required 식별자를 붙인 요구 이니셜라이저로 구현해야 한다
* 특정 클래스에 프로토콜이 요구하는 이니셜라이저가 이미 구현되어 있는 상황에서 그 클래스를 상속받은 클래스가 있다면, required 와 override 식별자를 모두 명시하여 프로토콜에서 요구하는 이니셜라이저를 구현해주어야 한다

### 프로토콜의 상속과 클래스 전용 프로토콜
* 프로토콜은 하나 이상의 프로토콜을 상속받아 기존 프로토콜의 요구사항보다 더 많은 요구사항을 추가할 수 있다, 프로토콜 상속 문법은 클래스의 상속 문법과 유사하다
* 프로토콜의 상속 리스트에 class 키워드를 추가해 프로토콜이 클래스 타입에만 채택될 수 있도록 제한할 수 있다
* 클래스 전용 프로토콜로 제한을 주기 위해서는 프로토콜의 상속 리스트의 맨 처음에 class 키워드가 위치해야 한다

### 프로토콜 조합과 프로토콜 준수 확인
* 하나의 매개변수가 여러 프로토콜을 모두 준수하는 타입이어야 한다면 하나의 매개변수에 여러 프로토콜을 한 번에 조합하여 요구할 수 있다
* 프로토콜을 조합하여 요구할 때는 SomeProtocol & AnotherProtocol 과 같이 표현한다
* 특정 클래스의 인스턴스 역할을 할 수 있는지 확인할 수 있다, 구조체나 열거형 타입은 조합할 수 없다, 조합 중 클래스 타입은 한 타입만 조합할 수 있다
* 타입캐스팅에 사용하던 is와 as 연산자를 통해 대상이 프로토콜을 준수하는지 확인할 수도 있고 특정 프로토콜로 캐스팅 할 수 있다

### 프로토콜의 선택적 요구
* 프로토콜의 요구사항 중 일부를 선택적 요구사항으로 지정할 수 있다
* 선택적 요구사항을 정의하고 싶은 프로토콜은 @objc 속성이 부여된 프로토콜이어야 한다
* @objc 속성이 부여되는 프로토콜은 Objective-C 클래스를 상속받은 클래스에서만 채택할 수 있다
* 열거형이나 구조체 등에서는 @objc 속성이 부여된 프로토콜은 아예 채택할 수 없다
* @objc 속성을 사용하려면 애플의 Foundation 프레임워크 모듈을 임포트해야한다
* 선택적 요구사항은 optional 식별자를 요구사항의 정의 앞에 붙여주면 된다
* 메서드나 프로퍼티를 선택적 요구사항으로 요구하게 되면 그 요구사항의 타입은 자동적으로 옵셔널이 된다

### 프로토콜 변수와 상수
* 프로토콜 이름을 타입으로 갖는 변수 또는 상수에는 그 프로토콜을 준수하는 타입의 어떤 인스턴스라도 할당할 수 있다
* 프로토콜은 프로토콜 이름만으로 자기 스스로 인스턴스를 생성하고 초기화할 수는 없다
* 프로토콜 변수나 상수를 생성하여 특정 프로토콜을 준수하는 타입의 인스턴스를 할당할 수는 있다

### 위임을 위한 프로토콜
* 위임은 클래스나 구조체가 자신의 책임이나 임무를 다른 타입의 인스턴스에게 위임하는 디자인 패턴이다
* 책무를 위임하기 위해 정의한 프로토콜을 준수하는 타입은 자신에게 위임될 일정 책무를 할 수 있다는 것을 보장한다
* 위임은 사용자의 특정 행동에 반응하기 위해 사용되기도 하며, 비동기 처리에도 많이 사용한다