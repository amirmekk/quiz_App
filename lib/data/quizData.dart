import 'package:flutter/material.dart';

class QuizElement {
  String question;
  List<String> answers;
  String correctAnswer;
  int wi7da;
  QuizElement(
      {@required this.answers,
      @required this.correctAnswer,
      @required this.question,
      @required this.wi7da});
}

List<QuizElement> quiz1 = [
  QuizElement(
    question: ' بريجنيف بوند اليتش',
    answers: [
      'رئيس الاتحاد السوفييتي من 1924 - 1953 تميزت فترة حكه الفردية والتشدد في نظر الغرب واجه المخطط الأمريكية بمخططات مضادة منها الكومنفورم وحلف وارسو ',
      'اصغر رئيس للو . م . أ 1961 1963 وهو صاحب مشروع ابولو الفضائي في عهده وقعت أزمة كوبا 1962 عمل على تحسين أوضاع السلام ما عرضه للقتل',
      'رئيس الو . م . أ 1945 -  1953 الآن بقنبلة هيروشيما وناغازاكي مؤيد الهجرة اليهودية إلى فلسطين و مفجر الحرب الباردة بإعلانه لسياسة الاحتواء و التي تطورت إلى سياسة ملء الفراغ ',
      ' رئيس الاتحاد س خلفا الخروتشون 19 , 1982 معروف بمبدئه ( مبدأ بريجنيف كان وراء العديد من التدخلات العسكرية السوفيتية في الخارج مثل براغ 1968 أفغانستان 1978 .'
    ],
    correctAnswer:
        ' رئيس الاتحاد س خلفا الخروتشون 19 , 1982 معروف بمبدئه ( مبدأ بريجنيف كان وراء العديد من التدخلات العسكرية السوفيتية في الخارج مثل براغ 1968 أفغانستان 1978 .',
    wi7da: 1,
  ),
  QuizElement(
    question: '24 / 10 / 1945 م',
    answers: [
      ' تاسيس هيئة الامم المتحدة',
      'مشروع جورج مارشال',
      ' إنشاء مكتب الكومنفورم',
      'ميثاق الأطلسي بين بريطانيا والولايات المتحدة الأمريكية'
    ],
    correctAnswer: ' تاسيس هيئة الامم المتحدة',
    wi7da: 1,
  ),
  QuizElement(
    question: 'الاشتراكية',
    answers: [
      'هي صراع اديولوجي حضاري و مصلحي عرفه العالم بعد الح ع 2 حتى سنة 1990 بين المعسكرين استعملت فيه مختلف الوسائب باستثناء المواجهة العسكرية المباشرة بين و م أ و اتحاد السوفيتي ، بغية الحصول على مصالح مادية ومعنوية',
      ' نظام شمولي يقوم على هيمنة الدول على مناحي الحياة و مناهض للرأسمالية تبناها الاتحاد السوفييتي بعد نجاح الثورة البلشفية ',
      'مذهب اقتصادي و اجتماعي يرتكز على مبدا الحرية الفردية ويستبد أي تدخل للدولة في الشؤون الاقتصادية',
      'هي سياسة تقوم على تأسيس تكتلات عسكرية تضم دولا ذات مصالح مشتركة بزعامة إحدى القوتين منها الناتو - حلف بغداد - وارسو'
    ],
    correctAnswer:
        ' نظام شمولي يقوم على هيمنة الدول على مناحي الحياة و مناهض للرأسمالية تبناها الاتحاد السوفييتي بعد نجاح الثورة البلشفية ',
    wi7da: 1,
  ),
  QuizElement(
    question: '16 جويلية 1945 م',
    answers: [
      ' انتصار الثورة الشيوعية بقيادة ماو تسي تونغ وقيام جمهورية الصين الشعبية',
      ' تأسيس لجنة أمن الدولة السوفياتية',
      'المصادقة على ميثاق الأمم المتحدة',
      ' إمتلاك الو . م . أ السلاح الذري'
    ],
    correctAnswer: ' إمتلاك الو . م . أ السلاح الذري',
    wi7da: 1,
  ),
  QuizElement(
    question:
        'رئيس الو . م . أ 1945 -  1953 الآمر برمي قنبلة هيروشيما وناغازاكي مؤيد الهجرة اليهودية إلى فلسطين و مفجر الحرب الباردة بإعلانه لسياسة الاحتواء و التي تطورت إلى سياسة ملء الفراغ ',
    answers: [' هاري ترومان', 'خروتشوف نيكيتا', ' رونالد ريغن', 'ستالين جوزيف'],
    correctAnswer: ' هاري ترومان',
    wi7da: 1,
  ),
  QuizElement(
    question: 'مشروع جورج مارشال',
    answers: [
      '05 جوان 1947 م',
      '27 ديسمبر 1979 م',
      '12 / 12 / 1943 م ',
      '23 أكتوبر 1954 م'
    ],
    correctAnswer: '05 جوان 1947 م',
    wi7da: 1,
  ),
  QuizElement(
    question: 'الغرب',
    answers: [
      'القطبية الثنائية',
      'الدول الديمقراطية الرأسمالية التي تقع غرب أوربا وكذلك الى جانب الو . م . الأمريكية',
      'مفهوم استعمله رئيس وزراء بريطانيا ونستون تشرشل لما تحدث عن أطماع الاتحاد السوفيتي التوسعية في أوروبا الشرقية ويمتد من منطقة ستايتن على بحر البلطيق إلى ميناء تريستيا الايطالي',
      'يقصد به الدول التي تقع في شرق أوربا و التي طبقت النظام الاشتراكي أثناء الحرب الباردة .',
    ],
    correctAnswer:
        'الدول الديمقراطية الرأسمالية التي تقع غرب أوربا وكذلك الى جانب الو . م . الأمريكية',
    wi7da: 1,
  ),
  QuizElement(
    question: '14 اوت 1941م',
    answers: [
      'ميثاق الأطلسي بين بريطانيا والولايات المتحدة الأمريكية',
      'تأسيس صندوق النقد الدولي',
      'تفجير قنبلتين نوويين على كليروشيما وناكازاكي في اليابان',
      'المصادقة على ميثاق الأمم المتحدة'
    ],
    correctAnswer: 'ميثاق الأطلسي بين بريطانيا والولايات المتحدة الأمريكية',
    wi7da: 1,
  ),
  QuizElement(
    question: 'النظام الدولي الجديد',
    answers: [
      '1957  مشروع أمريكي برز بعد أزمة السويس يقضي بتقديم مساعدات مالية لدول الشرق الأوسط مقابل رفض للشيوعية و القبول باسرائيل .',
      ' مفهوم برز بعد لقاء مالطا 1989 وانهيار المعسكر الشيوعي يقوم على أساس توسيع مفاهيم العولمة و الليبرالية و فرض خطة الهيمنة الأمريكية على العالم',
      'سياسة تقوم على إنشاء سلسلة من الأحلاف والقواعد العسكرية لتطويق وعزل الإتحاد السوفييتي ومنع انتشار نفوذه وإيديولوجيته',
      'مفهوم استعمله رئيس وزراء بريطانيا ونستون تشرشل لما تحدث عن أطماع الاتحاد السوفيتي التوسعية في أوروبا الشرقية ويمتد من منطقة ستايتن على بحر البلطيق إلى ميناء تريستيا الايطالي'
    ],
    correctAnswer:
        ' مفهوم برز بعد لقاء مالطا 1989 وانهيار المعسكر الشيوعي يقوم على أساس توسيع مفاهيم العولمة و الليبرالية و فرض خطة الهيمنة الأمريكية على العالم',
    wi7da: 1,
  ),
  QuizElement(
    question: 'غورباتشوف ميخائيل',
    answers: [
      '( 1896 1948 ) سياسي سوفييتي صاحب أطروحة الكتلتين الشرقية الغربية ، ساهم في التشدد الإيديولوجي و صاحب المشروع المعروف باسمه',
      ' 1925 - 1961 سياسي كنغولي ناضل من أجل استقلال بلاده عن الاستعمار البلجكي أصبح وزيرا أولا بعد الاستقلال 1960 سعى من أجل استعادة السيادة على إقليم كاتنغا الغني بالثروات الطبيعية ، اغتيل 1961 وتتهم المخابرات الأمريكية بمقتله ',
      'أخر رئيس الاتحاد السوفياتي 1985 . 1990 . اشتهر بسياسة البريستوريكا و الغلاسنوست . وقع العديد من الاتفاقيات التي أدت إلى إنهاء الحرب الباردة في 1990 منح جائزة نوبل للسلام ',
      'اصغر رئيس للو . م . أ 1961 1963 وهو صاحب مشروع ابولو الفضائي في عهده وقعت أزمة كوبا 1962 عمل على تحسين أوضاع السلام ما عرضه للقتل'
    ],
    correctAnswer:
        'أخر رئيس الاتحاد السوفياتي 1985 . 1990 . اشتهر بسياسة البريستوريكا و الغلاسنوست . وقع العديد من الاتفاقيات التي أدت إلى إنهاء الحرب الباردة في 1990 منح جائزة نوبل للسلام ',
    wi7da: 1,
  ),
];

List<QuizElement> quiz2 = [
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
];

List<QuizElement> quiz3 = [
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
];
List<QuizElement> quiz4 = [
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
];
List<QuizElement> quiz5 = [
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
  QuizElement(
    question: '',
    answers: [],
    correctAnswer: '',
    wi7da: 1,
  ),
];
