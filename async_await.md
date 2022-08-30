# Async / await
- **비동기 처리 방식**
순차적으로 코드가 실행되지만 기다림이 필요한 경우, 기다림 동안에 다른 코드를 먼저 실행한 후 해당 코드를 처리하는 처리방식을 말한다.

- **특징**
await는 async를 명시한 method 안에서 사용이 가능하다.
await는 '기다리다'의 의미로 비동기 처리 요청 후 결과가 올 때까지 기다리라는 method이다.
async는 Future 타입의 method에만 붙일 수 있다는 규칙이 있다.

[참고] https://bangu4.tistory.com/328
[참고] https://pcseob.tistory.com/8
[참고] https://www.youtube.com/watch?v=RAOoVvTQeAI&list=PLKX8meu-fzd2gjZkxns-TOgqPCbfqSUo0&index=27

```
ElevatedButton(
 child: const Text('try'),
 onPressed: () async {
 print('1. today');
  await Future.delayed(const Duration(seconds: 3), () {
   print('2. Weather: Sunny');
  });
 print('3. today (Sunny)');
},
)
```
위의 코드는 'try' 버튼 클릭시 1. today가 먼저 출력되고 await method에 의하여 3초 이후에 2. Weather: Sunny와 3.today (Sunny)가 출력된다.
