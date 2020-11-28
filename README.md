



## 프로젝트 타이틀 : Eody

> 만남 장소 추천 웹 애플리케이션


### 프로젝트 주제 및 내용

* **만남 장소 추천 플랫폼 서비스**

* 사람간 만남 약속에 앞서 참석 인원들의 거리, 목적 등 여러 요인을 고려하여 만남 장소를 선정하기 어려운 문제를 발견했습니다. 이에 **장소 탐색을 원하는 고객, 장소를 운영하는 사업자를 중개하는 웹 애플리케이션**을 개발하고자 합니다.

* **장소를 탐색하는 고객**에게는 **3가지 시나리오\***에 해당하는 지역 및 장소 추천 기능, 장소 상세 정보와 리뷰, 평점, 예약 기능을 제공합니다.

- 참석자 거리 우선 탐색, 내 위치 주변 탐색, 구체적 희망 지역 탐색

*  **장소를 운영하는 사업자**에게는 장소 관리/광고/통계 기능, 사업관리 지식 콘텐츠 열람, 예약/리뷰 관리 기능을 제공하고, 플랫폼 전체 장소 데이터 입출력을 연동합니다.


### 팀원간 역할 분담 및 일정

![일정](https://user-images.githubusercontent.com/24764210/93493335-c1a40400-f946-11ea-99c7-0dc1f91a77d1.png)


### 시스템 구성도

![시스템구성도](https://user-images.githubusercontent.com/24764210/93493549-fb750a80-f946-11ea-8117-9b2b0628021a.png)


### 사용 기술

![사용기술](https://user-images.githubusercontent.com/24764210/93493562-fdd76480-f946-11ea-9be0-e244bc6fdc9e.png)


### ERD

![ERD](https://user-images.githubusercontent.com/24764210/93493620-121b6180-f947-11ea-91d4-e67a14dc2948.png)


### 핵심 기능

#### 1. 회원가입 기능

  #### 1-1. 아이디 중복 체크

  * 사용자(SEARCHER)의 아이디가 이미 가입되어 있다면 `이미 사용 중인 아이디입니다.`라는 문구를 표시



<img width="1680" alt="idcheck1" src="https://user-images.githubusercontent.com/46706670/100513764-fa682100-31b2-11eb-9e76-d723f840f924.png">



  * 사용자(SEARCHER)의 아이디가 가입되어 있지 않다면 `사용 가능한 아이디 입니다.`라는 문구를 표시

<img width="1680" alt="idcheck2" src="https://user-images.githubusercontent.com/46706670/100513773-1370d200-31b3-11eb-88ec-6a8be553fddc.png">

  #### 1-2. 비밀번호 확인

  * 사용자(SEARCHER)의 비밀번호 입력을 이중으로 받아 두 개의 비밀번호가 같을 시 `비밀번호가 일치합니다!`라는 문구를 표시

<img width="1680" alt="pwdcheck1" src="https://user-images.githubusercontent.com/46706670/100513794-34d1be00-31b3-11eb-976f-04087fd717b3.png">



  * 사용자(SEARCHER)의 비밀번호 입력을 이중으로 받아 두 개의 비밀번호가 다를 시 `비밀번호가 다릅니다!`라는 문구를 표시

<img width="1680" alt="pwdcheck2" src="https://user-images.githubusercontent.com/46706670/100513801-3dc28f80-31b3-11eb-9d0a-41cd108ef613.png">





#### 2. 거리우선탐색 구현 방안

#### 2-1 초기 아이디어

> (`장소탐색 고객`) 참석자의 출발지간 거리를 최우선으로 만남에 적합한 지역 탐색 알고리즘

![거리탐색](https://user-images.githubusercontent.com/24764210/93493568-ff089180-f946-11ea-9f43-4087d6b23d9a.png)

##### 1) 참석자들의 위도와 경도 입력

##### 2) 참석자 좌표와 갖고 있는 지하철역 데이터, 두 점의 거리 계산 반복

##### 3) 지하철역 데이터마다 참석자 좌표들과의 평균 거리 계산

##### 4) 참석자들의 출발지를 제외한 상위 3개 지역 반환

![1-r](https://user-images.githubusercontent.com/24764210/93493662-20697d80-f947-11ea-944e-e0b4b6cad1ec.png)

![1](https://user-images.githubusercontent.com/24764210/93493659-1f385080-f947-11ea-8d8b-4da563442adc.png)



#### 2-2 알고리즘 성능 개선

<img width="1242" alt="improveidea" src="https://user-images.githubusercontent.com/46706670/100513818-53d05000-31b3-11eb-8b5e-789fb8e70572.png">



* 대부분의 경우 출발지들의 `외접사각형` 내에 결과 지역이 위치한다는 특성을 활용하여, <u>출발지들의 외접사각형 내부 범위만 거리 비교 연산을 수행하도록 구현</u>

* 사각형이 아닌 출발지들을 점으로 연결한 다각형으로 영역을 설정할 경우, Overfitting이 발생하여 지나치게 좁은 범위만 탐색하는 문제 야기

  

<img width="527" alt="codeimprove" src="https://user-images.githubusercontent.com/46706670/100513833-69de1080-31b3-11eb-87c0-723dee8adbc2.png">

	* Filtered 영역(외접사각형)내 결과로 반환할 지역이 3개 미만일 경우 3개 지역을 반환할 수 없으므로, 이전 방식으로 모든 지하철역 데이터 대상 거리 비교 연산 수행하도록 구현



<img width="1232" alt="test1" src="https://user-images.githubusercontent.com/46706670/100513850-7cf0e080-31b3-11eb-9b41-c309055bfeea.png">





#### 3. Searcher/Myroom

> JSTL의 forEach, choose 구문을 활용
> 예약 데이터의 상태(Shop 운영자의 승인)에 따라 동적으로 예약 데이터 Display.

![2-r](https://user-images.githubusercontent.com/24764210/93493669-22334100-f947-11ea-8153-f91a2cd4739f.png)

<img width="1299" alt="bookingcode" src="https://user-images.githubusercontent.com/46706670/100513861-867a4880-31b3-11eb-89c2-924480094630.png">





#### 4. Searcher/Review 작성

> multipartFile 을 활용한 리뷰 작성 내 여러 이미지 파일 업로드 처리

![3-1](https://user-images.githubusercontent.com/24764210/93493681-23fd0480-f947-11ea-9f6e-6ab60b88d173.png)

#### 5. Searcher/Myroom Review List

> Ajax를 이용한 JSON 비동기 데이터 송수신

![3-2](https://user-images.githubusercontent.com/24764210/93493686-25c6c800-f947-11ea-9989-02925139d030.png)

#### 6. 기상청 외부 API

> 기상청 API로 날씨데이터를 주기적으로 요청하여 화면 Display

![5](https://user-images.githubusercontent.com/24764210/93493700-295a4f00-f947-11ea-8b9d-2b22b8bcbcc2.png)

#### 7. 카카오지도 외부 API

> Searcher에 의해 선택된 지역(지하철역)의 지도 Display & 마커 표시

![6](https://user-images.githubusercontent.com/24764210/93493708-2b241280-f947-11ea-811d-f2c91ad4bcd8.png)


### 화면 구성

#### * SEARCHER

##### - 메인

![main1](md-images/100033339-60644980-2e3d-11eb-91d0-f4f9f4b2ec9d.png)

![main2](md-images/100033412-7e31ae80-2e3d-11eb-9fdd-c39a3d912c8f.png)

![main3](md-images/100033461-999cb980-2e3d-11eb-84c1-71353604466f.png)

##### - 로그인

![login](md-images/100033504-b33e0100-2e3d-11eb-9b43-6ac6fd52d848.png)

##### - 회원가입

![signup](md-images/100033591-d23c9300-2e3d-11eb-80bb-b7e814708f33.png)

##### - 지역 및 모임 추천을 위한 정보 입력

##### - 중간 지점으로 찾기

![search1](md-images/100033661-fac48d00-2e3d-11eb-9385-691a68c37527.png)

##### - 지역으로 검색하기 결과

![search2](https://user-images.githubusercontent.com/24764210/93496020-b56d7600-f949-11ea-9535-df7ad4132992.jpg)

##### - 지역 추천 

![search3](md-images/100033942-7cb4b600-2e3e-11eb-8f95-c64a6eb4e912.png)

##### - 지역 내 장소 추천 

![search4](md-images/100034036-ad94eb00-2e3e-11eb-8bac-6e2691b9edb6.png)

##### - 상호검색

![search5](md-images/100034118-dae19900-2e3e-11eb-95cb-bc4eb8f952e0.png)

##### - 장소 상세 및 예약

![I9](https://user-images.githubusercontent.com/24764210/93496030-b69ea300-f949-11ea-878d-474b7f1baf3c.png)

##### - Myroom (예약내역 확인)

![Myroom1](md-images/100034319-4af01f00-2e3f-11eb-96f8-e0637741d949.png)

##### - Myroom (리뷰 쓰기)

![Myroom2](md-images/100034365-63603980-2e3f-11eb-873e-d8b1073b722d.png)

##### - Myroom (내 정보 수정)

![myroom3](md-images/100034428-81c63500-2e3f-11eb-8422-7bb2a1694212.png)

#### * MANAGER

##### - 메인

![I12](https://user-images.githubusercontent.com/24764210/93496035-b7cfd000-f949-11ea-98b1-585a47dff5fc.png)

##### - 로그인

![I13](https://user-images.githubusercontent.com/24764210/93496037-b7cfd000-f949-11ea-9ee0-f433b30dc5fa.png)

##### - 로그인 성공 시 메인

![I14](https://user-images.githubusercontent.com/24764210/93496040-b8686680-f949-11ea-8a32-f000999d3981.png)

##### - 가게 업로드

![I15](https://user-images.githubusercontent.com/24764210/93496046-b8686680-f949-11ea-81cb-118164c0674c.png)

##### - 가게 등록 후 메인

![I16](md-images/100034720-2779a400-2e40-11eb-9ef8-cea9dd2ff347.png)

##### - 가게 상세

![I19](md-images/100034821-5abc3300-2e40-11eb-8651-5c83a7535e83.png)

##### - 가게 정보 수정

![I20](md-images/100034896-80e1d300-2e40-11eb-8292-19d053595e8f.png)

##### - 장소 상세 화면(예약 현황)

![I21](https://user-images.githubusercontent.com/24764210/93496054-ba322a00-f949-11ea-8f98-2f3acec0e469.png)

##### - 장소 상세 화면(리뷰 현황)

![I22](https://user-images.githubusercontent.com/24764210/93496055-ba322a00-f949-11ea-9b0d-943197c83ccb.png)

##### - 가게 현황(조회수, 평균 평점, 예약 수)

![I23](https://user-images.githubusercontent.com/24764210/93496057-bacac080-f949-11ea-9523-76ccaf8a5e3c.png)

