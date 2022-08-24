# Flutter 파일 구조
lib 디렉터리에서는 models, screens(pages), service(providers), utils, widgets 폴더로 나눌 수 있다.

- models
앱 전체에서 사용되는 데이터들을 저장하는데 사용된다.
사용자 데이터나 정보들을 저장한다,

- screens(pages)
사람에 따라서 pages로 작성하는 사람도 있다.
화면의 UI들을 보관하는 폴더로, 특정 기능마다 화면 분류가 필요해 질 경우, 세부적으로 폴더를 더 둘 수 있다.

- widgets
UI를 담당하는 위젯들을 모아두는 폴더이다. screens폴더와의 차이점으로 screens폴더가 화면 전반을 담당한다면, widgets는 그 화면의 부분 요소들 중 재사용되는 UI들을 모아둔 곳이다.

- utils
앱에서 사용하는 function, logic을 모아두는 폴더이다.

- service(providers)
API사용, 앱 외부의 다른 서비스들과 앱을 연결할 때 사용하는 내용들을 모아두는 폴더이다.
flutter의 패키지 중 하나인 provider와는 다른 것이다.