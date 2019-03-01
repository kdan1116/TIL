# SWIFT_17
* 클래스, 구조체, 열거형에는 컬렉션, 리스트, 시퀀스 등 타입의 요소에 접근하는 단축 문법인 서브스크립트를 정의할 수 있다
* 서브스크립트는 별도의 설정자 또는 접근자 등의 메서드를 구현하지 않아도 인덱스를 통해 값을 설정하거나 가져올 수 있다
* 한 타입에 여러 개의 서브스크립트르 정의할 수 있으며 다른 타입을 인덱스로 갖는 여러 개의 서브스크립트를 중복 정의 할 수도 있다
* 서브스크립트는 인스턴스의 이름 뒤에 대괄호로 감싼 값을 써줌으로써 인스턴스 내부의 특정 값에 접근할 수 있다, 서브스크립트 문법은 연산 프로퍼티나 인스턴스 메서드 문법과 유사한 형태로 볼 수 있다
* 인스턴스 메서드와 비슷하게 매개변수의 개수, 타입, 반환 타입 등을 지정하며,  읽고 쓰기가 가능하도록 구현하거나 읽기 전용으로만 구현할 수 있다, 이는 접근자와 설정자를 사용할 수 있는 연산 프로퍼티의 형태와 유사하다
* 서브스크립트를 정의하는 코드는 각 타입의 구현부 또는 타입의 익스텐션 구현부에 위치해야 한다
* get 메서드 없이 단순히 값만 반환하도록 구현한다면 읽기 전용이 된다, 연산 프로퍼티의 형태와 유사하다
* 서브스크립트는 자신이 가지는 시퀀스나 컬렉션, 리스트 등의 요소를 반환하고 설정할 때 주로 사용된다
* 하나의 타입이 여러 개의 서브스크립트를 가질 수도 있다, 다양한 매개변수 타입을 사용하여 서브스크립트를 구현하면 여러 용도로 서브스크립트를 사용할 수 있다는 뜻
* 서브스크립트는 메서드인듯 아닌듯, 연산 프로퍼티인 듯 아닌 듯 중간 형태를 띠며 인스턴스 이름 뒤에 대괄호만 써서 편리하게 내부 값에 접근하고 설정해줄 수 있다, 또한 다양한 목적으로 구현해주는 데 용이하다