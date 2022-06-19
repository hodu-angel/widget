## WillPopScope
> 앱 하단의 뒤로가기 버튼 클릭 시 action.
> onWillPop: false이면 마지막 페이지일 때 뒤로가기를 아무리 눌러도 앱이 종료되지 않는다. true이면 마지막페이지일 때 뒤로가기버튼 시 앱이 종료된다.

- controoler.dart
```
  Future<bool> willPopAction() async {
  return showDialog(
          context: Get.context!,
          builder: (context) => MessagePopup(
              title: '시스템',
              message: '종료하시겠습니까?',
              okCallback: () {
                exit(0);
              },
            cancelCallback: Get.back,
          ),
      );
      //if(잔여페이지여부가 존재한다면){ return false  }
      else {return true}
```

- messagePopup.dart
```
class MessagePopup extends StatelessWidget {
  final String? title;
  final String? message;
  final Function()? okCallback;
  final Function()? cancelCallback;

  const MessagePopup({
    Key? key,
    required this.title,
    required this.message,
    required this.okCallback,
    this.cancelCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, //투명
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              width: Get.width * 0.7,
              child: Column(
                children: [
                  Text(
                    title!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    message!,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: okCallback, child: Text('확인')),
                      const SizedBox(width: 10),
                      ElevatedButton(
                          onPressed: cancelCallback,
                          child: Text('취소'),
                          style:
                              ElevatedButton.styleFrom(primary: Colors.grey)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
```