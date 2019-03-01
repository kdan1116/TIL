# Java 

* 컬렉션 프레임웍 = 다수의 데이터를 쉽게 처리할 수 있는 표준화된 방법을 제공하는 클래스들

## @Override  (런타임 다형성을 구현하는 기능 )
* 컴파일러에게 특정한 동작을 한다는 것을 알려주는 기능( Annotation)  

* 요즘에는 부모로 부터 상속받은 클래스는 앞에 override한다고 명시
* 런타임에 작동하는 annotation을 만들어야 한다 (build, FuntionalInterface)

## Array와 ArrayList의 차이점은 무엇인가요? 
* Array  - 정적 배열 = 컴파일 타임에 크기가 결정된다

* 사이즈 = 초기화시 고정
* 속도 = 초기화시 메모리에 할당, 속도가 빠르다
* 변경 = 사이즈 변경 불가

* ArrayList - 동적 배열 = 런타임에 크기가 계속 변경될 수 있다 (결국 정적배열을 사용해서 구현)

* 원시적(primitive) 타입을 넣을 수 없다
* 초기화시  사이즈를 표시하지 않음, 유동적
* 추가시 메모리를 재할당, 속도가 느리다
* 추가 삭제 가능 (add(), remove())

## 래퍼 클래스(Integer, Long, Double 등)가 필요한 이유를 설명하시오 
* 원시적 타입(call by value)을 참조형 타입(call by reference)으로 사용하기 위해서 만들어진 클래스가 래퍼 클래스
* 원시 데이터 유형은 메모리 주소로 참조 될 수 없습니다. 그렇기 때문에 원시 값의 자리 표시자 역할을하는 래퍼가 필요합니다. 이 값들은 돌연변이되어 액세스되거나, 재구성되거나, 정렬되거나 무작위 화 될 수 있습니다.

* Collection’ s Generic
* Boxing = Collection 에 Primitive Type 을 저장하기 위해서는 Reference Type으로 변환해야 한다
* 자동으로 박싱을 하는 것 = Auto Boxing
* 어떤 타입이 들어있는지 빼낼 때 알 수 없으므로 잘 사용하지 않는다
* Collection 에는 하나의 타입만 집어넣자
* Generic = 컴파일 타임에 컬렉션에 하나의 타입만 들어갔는지 체크하는 목적으로 사용


* 매개변수로 객체를 요구할 때 기본형 값이 아닌 객체로 저장해야할 때 , 객체간의 비교가 필요할 경우에는 기본형 값들을 객체로 변환하여 작업을 수행

* 함수를 통해서 값이 변경 => 부수 효과 (call by reference) 


##  Private > default > protected > public
* default = 같은 클래스 내에서는 접근 가능,  같은 패키지 내에서는 protected에 접근이 가능
* 패키지의 이름이 같으면 다른 모듈이여도 접근이 가능하다 (단점) 악의적으로 이용이 가능하다 

## 자바 객체가 파괴되는 시점에 대해서 설명하시오. 
* finallize 메서드는 갈비지 컬렉터가 쓰레기를 수집할 때 자동으로 호출 ( 주기적으로 호출되므로 시점을 정확하게 알 수 없다)
* 자원을 바로 해제해야 한다면 직접 finalize 호출. 
* 갈비지 컬렉터가 알아서 사용되지 않는 메모리를 해제한다

## StringBuilder 객체의 용도는 무엇인가요? 
* 불변 객체는 새로운 표현마다 새로운 객체가 만들어진다.
* 프로그램 성능이 객체의 생성과 파괴에 큰 영향을 받는다

* String 과 다르게 mutable 
* 문자열 연산이 자주 있을 때 사용함
* Builder은 단일 쓰레드 환경에서 사용하기 좋다


* Buffer는 멀티 쓰레드 환경에서 사용하기 좋으며 동기화를 지원





