# computorv1
이 프로그램은 다항식을 분석하여 정리된 형태의 방정식, 방정식의 차수, 방정식의 해를 계산하고 출력합니다.


## 프로젝트 개요

- 입력된 다항식을 파싱하여 추상 구문 트리로 변환.
- 정리 가능한 상수 항과 변수 항을 구분하여 정리된 형태로 출력.
- 다항식의 차수를 계산하고 출력.
- 2차 방정식의 판별식을 계산하여 해의 존재 여부와 개수를 판단.
- 가능한 경우 해를 계산하고 출력.


[프랫 파서(연산자 우선순위 파서)](https://en.wikipedia.org/wiki/Operator-precedence_parser)를 사용하여 다항식 파싱을 구현하였고 세부 구현은 [Simple but Powerful Pratt Parsing](https://matklad.github.io/2020/04/13/simple-but-powerful-pratt-parsing.html) 게시물을 참조했습니다.


## 실행
빌드에는 **Rust**와 **Cargo**, **Make**가 필요합니다.

### 1. 빌드
```bash
Make computorv1
```

### 2. 실행
```bash
$> ./computor "5 * X^0 + 4 * X^1 - 9.3 * X^2 = 1 * X^0"
```

### 3. 결과
```
Reduced form: 4 * X^0 + 4 * X^1 - 9.3 * X^2 = 0
Polynomial degree: 2
The solutions are:
0.905239
-0.475131
```

### 3. **입력 형식**
프로그램은 **다항식 표현식**을 받아들입니다. 지원하는 연산자와 변수는 다음과 같습니다:

- **연산자**: `+`, `-`, `*`, `/`, `^` (제곱)
- **변수**: `X`, `Y`와 같은 단일 문자 변수.
- **괄호**: `(`, `)`로 묶은 표현식.
