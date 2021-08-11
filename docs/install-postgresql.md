# Install postgresql

on Windows 10 using `windows terminal`.

## Prerequisites

`postgresql`을 사용하기 위해서, `psycopg2`을 사용할 것 입니다. 하지만 `pip install` 중에 에러가 발생할 수 있습니다.  

```shell
 In file included from psycopg/psycopgmodule.c:28:
    ./psycopg/psycopg.h:35:10: fatal error: Python.h: No such file or directory
       35 | #include <Python.h>
          |          ^~~~~~~~~~
    compilation terminated.
```

이 경우 아래의 방법으로 해결할 수 있습니다.  

```shell
sudo apt-get install python3-dev
```

---

## References

- resolve install `psycopg2`
    - https://stackoverflow.com/questions/19843945/psycopg-python-h-no-such-file-or-directory