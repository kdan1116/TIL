# SWIFT_10~11
## 프로퍼티와 메서드
* 프로퍼티는 클래스,구조체 또는 열거형 등에 관련된 값을 뜻한다
* 메서드는 특정 타입에 관련된 함수를 뜻한다

## 프로퍼티
* 저장 프로퍼티 => 인스턴스의 변수 또는 상수를 의미, 구조체와 클래스에서만 사용할 수 있다
* 연산 프로퍼티 => 값을 저장한 것이 아니라 특정 연산을 실행한 결과값을 의미
* 타입 프로퍼티 =>  특정 타입에 사용되는 프로퍼티를 의미
* 인스턴스 변수는 저장 프로퍼티, 클래스 변수는 타입 프로퍼티로 생각하면 된다
* 감시 프로퍼티 => 프로퍼티의 값이 변하는 것을 감시하는 프로퍼티, 프로퍼티 감시자는 저장 프로퍼티에 적용할 수 있으며 부모클래스로부터 상속 받을 수 있다

### 저장 프로퍼티
* 클래스 또는 구조체의 인스턴스와 연관된 값을 저장하는 가장 단순한 개념의 프로퍼티
* let과 var 둘다 사용 가능하다
* 프로퍼티 기본 값을 지정할 수 있으며, 초기화할 때 초기값을 지정할 수 있다
* 구조체의 저장 프로퍼티가 옵셔널이 아니더라도, 구조체는 저장 프로퍼티를 모두 포함하는 이니셜라이저를 자동으로 생성한다
* 클래스의 저장 프로퍼티가 옵셔널이 아니라면 프로퍼티 기본값을 지정해주거나 사용자정의 이니셜라이저를 통해 반드시 초기화 해줘야한다
* 클래스 인스턴스의 상수 프로퍼티는 인스턴스가 초기화될 때 한 번만 값을 할당할 수 있으며, 자식클래스에서 이 초기화를 변경(재정의)할 수 없다
* 인스턴스를 생성할 때 이니셜라이저를 통해 초기값을 보내야 하는 이유는 프로퍼티가 옵셔널이 아닌 값으로 선언되어 있기 때문이다

### 지연 저장 프로퍼티
* 지연 저장 프로퍼티는 호출이 있어야 값을 초기화하며, 이때 lazy 키워드를 사용한다
* 지연 저장 프로퍼티는 var 키워드를 사용하여 변수로 정의한다
* 지연 저장 프로퍼티는 주로 복잡한 클래스나 구조체를 구현할 때 많이 사용된다
* 다중 스레드 환경에서는 주의해서 써야 한다 (여러 번 초기화 될 수도 있으므로)

### 연산 프로퍼티
* 인스턴스 내/외부의 값을 연산하여 적절한 값을 돌려주는 접근자의 역할이나 은닉화된 내부의 프로퍼티 값을 간접적으로 설정하는 설정자의 역할을 할 수도 있다
* 클래스, 구조체, 열거형에 연산 프로퍼티를 정의할 수 있다
* 메서드를 사용하지 않고 연산 프로퍼티를 사용하는 이유는 프로퍼티가 메서드 형식 보다 훨씬 더 간편하고 직관적이기 때문이다
* 읽기 전용 상태로 구현하기 쉽지만 쓰기 전용 상태로 구현할 수 없다

### 프로퍼티 감시자
* 프로퍼티 감시자를 사용하면 프로퍼티의 값이 변경됨에 따라 적절한 액션을 취할 수 있다
* 지연 저장 프로퍼티에는 사용이 불가하고 일반 저장 프로퍼티에만 적용이 가능하다
* 프로퍼티 재정의를 통해 상속받은 저장 프로퍼티 또는 연산 프로퍼티에도 적용할 수 있다
* willSet => 프로퍼티가 변경될 값
* didSet => 프로퍼티가 변경되기 전의 값

### 전역변수와 지역변수
* 함수나 메서드, 클로저, 클래스, 구조체, 열거형 등의 범위 안에 포함되지 않았던 변수나 상수를 전역변수 또는 전역상수에 해당된다
* 전역변수 또는 지역변수는 저장변수라고 할 수 있다

### 타입 프로퍼티
* 각각의 인스턴스가 아닌 타입 자체에 속하는 프로퍼티를 타입 프로퍼티라고 한다
* 타입 프로퍼티는 타입 자체에 영향을 미치는 프로퍼티이다
* 인스턴스의 생성 여부와 상관없이 타입 프로퍼티의 값은 하나며, 그 타입의 모든 인스턴스가 공통으로 사용하는 값, 모든 인스턴스에서 공용으로 접근하고 값을 변경할 수 있는 변수등을 정의할 때 유용하다
* 저장 타입 프로퍼티는 변수 또는 상수로 선언할 수 있고 연산 타입 프로퍼티는 변수로만 선언할 수 있다
* 저장 타입 프로퍼티는 반드시 초기값을 설정해야 하며 지연 연산 된다
* 지연 저장 프로퍼티와는 조금 다르게 다중 스레드 환경에서도 단 한번만 초기화된다는 보장을 받는다

### 키 경로
* 어떤 프로퍼티의 위치만 참조하도록 할 때 사용하는 것, 키 경로를 사용하여 간접적으로 특정 타입의 어떤 프로퍼티 값을 가리켜야 할지 미리 지정해두고 사용할 수 있다
* 키 경로는 역슬래시와 타입, 마침표로 구성 => 타입 이름. 경로. 경로. 경로
* 키 경로를 잘 활용하면 프로토콜과 마찬가지로 타입 간의 의존성을 낮추는데 많은 도움을 줍니다

## 메서드
* 메스드는 특정 타입에 관련된 함수를 뜻한다
* 클래스, 구조체, 열거형 등은 각각의 인스턴스가 특정 작업을 실행하는 기능을 캡슐화하기 위해 인스턴스 메서드를 정의할 수 있다
* 타입 자체와 관련된 기능을 실행하기 위해 타입 메서드를 정의할 수도 있다

### 인스턴스 메서드
* 인스턴스 메서드는 특정 타입의 인스턴스에 속한 함수를 뜻한다
* 인스턴스 내부의 프로퍼티 값을 변경하거나 특정 연산 값을 반환하는 등 인스턴스와 관련된 기능을 실행한다
* 인스턴스 메서드는 함수와 달리 특정 타입 내부에 구현, 인스턴스가 존재할 때만 사용할 수 있다 (이 점이 함수와 유일한 차이점)
* 구조체나 열거형은 값 타입이므로 메서드 앞에 mutating 키워드를 붙여서 해당 메서드가 인스턴스 내부의 값을 변경한다는 것을 명시해야 한다

### self 프로퍼티
* 모든 인스턴스는 암시적으로 생성된 self 프로퍼티를 갖는다, self 프로퍼티는 인스턴스를 더 명확히 지칭하고 싶을 때 사용
* self 프로퍼티의 다른 용도는 값 타입 인스턴스 자체의 값을 치환할 수 있다
* 클래스의 인스턴스는 참조 타입이라서 self 프로퍼티에 다른 참조를 할당할 수 없지만 구조체나 열거형 등은 self 프로퍼티를 사용하여 자신 자체를 치환할 수 있다

### 타입 메서드
* 타입 자체에 호출이 가능한 메서드를 타입 메서드라 부른다
* 메서드 앞에 static 키워드를 사용하여 타입 메서드임을 나타낸다
* static으로 정의하면 상속 후 메서드 재정의가 불가능, class 로 정의하면 상속 후 메서드 재정의가 가능
* 인스턴스 메서드에서는 self가 인스턴스를 가리키고, 타입 메서드의 self는 타입을 가리킨다

## 인스턴스 생성 및 소멸
* 초기화는 클래스나 구조체 또는 열거형의 인스턴스를 사용하기 위한 준비 과정
* 초기화가 완료된 인스턴스는 사용 후 소멸 시점이 오면 소멸한다

### 인스턴스 생성
* 이니셜라이저를 정의하면 초기화 과정을 직접 구현할 수 있다
* 스위프트의 이니셜라이저는 반환 값이 없다, 이니셜라이저의 역할은 그저 인스턴스의 첫 사용을 위해 초기화하는 것 뿐이다
* 이니셜라이저는 해당 타입의 새로운 인스턴스를 생성하기 위해 호출한다
* 클래스의 지정 이니셜라이저는 익스텐션에서 구현해줄 수 없다

### 프로퍼티 기본값
* 구조체와 클래스의 인스턴스는 처음 생성할 때 옵셔널 저장 프로퍼티를 제외한 모든 저장 프로퍼티에 적절한 초기값을 할당해야 한다
* 프로퍼티를 정의할 때 프로퍼티 기본값을 할당하면 이니셜라이저에서 따로 초기값을 할당하지 않더라도 프로퍼티 기본값으로 저장 프로퍼티의 값이 초기화 된다
* 이니셜라이저를 통해 초기값을 할당하거나, 프로퍼티 기본값을 통해 처음의 저장 프로퍼티가 초기화될 때는 프로퍼티 감시자 메서드가 호출되지 않는다

### 이니셜라이저 매개변수
* 함수나 메서드를 정의할 때와 마찬가지로 이니셜라이저도 매개변수를 가질 수 있다, 즉 인스턴스를 초기화하는 과정에 필요한 값을 전달받을 수 있다

### 옵셔널 프로퍼티 타입
* 초기화 과정에서 값을 초기화하지 않아도 되는, 즉 인스턴스가 사용되는 동안에 값을 꼭 갖지 않아도 되는 저장 프로퍼티가 있다면 해당 프로퍼티를 옵셔널로 선언할 수 있다
* 초기화 과정에서 값을 지정해주기 어려운 경우 저장 프로퍼티를 옵셔널로 선언할 수도 있다
* 옵셔널로 선언한 저장 프로퍼티는 초기화 과정에서 값을 할당해주지 않는다면 자동으로 nil이 할당된다

### 상수 프로퍼티
* 상수로 선언된 저장 프로퍼티는 인스턴스를 초기화하는 과정에서만 값을 할당할 수 있으며 처음 할당된 이후로는 값을 변경할 수 없다
* 클래스 인스턴스의 상수 프로퍼티는 프로퍼티가 정의된 클래스에서만 초기화할 수 있다, 해당 클래스를 상속받은 자식클래스의 이니셜라이저에서는 부모클래스 상수 프로퍼티 값을 초기화 할 수 없다

### 기본 이니셜라이저와 멤버와이즈 이니셜라이즈
* 사용자정의 이니셜라이저를 정의해주지 않으면 클래스나 구조체는 모든 프로퍼티에 기본값이 지정되어 있다는 전제하에 기본 이니셜라이저를 사용한다
* 기본 이니셜라이저는 프로퍼티 기본 값으로 프로퍼티를 초기화해서 인스턴스를 생성한다
* 기본 이니셜라이저는 저장 프로퍼티의 기본값이 모두 지정되어 있고, 동시에 사용자정의 이니셜라이저가 정의되지 않은 상태에서 제공된다
* 구조체는 사용자정의 이니셜라이저를 구현하지 않으면 프로퍼티의 이름으로 매개변수를 갖는 이니셜라이저인 멤버와이즈 이니셜라이저를 기본으로 제공한다, 하지만 클래스는 멤버와이즈 이니셜라이저를 지원하지 않는다

### 초기화 위임
* 값 타입인 구조체와 열거형은 코드의 중복을 피하기 위하여 이니셜라이저가 다른 이니셜라이저에게 일부 초기화를 위임하는 초기화 위임을 간단하게 구현할 수 있다 (클래스는 불가)
* 초기화 위임을 하려면 최소 두 개 이상의 사용자정의 이니셜라이저를 정의해야 한다
* 사용자정의 이니셜라이저를 정의할 때도 기본 이니셜라이저나 멤버와이즈 이니셜라이저를 사용하고 싶다면 익스텐션을 사용하면 된다

### 실패 가능한 이니셜라이저
* 실패 가능한 이니셜라이저는 클래스, 구조체, 열거형 등에 모두 정의할 수 있다, 실패 가능한 이니셜라이저는 실패했을 때 nil이 반환해주므로 반환 타입이 옵셔널로 지정된다
* 실패하지 않는 이니셜라이저와 실패 가능한 이니셜라이저를 같은 이름과 같은 매개변수 타입을 갖도록 정의할 수 없다

### 함수를 사용한 프로퍼티 기본값 설정
* 사용자정의 연산을 통해 저장 프로퍼티 기본값을 설정하고자 한다면 클로저나 함수를 사용하여 프로퍼티 기본값을 제공할 수 있다
* 인스턴스를 초기화할 때 함수나 클로저가 호출되면서 연산 결과값을 프로퍼티 기본값으로 제공해준다 (클로저나 함수의 반환 타입은 프로퍼티의 타입과 일치해야 한다)

## 인스턴스 소멸
* 디이니셜라이저는 클래스의 인스턴스가 메모리에서 소멸되기 바로 직전에 호출된다
* deinit 키워드를 사용하여 디이니셜라이저를 구현하면 자동으로 호출, 디이니셜라이저는 클래스의 인스턴스에만 구현할 수 있다
* 디이니셜라이저는 인스턴스를 소멸하기 직전에 호출되므로 인스턴스의 모든 프로퍼티에 접근할 수 있으며 프로퍼티의 값을 변경할 수도 있다