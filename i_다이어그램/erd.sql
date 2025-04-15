### i_다이어그램 >>> erd ###

### ERD 다이어그램 ###
# : Entity Relationship Diagram
# : Entity(개체, 존재하는 것)들의 Relationship(관계)를 나타낸 Diagram(도표)
# - 데이터(엔티티)와 데이터 간의 관계를 시각적으로 표현한 도표

# 1. 사용 목적
-- 실무에서 DB 설계 전 정보 분석과 설계 방향을 명확하게 정리
-- 팀원 간 효율적인 의사소통 도구

# 2. ERD 구성요소
-- 1) 엔티티(Entity)
# 의미 : 데이터베이스에서 관리되어야 하는 대상
# 조건 : 고유하게 식별가능해야 함 (예. 학번, 주민번호 등)
# 형태 : 사각형 형태, 엔티티명은 사각형 안에 명시

-- 2) 속성(Attribute)
# 의미 : 엔티티를 설명하는 정보의 항목
# 형태 : 타원형(원), 속성명은 원 안에 명시

# cf) 속성 유형
# - 기본 속성: 일반적인 속성(이름, 나이)
# - 기본키(PK): 유일하게 식별하는 키
# - 외래키(FK): 다른 테이블의 PK를 참조하는 키

-- 3) 관계(Relationship)
# 의미 : 두 개 이상의 엔티티 간의 연관성
# 형태 : 마름모 또는 '선'

# cf) 관계 형태
# - 1:1(일대일) ex) 사람-여권
# - 1:N(일대다) ex) 교수-강의
# - N:M(다대다) ex) 학생-과목 >> 중간 테이블이 필요!

### 실무에서 ERD 표현 규칙 ###
# 관계의 방향과 구성

# 부모 - 자식 관계
# 부모 PK를 자식이 FK로 가짐
# >> 실선: 자식 테이블에서 부모 PK를 PK+FK로 사용 (부모가 있어야만 자식이 생기는 경우)
# >> 점선: 자식 테이블에서 부모 PK를 FK로만 사용 (부모가 없어도 자식이 생기는 경우)

# ex) 학생과 수강내역 테이블
# 학생: 부모 테이블(학번 PK, 학생명 ... 등)
# 수강 내역: 자식 테이블(수강내역ID PK, 학번 FK, 강의명 등)

# 관계 >> 1명의 학생은 여러 개의 수강 내역을 가질 수 있음 (1:N 관계)

# ex) 주문과 주문상세내역 테이블
# 주문: 부모 테이블(주문ID PK, 주문일시 등)
# 주문상세내역: 자식 테이블(주문ID PK, 주문상품 ... )

# 관계 >> 자식 테이블의 기본 키가 부모의 기본키를 포함하거나 그대로 사용

### ERD 다이어그램 생성 방법 ###
# 1. 테이블 생성(DDL)
# 2. 상단 탭(Database) 클릭
#		> Reverse Engineer ... 클릭
# 3. 연결하고자 하는 Connection 선택 > Next
# 4. 생성하고자 하는 스키마(Database) 선택 > Next
# 5. Execute로 생성




















