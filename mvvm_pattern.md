# MVVM Pattern
Microsoft의 엔지니어인 Ken Cooper와 Ted Peters에 의해 발견되었다.
MVC Pattern과 마찬가지로 Model과 View를 가지고 Controller 대신 ViewModel이라는 개념을 도입하였다.

[참고] https://wnstkdyu.github.io/2018/04/20/mvvmdesignpattern/
<br>

- 구성
Model: 사용자에게 보여주고자 하는 정보를 관리한다.
View: Model을 표시하고 사용자에게 입력값 받기 등의 행동에 대한 전반적인 UI를 담당한다.
ViewModel: Model을 생성하여 View에게 전달한다.

[참고] https://m.blog.naver.com/lmj_java/222084721535

![image](https://user-images.githubusercontent.com/90611410/187217152-0bb7b8a8-ce9b-4957-8171-9142ea28c195.png)
View는 ViewModel을 알지만 ViewModel은 View를 알지못한다. 또한 ViewModel은 Model을 알지만 Model은 ViewModel을 알지 못한다. 협업 할 때 UI구현파트와 비즈니스 모델구현파트가 ViewModel과 Model의 형태를 공유하고 있다면 독립적으로 작업할 수 있다는 것을 의미한다.
