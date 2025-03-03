# Android
* Android는 풍부한 기능을 갖춘 애플리케이션 프레임워크를 제공하여 Java 언어 환경에서 실행되는 휴대기기에서 사용할 혁신적인 앱과 게임을 빌드할 수 있습니다
* 앱은 여러 개의 진입 지점을 제공한다
* 하나의 액티비티가 사용자 인터페이스를 위한 화면을 하나 제공하고, 서비스가 백그라운드에서 독립적으로 작업을 수행할 수 있다
* 한 구성 요소에서 또 다른 구성 요소를 시작하려면 인텐트를 사용하면 된다
* Android 앱은 Java 프로그래밍 언어로 작성된다
* Android 앱은 일단 기기에 설치되고 나면 각자 자체적인 보안 샌드박스 안에 존재한다
* Android 운영 체제는 멀티유저 Linux 시스템으로, 여기서 각 앱은 각기 다른 사용자와 같다
* 기본적으로 모든 앱이 앱 자체의 Linux 프로세스에서 실행된다
* Android 시스템 디자인의 독특한 점으로 어떤 앱이든 다른 앱의 구성 요소를 시작할 수 있다

## 앱 구성 요소
### 액티비티
* 액티비티는 사용자 인터페이스가 있는 단일 화면을 나타낸다
* 액티비티는 Activity 의 서브클래스로 구현된다

### 서비스
* 서비스는 백그라운드에서 실행되는 구성 요소로, 오랫동안 실행되는 작업은 수행하거나 원격 프로세스를 위한 작업을 수행하는 것이다
* 서비스는 사용자 인터페이스를 제공하지 않는다
* 서비스는 Service의 서브클래스로 구현된다

### 콘텐츠 제공자
* 콘텐츠 제공자는 공유된 앱 데이터 집합을 관리한다
* 데이터는 파일 시스템이나 SQLite 데이터베이스 또는 웹이나 기타 영구적인 저장소 위치 중 앱이 액세스할 수 있는 곳이라면 어디에든 저장할 수 있다
* 다른 여러 앱은 콘텐츠 제공자를 통해 해당 데이터를 쿼리하거나, 심지어는 수정할 수도 있다
* 콘텐츠 제공자는 여러분의 앱에 전용이며 공유되지 않는 데이터를 읽고 쓰는 데에도 유용하다
* 콘텐츠 제공자는 ContentProvider의 서브클래스로 구현되며, 다른 앱이 트랜잭션을 수행할 수 있도록 활성화하는 표준 API 집합을 구현해야 한다

### 브로드캐스트 수신기
* 브로드캐스트 수신기는 시스템 범위의 브로드캐스트 알림에 응답하는 구성 요소를 말한다, 대다수의 브로드캐스트는 시스템에서 시작한다
* 브로드캐스트 수신기는 BroadcastReceiver의 서브클래스로 구현되며 각 브로드캐스트는 Intent 객체로 전달된다

* 네 가지 구성 요소 중 세 가지—액티비티, 서비스 및 브로드캐스트 수신기—는 일명인텐트라고 하는 비동기식 메시지가 활성화합니다. 인텐트는 각각의 구성 요소를 런타임에 서로 바인드하며(다른 구성 요소로부터 작업을 요청하는 일종의 메신저로 생각하면 됨), 이는 구성 요소가 앱에 속하는지 여부에 무관하다
* 남은 하나의 구성 요소 유형, 즉 콘텐츠 제공자는 인텐트가 활성화하지 않는다, 그보다는 ContentResolver로부터의 요청으로 지정되면 활성화된다

### 인텐트
* 인텐트는 Intent 객체로 생성되며, 이것이 특정 구성 요소를 활성화할지 아니면 구성 요소의 특정 유형을 활성화할지를 나타내는 메시지를 정의한다, 인텐트는 각각 명시적이거나 암시적일 수 있다

# CardView
* 안드로이드 CardView는 support.v7.widget 에 속한 라이브러리이다
* 리스트 뷰를 보여줄 때 카드 레이아웃을 사용한 형태를 많이 구현한다, 하지만 직접 그림자도 그려야 하고, 틀을 만들어야하는 어려움이 존재한다
* CardView는 FrameLayout 클래스를 확장한 형태이다
* 둥근 모서리, 배경과 그림자가 추가된 FrameLayout 이라고 보면 된다
* 일반적으로 CardView는 리스트 형태로 보여주기 때문에 뷰에 대해 재사용이 가능한 RecyclerView와 함께 사용된다

# Fragment
* 액티비티는 하나만 만들고 다른 것들은 프래그먼트로 만드는게 좋다
* 프래그먼트는 액티비티 내에서 화면 UI의 일부를 나타낸다
* 여러 개의 프래그먼트를 조합하여 액티비티가 출력하는 한 화면의 UI를 표현할 수 있으며 하나의 프래그먼트를 다른 액티비티에 재사용할 수 있다
* 액티비티처럼 하나의 독립된 모듈처럼 실행되기 때문에 액티비티와 연관된 생명주기를 가지고 있으며 액티비티 실행 중에도 화면에 동적으로 추가되거나 다른 Fragment 로 교체가 가능하다
* 기본적으로 한 개의 액티비티에 들어가는 화면 요소를 프래그먼트 단위로 나누어 관리하기 때문에 레이아웃을 분리 관리할 수 있고, 액티비티의 화면 구성을 위한 레이아웃의 복잡도도 줄일 수 있다

# Interceptor
* 해당 클래스에는 intercept 라는 메서드가 있는데, Interceptor.Chain 을 주고서 Response 를 얻는 방식이다
* Interceptor 에서 기존의 Request 를 기반으로 조작해서 새로운 Request 를 제작하는 형태이다

# FragmentManager와 ChildFragmentManager
* ChildFragmentManager라는 클래스는 따로 없다
* Activity.getFragmentManager()나 Fragment.getFragmentManager()에서 반환하면 FragmentManager(이하 FM), Fragment.getChildFragmentManager() 메소드에서 반환되는 FragmentManager 객체를 ChildFragmentManager(이하 CFM)라고 보통 부른다
* FM과 CFM 모두 FragmentManager 클래스의 객체이니, 동작은 유사하다
* FM은 액티비티, 액티비티 속 프레그먼트(이하 자식 프레그먼트) 그리고 프레그먼트 속 프레그먼트(이하 손자 프레그먼트)가 모두 사용할 수 있다
* CFM은 프레그먼트(자식)와 프레그먼트 속 프레그먼트(손자)들만 사용할 있다
* FM에서 관리되는 손자 프레그먼트라면, getFragmentManager()는 액티비티의 getFragmentManager()와 동일한 객체를 반환한다
* CFM에서 관리되는 손자 프레그먼트라면, getFragmentManager()는 부모(액티비티의 자식) 프레그먼트의 getChildFragmentManager()와 동일한 객체를 반환한다
* getFragmentManager() 와 getChildFragmentManager() 두 개를 유지하는 이유는 remove() 메소드를 통해 프레그먼트를 제거할 때 유용하기 때문이다

# FragmentManager와 ChildFragmentManager
* ChildFragmentManager라는 클래스는 따로 없다
* Activity.getFragmentManager()나 Fragment.getFragmentManager()에서 반환하면 FragmentManager(이하 FM), Fragment.getChildFragmentManager() 메소드에서 반환되는 FragmentManager 객체를 ChildFragmentManager(이하 CFM)라고 보통 부른다
* FM과 CFM 모두 FragmentManager 클래스의 객체이니, 동작은 유사하다
* FM은 액티비티, 액티비티 속 프레그먼트(이하 자식 프레그먼트) 그리고 프레그먼트 속 프레그먼트(이하 손자 프레그먼트)가 모두 사용할 수 있다
* CFM은 프레그먼트(자식)와 프레그먼트 속 프레그먼트(손자)들만 사용할 있다
* FM에서 관리되는 손자 프레그먼트라면, getFragmentManager()는 액티비티의 getFragmentManager()와 동일한 객체를 반환한다
* CFM에서 관리되는 손자 프레그먼트라면, getFragmentManager()는 부모(액티비티의 자식) 프레그먼트의 getChildFragmentManager()와 동일한 객체를 반환한다
* getFragmentManager() 와 getChildFragmentManager() 두 개를 유지하는 이유는 remove() 메소드를 통해 프레그먼트를 제거할 때 유용하기 때문이다

# RxKotlin SAM(Single Abstract Methods) Ambiguity
* SAM은 추상 메서드에 대해서 lambda 식을 제공한다
* Java에서 작성한 Interface 정의와 이를 활용하는 etOnClickListener 를 Kotlin 에서 부르는 경우에만 이에 해당한다