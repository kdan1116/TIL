# Pro Git_1
* 버전 관리 시스템은 파일 변화를 시간에 따라 기록했다가 나중에 특정 시점의 버전을 다시 꺼내올 수 있는 시스템이다
* CVCS = 모두 누가 무엇을 하고 있는지 알 수 있다, 하지만 중앙 서버에 문제가 발생하면 치명적이다, 또한 중앙 데이터베이스가 있는 하드디스크에 문제가 생김녀 프로젝트의 모든 히스토리를 잃는다
* DVCS = 분산 버전 관리 시스템, 저장소를 전부 복제, 서버에 문제가 생기면 복제물로 다시 작업을 시작할 수 있다, 클라이언트 중에서 아무거나 골라도 서버를 복원할 수 있다, 모든 Checkout은 모든 데이터를 가진 진정한 백업, 게다가 대부분의 DVCS 환경에서는 리모트 저장소가 많이 존재할 수 있으므로 동시에 다양한 그룹과 다양한 방법으로 협업이 가능하다, 계층 모델 같은 중앙집중식 시스템으로는 할 수 없는 워크플로를 다양하게 사용할 수 있다
* Git은 데이터를 파일 시스템 스냅샷으로 취급하고 크기가 아주 작다, Git은 커밋하거나 프로젝트의 상태를 저장할 때마다 파일이 존재하는 그 순간을 중요하게 여긴다, Git은 데이터를 스냅샷의 스트림처럼 취급한다
* 어떤 파일의 현재 버전과 한 달 전의 상태를 비교해보고 싶을 때도 Git은 그냥 한 달 전의 파일과 지금의 파일을 로컬에서 찾는다
* 오프라인 상대이거나 VPN에 연결하지 못해도 막힘 없이 일 할 수 있다
* Git은 데이터를 저장하기 전에 항상 체크섬을 구하고 그 체크섬으로 데이터를 관리한다, 그래서 체크섬을 이해하는 Git 없이는 어떠한 파일이나 디렉토리도 변경할 수 없다
* 체크섬은 Git에서 사용하는 가장 기본적인 (Atomic) 데이터 단위이자 Git의 기본 철학이다, Git 없이는 체크섬을 다룰 수 없어서 파일의 상태도 알 수 없고 심지어 데이터를 잃어버릴 수도 없다
* 실제로 Git은 파일을 이름으로 저장하지 않고 해당 파일의 해시로 저장한다
* Git은 데이터를 데이터베이스에 추가할 뿐, 되돌리거나 데이터를 삭제할 방법이 없다
* Committed = 데이터가 로컬 데이터베이스에 안전하게 저장됐다는 것을 의미
* Modified = 수정한 파일을 아직 로컬 데이터베이스에 커밋하지 않은 것을 의미
* Staged = 현재 수정한 파일을 곧 커밋할 것이라고 표시한 상태를 의미
* Git 디렉토리는 Git이 프로젝트의 메타데이터와 객체 데이터베이스를 저장 하는 곳, 이 Git 디렉토리가 Git의 핵심, 다른 컴퓨터에 있는 저장 소를 Clone 할 때 Git 디렉토리가 만들어진다

#### Git으로 하는 일 ->
1. 워킹디렉토리에서 파일을 수정한다 
2. Staging Area에 파일을 Stage 해서 커밋할 스냅샷을 만든다
3. Staging Area에 있는 파일들을 커밋해서 Git 디렉토리에 영구적인 스냅 샷으로 저장한다.

* Git의 모든 기능을 지원하는 것은 CLI 뿐, GUI 프로그램의 대부분은 Git 기능을 전부 구현하지 않아서 비교적 단순하다 
* git config —list 명령을 실행하면 설정한 모든 것을 보여준다
* git config <key> 명령으로 Git이 특정 Key에 대해 어떤 값을 사용하는 지확인할수있다





