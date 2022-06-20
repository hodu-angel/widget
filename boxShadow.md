# boxShadow
- box에 입체감 주기

```
child: Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3, //상자의 팽창정도
                blurRadius: 3, //흐리게 만들기
                offset: const Offset(0, 0),
            )
        ]
    ),
)
```