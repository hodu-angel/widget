# StickyHeader | 상단 고정 Container
![image](https://user-images.githubusercontent.com/90611410/191706934-29c9f17b-8c21-4104-b85b-88efb8706309.png) ![image](https://user-images.githubusercontent.com/90611410/191705924-7cf1bd5b-89d5-49a6-906a-5d3745aa3854.png)

쇼핑몰 등 웹 사이트의 카테고리가 페이지를 스크롤 할 때마다 붙어지는 것을 표현 할 수 있다.

- Scroll이 가능한 WIdget의 child로서 사용 가능하다.

![image](https://user-images.githubusercontent.com/90611410/191709047-23dd93df-da32-4b51-919f-5db5bbfc101a.png)


```
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextButton(
          onPressed: () {},
          child: const Text('Logo Image', style: TextStyle(color: Colors.black),),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: StickyHeader(
          header: Container(
            height: 50,
            width: double.infinity,
            color: Colors.green,
            child: const Text('header part'),
          ),
          content: Container(
            width: double.infinity,
            color: Colors.lightBlueAccent,
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1494256997604-768d1f608cac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1229&q=80',
                ),
                CachedNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1533743983669-94fa5c4338ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1092&q=80',
                ),
                CachedNetworkImage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1560114928-40f1f1eb26a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
              ],
            ),
          ),
        ),
      ),
    );
  }
```