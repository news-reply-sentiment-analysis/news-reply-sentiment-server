# NOTE

아래의 가이드에 따라 개발하시죠

## 간단한 수준의 gitflow

간단한 수준의 gitflow를 사용하려고 합니다. 제가 작성한 글이 있는데 [이 글](https://github.com/xoxwgys56/chillin-out-in-seongsu/blob/main/topics/git/git-flow.md)을 참고하셔도 되고 아니면 아래의 글을 참고해주세요.

- https://techblog.woowahan.com/2553/
- https://guides.github.com/introduction/flow/

## 🤔 우리의 목표

우리가 사용하려는 목표는 `main`(release)와 `develop`을 구분하려고 합니다.  
단기적 목표(애플리케이션 구현, auth token 저장, api 구현 등)에 대해 구현하고, 각 기능이 완료되면 `main` branch로 `PR`을 만들고자 합니다.  

### develop branch

그렇다면, 그 이전에 `develop`에서는 무엇을 하려고하냐면..  
`develop`은 `main` branch로 가기 전 개발된 내용을 저장하는 용도로 사용하려고 합니다. 저랑 돈휘님은 각각의 로컬에서 개발을 하는데 하나의 브랜치를 사용하면 아무래도 conflict가 발생할 확률이 높아질 것 같아요.  
그러니 각각의 브랜치를 만들어서 사용하면 좋겠네요. 👨🏻‍💻  

### local branch

각각 브랜치를 만들 떄도 name convention을 쓰면 좋을 것 같아요.  
만약에 `feature/dw`라고 제 이름을 써서 만들면 알아보기 힘들잖아요.. 😅  
저는 `develop` 브랜치외에는 되도록 `<feature, docs, refactor ...>/<description>`같은 형태로 작성하고 있습니다. 이에 관해서 정규화된 방식은 제가 찾지 못해서 알게 된다면 공유해주세요. 🙏🏻

## semantic commit (optional)

semantic commit은 커밋을 작성할 때 유의미한 규칙을 정해서 하는 것이라고 이해하시면 되겠습니다. [이 링크](https://guides.github.com/introduction/flow/)를 보시면 아래와 같은 설명이 나와있는데요.  

```git
feat: add hat wobble
^--^  ^------------^
|     |
|     +-> Summary in present tense.
|
+-------> Type: chore, docs, feat, fix, refactor, style, or test.
```

여기서 사용되는 표현을 모두 사용하지 않더라도, `docs`, `feat`, `chore`, `refactor` 정도만 사용해주셔도 이해하기 편합니다. 사용하시면 아래와 같은 커밋 메세지를 작성하게 되죠.  

```git
docs: update README

add reference of django orm document
```

아시다시피, 첫번째 줄은 commit title이 되고, 두번째 라인 공백, 세번째 라인은 detail message가 됩니다.

## 🙃 그러면

내용을 정리하자면 아래와 같습니다.

---

## Conclusion

- use minimum? gitflow!
  - main = release : 배포된 기능
  - develop : 일정 수준 개발이 된 기능. 하지만 아직 배포되지 않음
  - feature, refactor, docs : develop 브랜치에 반영하기 위해 local 수준에서 진행하는 코드
- use semantic commit (optional)

---

## QnA

- 궁금한건 issue를 생성하여 물어봐주세요! (기록으로 남기려고요)