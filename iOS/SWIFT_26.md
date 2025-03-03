# SWIFT_26
## where 절
* 스위프트의 where 절은 특정 패턴과 결합하여 조건을 추가하는 역할을 한다
* 조건을 추가하고 싶을 때, 특정 타입에 제한을 두고 싶을 때 사용

### where 절의 활용
* where 절의 용도 2가지 ->
	* 패턴과 결합하여 조건 추가
	* 타입에 대한 제약 추가
	
* 특정 패턴에 Bool 타입 조건을 지정하거나 어떤 타입의 특정 프로토콜 준수 조건을 추가하는 등의 기능이 있다
* where 절은 옵셔널 패턴과도 결합 할 수도, 타입 캐스팅 패턴과 결합 할 수도, 표현 패턴과 결합 할 수도 있다
* 프로토콜 익스텐션에 where 절을 사용하면 이 익스텐션이 특정 프로토콜을 준수하는 타입에만 적용될 수 있도록 제약을 줄 수 있다
* where 절은 다른 패턴과 조합하면 원하는 추가 요구사항을 자유롭게 더할 수 있으며, 익스텐션과 제네릭에 사용함으로써 프로토콜 또는 타입에 대한 제약을 추가해줄 수도 있다