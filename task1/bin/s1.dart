// 1. What is the difference between const and final ?


/*
  الفرق بين const و final

  1. final
    -  تعني أن المتغير يمكن تعيين قيمته مرة واحدة فقط أثناء وقت التشغيل (Runtime)
    - القيمة يتم تحديدها عند أول استخدام أو عند تشغيل التطبيق
    - يمكن أن تحتوي على قيم متغيرة أثناء التشغيل ولكن بمجرد تعيينها، لا يمكن تغييرها



  2. const
    - تعني أن المتغير ثابت ويجب أن يتم تعيين قيمته أثناء وقت التصنيف (Compile-Time)
    -  يجب أن تكون القيمة ثابتة ولا تعتمد على التشغيل
    - تستخدم مع القيم التي لا تتغير أبدًا
*/