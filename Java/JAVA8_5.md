# JAVA8_5
## 필터링과 슬라이싱
* 스트림 요소를 선택하는 방법

### 프레디케이트로 필터링
* 스트림 인터페이스는 filter 메서드를 지원한다, filter 메서드는 프레디케이트(불린을 반환하는 함수) 를 인수로 받아서 프레디케이트와 일치하는 모든 요소를 포함하는 스트림을 반환한다

### 고유 요소 필터링
* 스트림은 고유 요소로 이루어진 스트림을 반환하는 distinct 라는 메서드도 지원한다
* 고유 여부는 스트림에서 만든 객체의 hashCode, equals로 결정된다

### 스트림 축소
* 스트림은 주어진 사이즈 이하의 크기를 갖는 새로운 스트림을 반환하는 limit (n) 메서드를 지원한다
* 스트림이 정렬되어 있으면 최대 n 개의 요소를 반환할 수 있다

### 요소 건너뛰기
* 스트림은 처음 n개 요소를 제외한 스트림을 반환하는 skip (n) 메서드를 지원한다
* n개 이하의 요소를 포함하는 스트림에 skip (n) 을 호출하면 빈 스트림이 반환된다
* limit (n) 과 skip (n) 은 상호 보완적인 연산을 수행한다

## 매핑
* 특정 객체에서 특정 데이터를 선택하는 작업은 데이터 처리 과정에서 자주 수행되는 연산이다

### 스트림의 각 요소에 함수 적용하기
* 스트림은 함수를 인수로 받는 map 메서드를 지원한다, 인수로 제공된 함수는 각 요소에 적용되며 함수를 적용한 결과가 새로운 요소로 매핑된다 
* 이 과정은 기존의 값을 고친다라는 개념보다는 새로운 버전을 만든다라는 개념이므로 변환에 가까운 매핑이라는 단어를 사용한다

### 스트림 평면화
* 리스트에서 고유 문자로 이루어진 리스트를 반환할 때는 flatMap을 사용해야 한다
* flatMap은 각 배열을 스트림이 아니라 스트림의 콘텐츠로 매핑한다, flatMap은 하나의 평면화된 스트림을 반환한다

## 검색과 매칭
* 특정 속성이 데이터 집합에 있는지 여부를 검색하는 데이터 처리도 자주 사용된다

### 프레디케이트가 적어도 한 요소와 일치하는지 확인
* anyMatch 메서드를 이용하면 확인할 수 있다

### 프레디케이트가 모든 요소와 일치하는지 검사
* allMatch 메서드는 스트림의 모든 요소가 주어진 프레디케이트와 일치하는지 검사한다

### 프레디케이트와 일치하는 요소가 없는지 검사
* noneMatch

### 요소 검색
* findAny 메서드는 현재 스트림에서 임의의 요소를 반환한다

### Optional
* Optional<T> 클래스는 값의 존재나 부재 여부를 표현하는 컨테이너 클래스이다
* null은 쉽게 에러를 일으킬 수 있으므로 만들어졌다

### 첫 번째 요소 찾기
* 병렬이라면 findFirst 와 findAny 두 가지 메서드가 필요하다
* 병렬 실행에서는 첫 번 째 요소를 찾기 어렵다

## 리듀싱
* Integer 같은 결과가 나올 때까지 스트림의 모든 요소를 반복적으로 처리해야 한다
* 함수형 프로그래밍 언어 용어로는 이 과정이 마치 종이를 작은 조각이 될 때까지 반복해서 접는 것과 비슷하다고 해서 폴드라고 부른다

### 요소의 합
* reduce 를 이용하면 애플리케이션의 반복된 패턴을 추상화 할 수 있다

### 초깃값 없음
* 초깃값을 받지 않도록 오버로드된 reduce도 있다, 그러나 이 reduce는 Optional 객체를 반환한다

### 최댓값과 최솟값
* 최댓값과 최솟값을 찾을 때도 reduce를 활용할 수 있다

## 요약
* 어떤 요소를 출력 스트림으로 추가하려면 모든 요소가 버퍼에 추가되어 있어야 한다
* 연산을 수행하는 데 필요한 저장소 크기는 정해져있지 않다, 따라서 데이터 스트림의 크기가 크거나 무한이라면 문제가 생길 수 있다, 따라서 이러한 연산은 내부 상태를 갖는 연산으로 간주할 수 있다
* Stream.of 를 이용해서 스트림을 만들 수 있다
* Arrays.stream을 이용해서 스트림을 만들 수 있다
* Files.lines 로 파일의 각 행 요소를 반환하는 스트림을 얻을 수 있다
* Stream.iterate 와 Stream.generate를 이용해서 무한 스트림을 만들 수 있다
* iterate 메서드는 초깃값과 람다를 인수로 받아서 새로운 값을 끊임없이 생산할 수 있다
* generate는 공급자가 상태를 저장한 다음에 스트림의 다음 값을 만들 때 상태를 고치고 싶을 때 사용한다
* filter, map 등은 상태를 저장하지 않는 상태 없는 연산이다
* sorted, distinct 등의 메서드는 새로운 스트림을 반환하기에 앞서 스트림의 모든 요소를 버퍼에 저장해야한다 이런 메서드를 상태 있는 연산이라 부른다