## iOS 커리어 스타터 캠프

### 계산기 프로젝트 저장소

# FlowChart



# Caculator
## Information
* 프로젝트 기간 : 2021.06.21. ~ 2021.07.02.
* 프로젝트 인원 : 2명 Marco(@Keeplo), Charlotte (@yaewonLee)
* 프로젝트 소개 
    > 연산하려는 연산자와 피연산자를 큐에 쌓아 두고 출력해주고 등호를 선택할 때 한번에 모든 연산을 진행해주는 계산기
* Pull Requests
    * [Step 1](https://github.com/yagom-academy/ios-calculator-app/pull/38)
    * [Step 2](https://github.com/yagom-academy/ios-calculator-app/pull/42)
    * [Step 3](https://github.com/yagom-academy/ios-calculator-app/pull/52)
### Tech Stack
* Swift 5.4
* Xcode 12.5
* macOS 10.15
### Demo
<details><summary>Demo Image</summary><div markdown="1">

</div></details>

<details><summary>FlowChart Image</summary><div markdown="1">

![계산기](https://user-images.githubusercontent.com/24707229/123361600-56105680-d5aa-11eb-989a-1a1b583972bf.png)
</div></details>

## Troubleshootings
<details><summary>연산자와 피연산자를 추상화한 프로토콜 타입으로 관리하기</summary><div markdown="1">

선택한 피연산자(숫자)와 연산자(+-*/)를 선택하면 두 요소를 큐에 쌓는 형태로 계산 큐를 만들고 등호(=)를 선택하면 큐의 모든 연산을 후위 연산으로 변형해서 입력 순서에 맞게 모든 연산을 수행함.
중위연산 -> 후위연산으로 변경하는 부분이 있기 때문에 연산자와 피연산자를 같은 요소로 큐에 담아 관리하는 아이디어를 적용

큐에 요소를 넣을때 연산자와 피연산자를 하나의 프로토콜 타입으로 업캐스팅해서 인큐

</div></details>
<details><summary>중위연산 스택을 후위연산으로 변환해서 연산하기</summary><div markdown="1">

한 줄의 출력만 제공하는 기존의 계산기와 달리,
사용자가 추가한 연산자와 피연산자를 큐에 쌓고 화면에 모두 출력해줌.
중위연산 순서의 연산자와 피연산자를 후위연산으로 변형해서 출력되어 있는 모든 연산을 순서대로 처리.


</div></details>
<details><summary>UnitTest 적용해보기</summary><div markdown="1">

테스트 단위에 대해 고민
실패케이스와 성공케이스 분리를 통해 기능 검증 수준을 올림
give-when-then 도입해서 테스트 케이스를 구현

</div></details>
<br>