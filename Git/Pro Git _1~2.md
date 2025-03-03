# Pro Git _1~2
### ### Git의 기초
**빈칸을 채우시오**
1.  데이터를 스냅샷의  `스트림` 처럼 취급함

2. CVCS와 달리 대부분의 모든 명령을 `로컬`에서 실행

3. 오프라인 상태여도 `커밋`을 할 수 있으며 네트워크 상태에 따라 속도도 영향 받지 않는다.

**다음이 설명하는 걸 쓰시오**
1. Git에서 사용하는 가장 기본적인 데이터 단위이자 Git의 기본 철학 : `체크섬`

**각 설명이 나타내는 Git의  3가지 상태(영어)를 쓰셈**
1. 데이터가 로컬 데이터베이스에 안전하게 저장됐다는 것으 의미하는 상태 : `Committed`
2. 수정한 파일을 아직 로컬 데이터베이스에 커밋하지 않은 상태를 의미 : `Modified`
3. 현재 수정한 파일을 곧 커밋할 것이라고 표시한 상태 : `Staged`

**다음이 설명하는 걸 쓰시오**
* Git 디렉토리에 존재함
* 단순한 파일이고 곧 커밋할 파일에 대한 정보를 저장함
* Index라고도 함
	답: `Staging Area`

## ## Ch2
**다음이 설명하는 Git 명령을 쓰시오**
* 저장소에 필요한 뼈대 파일이 들어있는 .git이라는 하위 디렉토리를 만든다.
답 : `$ git init`

* 파일 상태 확인하는 명령
답 : `$ git status`

* Modified이고 Tracked인 파일을 Staged 상태로 변경하는 명령
답 : `$ git add`

**빈칸을 채우시오(영어)**
* `Tracked` - 이미 스냅샷에 포함돼 있던 파일
	* Unmodified
	* Modified
	* Staged
* `Untracked` -  스냅샷에도 Staging Area에도 포함되지 않은 파일 

**다음이 설명하는 걸 쓰시오**
* Git이 관리할 필요가 없는 파일을 명시해 놓는 파일 : `.gitignore`

* 워킹 디렉토리에 있는 것과 Staging Area에 있는 것을 비교하는 명령 
답 : `$ git diff`

* 저장소에 커밋한 것과 Staging Area에 있는 것을 비교한다.
답 : `$ git diff --cached`

* 워킹 디렉터리에 있는 파일과 Staging Area에서도 파일을 삭제하기 위한 명령
답 : `$ git rm`

* Staging Area에서만 파일을 삭제하기 위한 명령
답 : `$ git rm --cached`

**다음이 나타내는 3줄의 명령을 한 줄로 줄이셈**
```
$ mv README.md README
$ git rm README.md
$ git add README
```

답 : `$ git mv README.md README							`


**다음이 설명하는 걸 쓰시오**
* 너무 일찍 커밋했거나 어떤 파일을 빼먹었을 때 그리고 커밋 메시지를 작못 적었을 때 사용하는 커밋 옵션
답 : `$ git commit --amend`

*  파일 상태를 Unstage로 변경하는 명령
답 : `$ git reset`

* git pull과 git fetch의 차이점을 쓰시오
Git pull은 리모트 저장소에서 파일을 로컬로 저장하고 자동으로 Merge도 하지만 Git fetch는 Merge를 수동으로 해야 한다.

**별표 채우셈(태그 두 종류)**
* `Lightweight` 
* 단순히 특정 커밋에 대한 포인터. 브랜치처럼 가리키는 지점을 최신 컷으로 이동시키지 않음 

* `Annotated`
	* Git 데이터베이스에 태그를 만든 사람의 이름
	* 이메일과 태그를 만든 날짜, 그리고 태그 메시지도 저장한다.
	* GPU (GNU Privacy Guard)로 서명할 수도 있다.
	* 모든 정보를 저장해둬야 할 때에만 Annotated 태그를 추천한다. 
	* 다른 정보를 저장하지 않는 단순한 태그는 Lightweight 가 낫다
