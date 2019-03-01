# SWIFT_13
* 스위프트에서 함수형 프로그래밍 패러다임을 접할 때 꼭 알아야 할 것이 클로저이다
* 클로저 = 일정 기능을 하는 코드를 하나의 블록으로 모아놓은 것을 말한다, 함수는 클로저의 한 형태
* 클로저는 변수나 상수가 선언된 위치에서 참조를 획득하고 저장할 수 있다

* 클로저의 세 가지 형태 ->
* 1. 이름이 있으면서 어떤 값도 획득하지 않는 전역함수의 형태
* 2. 이름이 있으면서 다른 함수 내부의 값을 획득할 수 있는 중첩된 함수의 형태
* 3. 이름이 없고 주변 문맥에 따라 값을 획득할 수 있는 축약 문법으로 작성한 형태

* 클로저는 매개변수와 반환 값의 타입을 문맥을 통해 유추할 수 있기 때문에 매개변수와 반환 값의 타입을 생략할 수 있다
* 클로저에 단 한 줄의 표현만 들어있다면 암시적으로 이를 반환 값으로 취급한다
* 축약된 전달인자 이름을 사용할 수 있다
* 후행 클로저 문법을 사용할 수 있다
* 클로저도 함수와 마찬가지로 입출력 매개변수를 사용할 수 있다, 매개변수 이름을 지정한다면 가변 매개변수 또한 사용 가능하다, 다만 클로저는 매개변수 기본값을 사용할 수 없다
* 메서드의 전달인자로 전달하는 클로저는 메서드에서 요구하는 형태로 전달해야 한다, 즉 매개변수의 타입이나 개수, 반환 타입 등이 같아야 전달인자로서 전달할 수 있다
* 클로저에서는 return 키워드마저 생략할 수 있다 (만약 클로저가 반환 값을 갖는 클로저이고 클로저 내부의 실행문이 단 한줄이라면, 암시적으로 그  실행문을 반환 값으로 사용할 수 있다)
* 클로저는 자신이 정의된 위치의 주변 문맥을 통해 상수나 변수를 획득 할 수 있다, 값 획득을 통해 클로저는 주변에 정의한 상수나 변수가 더 이상 존재하지 않더라도 해당 상수나 변수의 값을 자신 내부에서 참조하거나 수정할 수 있다
* 클로저를 통해 비동기 콜백을 작성하는 경우, 현재 상태를 미리 획득해두지 않으면, 실제로 클로저의 기능을 실행하는 순간에는 주변의 상수나 이미 메모리에 존재하지 않는 경우가 발생한다
* 함수와 클로저는 참조 타입
* 클로저가 함수를 탈출할 수 있는 경우 중 하나는 함수 외부에 정의된 변수나 상수에 저장되어 함수가 종료된 후에 사용할 경우이다
* 함수의 전달인자로 전달하는 표현을 자동으로 변환해주는 클로저를 자동 클로저라고 한다, 자동 클로저는 전달인자를 갖지 않는다