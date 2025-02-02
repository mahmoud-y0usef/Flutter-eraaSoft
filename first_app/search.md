
### **📌 الفرق بين `StatelessWidget` و `StatefulWidget` في Flutter**
في **Flutter**، هناك نوعان رئيسيان من الـ **Widgets**:

1. **`StatelessWidget`** – عنصر ثابت لا يتغير عند إعادة بناء الواجهة.
2. **`StatefulWidget`** – عنصر متغير يمكن تحديثه عند تغيير القيم.

---

## **1️⃣ StatelessWidget**
🔹 يستخدم عندما لا تحتاج إلى تغيير البيانات أثناء تشغيل التطبيق.

### **🔹 مثال على `StatelessWidget`:**
```dart
import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateless Widget")),
      body: Center(child: Text("أنا عنصر ثابت!")),
    );
  }
}
```
✅ **المكونات هنا لا تتغير، يتم إنشاؤها مرة واحدة فقط.**

---

## **2️⃣ StatefulWidget**
🔹 يستخدم عندما تحتاج إلى تحديث البيانات ديناميكيًا عند تفاعل المستخدم.

### **🔹 مثال على `StatefulWidget`:**
```dart
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++; // تحديث قيمة العداد
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("عدد الضغطات: $_counter"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("اضغط لزيادة العدد"),
            ),
          ],
        ),
      ),
    );
  }
}
```
✅ **يتم تحديث قيمة `_counter` عند الضغط على الزر بفضل `setState()`.**

---

## **🆚 الفرق بين `StatelessWidget` و `StatefulWidget`**
| **الميزة**          | **StatelessWidget** ✅ | **StatefulWidget** 🔄 |
|--------------------|------------------|------------------|
| إمكانية التحديث    | ❌ لا يتغير         | ✅ يتغير |
| الأداء           | ⚡ أسرع             | ⏳ أبطأ قليلًا |
| التخزين         | ❌ لا يحفظ الحالة   | ✅ يحفظ الحالة |

🔹 **استخدم `StatelessWidget` عندما لا تحتاج إلى تغييرات في البيانات.**  
🔹 **استخدم `StatefulWidget` عندما تحتاج إلى تحديثات ديناميكية.**

---

### **📌 كيف تختار بينهما؟**
✔ إذا كنت تعرض **نصًا ثابتًا أو أيقونة** → `StatelessWidget` ✅  
✔ إذا كنت تعرض **عدادًا أو عنصرًا متغيرًا** → `StatefulWidget` 🔄  