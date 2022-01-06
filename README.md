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

https://user-images.githubusercontent.com/24707229/148342947-2b8868c3-89b6-4127-88b8-4a97471c17d5.mp4
</div></details>

<details><summary>FlowChart Image</summary><div markdown="1">

![계산기](https://user-images.githubusercontent.com/24707229/123361600-56105680-d5aa-11eb-989a-1a1b583972bf.png)
</div></details>

## Troubleshootings
<details><summary>연산자와 피연산자를 추상화한 프로토콜 타입으로 관리하기</summary><div markdown="1">

선택한 피연산자(숫자)와 연산자(+-*/)를 선택하면 두 요소를 큐에 쌓는 형태로 계산 큐를 만들고 등호(=)를 선택하면 큐의 모든 연산을 후위 연산으로 변형해서 입력 순서에 맞게 모든 연산을 수행함.
중위연산 -> 후위연산으로 변경하는 부분이 있기 때문에 연산자와 피연산자를 같은 요소로 큐에 담아 관리하는 아이디어를 적용  
<img width="309" alt="추상화 묶기" src="https://user-images.githubusercontent.com/24707229/148342990-27ef0f64-d835-475d-8948-9215e3bf0120.png">

큐에 요소를 넣을때 연산자와 피연산자를 하나의 프로토콜 타입으로 업캐스팅해서 인큐  
<img width="682" alt="추상화 인큐" src="https://user-images.githubusercontent.com/24707229/148343013-7de8f5e1-4e35-4b3e-a059-b9476c72d973.png">

</div></details>
<details><summary>코드로 UIElement 추가하기</summary><div markdown="1">

연산을 추가할 때마다 추가되는 Label을 생성해서 subView를 추가하는 구현을 런타임에 동작하도록 구현
<img width="1035" alt="Screen Shot 2022-01-06 at 4 09 58 PM" src="https://user-images.githubusercontent.com/24707229/148343326-98d208f2-cdc8-4731-bb75-69f436d74ead.png">
    
subViews 스택이 쌓여서 스크롤뷰가 최상단을 가리키기 때문에 focus를 이동하는 구현도 시도해봄
</div></details>
<details><summary>UnitTest 적용해보기</summary><div markdown="1">

테스트 단위에 대해 고민
실패케이스와 성공케이스 분리를 통해 기능 검증 수준을 올림
give-when-then 도입해서 테스트 케이스를 구현
<img width="537" alt="테스트 " src="https://user-images.githubusercontent.com/24707229/148343033-eb6acf54-712e-4186-9794-5c5c122f580a.png">
</div></details>
<br>
