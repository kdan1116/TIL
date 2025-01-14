# JAVA8_7
## 병렬 스트림
* 컬렉션에 parallelStream 을 호출하면 병렬 스트림이 생성된다
* 병렬 스트림이란 각각의 스레드에서 처리할 수 있도록 스트림 요소를 여러 청크로 분할한 스트림이다
* 병렬 스트림을 이용하면 모든 멀티코어 프로세서가 각각의 청크를 처리하도록 할당할 수 있다
* 내부 반복을 이용하면 명시적으로 다른 스레드를 사용하지 않고도 스트림을 병렬로 처리할 수 있다
* Spliterator는 탐색하려는 데이터를 포함하는 스트림을 어떻게 병렬화할 것인지 정의한다

### 순차 스트림을 병렬 스트림으로 변환하기
* 순차 스트림에 parallel 메서드를 호출하면 기존의 함수형 리듀싱 연산이 병렬로 처리된다
* 사실 순차 스트림에 parallel을 호출해도 스트림 자체에는 아무 변화도 일어나지 않는다, 내부적으로는 parallel을 호출하면 이후 연산이 병렬로 수행해야 함을 의미하는 불린 플래그가 설정된다
* 반대로 sequential로 병렬 스트림을 순차 스트림으로 바꿀 수 있다

### 특화된 메서드 활용
* LongStream.rangeClosed 는 기본형 long 을 직접 사용하므로 박싱과 언박싱 오버헤드가 사라진다
* LongStream.rangeClosed 는 쉽게 청크로 분할할 수 있는 숫자 범위를 생성한다

### 병렬 스트림의 올바른 사용법
* 병렬화를 이용하려면 스트림을 재귀적으로 분할해야 하고, 각 서브스트림을 서로 다른 스레드의 리듀싱 연산으로 할당하고, 이들 결과를 하나의 값으로 합쳐야 한다
* 병렬 스트림을 잘못 사용하면서 발생하는 많은 문제는 공유된 상태를 바꾸는 알고리즘을 사용하기 때문이다
* 병렬 스트림과 병렬 계산에서는 공유된 가변 상태를 피해야 한다
* 순차 스트림과 병렬 스트림 중 어떤 것이 좋을지 모르겠다면 적절한 벤치마크로 직접 성능을 측정하는 것이 바람직하다
* 되도록이면 기본형 특화 스트림을 사용해라 (박싱, 언박싱이 성능을 크게 저하시킬 수 있다)
* 스트림에서 수행하는 전체 파이프라인 연산 비용을 고려하라

## 포크/조인 프레임워크
* 포크/조인 프레임워크는 병렬화할 수 있는 작업을 재귀적으로 작은 작업으로 분할한 다음에 서브태스크 각각의 결과를 합쳐서 전체 결과를 만들도록 설계되었다

### RecursiveTask 활용
* 스레드 풀을 이용하려면 RecursiveTask<R>의 서브클래스를 만들어야 한다, 여기서 R은 병렬화 된 태스크가 생성하는 결과 형식 또는 결과가 없을 때는 RecursiveAction 형식이다
* RecursiveTask 를 정의하려면 추상 메서드 compute 를 구현해야 한다
* compute 메서드는 태스크를 서브태스크로 분할하는 로직과 더 이상 분할할 수 없을 때 개별 서브태스크의 결과를 생산할 알고리즘을 정의한다

### 작업 훔치기
* 작업 훔치기 기법에서는 ForkJoinPool의 모든 스레드를 거의 공정하게 분할한다
* 각각의 스레드는 자신에게 할당된 태스크를 포함하는 이중 연결 리스트를 참조하면서 작업이 끝날 때 마다 큐의 헤드에서 다른 태스크를 가져와서 작업을 처리한다
* 이때 한 스레드는 바쁘에 일하고 있는데 다른 한 스레드의 할 일이 다 떨어졌어도 다른 스레드 큐의 꼬리에서 작업을 훔쳐온다

## Spliterator
* Spliterator는 분할할 수 있는 반복자라는 의미이다
* Iterator 처럼 Spliterator는 소스의 요소 탐색 기능을 제공한다는 점은 같지만, Spliterator는 병렬 작업에 특화되어 있다