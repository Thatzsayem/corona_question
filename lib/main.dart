import 'package:flutter/material.dart';
import 'package:judge_me/result.dart';
import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      //1
      'questionText': '1.আপনার বয়স কত?',
      'answers': [
        {'text': 'a.0-20', 'score': 1},
        {'text': 'b.21-30', 'score': 2},
        {'text': 'c.31-40', 'score': 2},
        {'text': 'd.41-50', 'score': 3},
        {'text': 'e.51-65', 'score': 4},
        {'text': 'f.65+  ', 'score': 5},
      ]
    },
    {
      //2
      'questionText': '2.আপনার লিঙ্গ নির্বাচন করুন?',
      'answers': [
        {'text': 'a.পুরুষ ', 'score': 1},
        {'text': 'b.নারী ', 'score': 2},
        {'text': 'c.অন্যান্য', 'score': 2},

        //{'text': 'All of them', 'score': 1},
      ]
    },
    {
      //3
      'questionText':
          '3.আপনি কি গর্ভবতী? (এড়িয়ে চলুন যদি আপনি নারী না হঊন ধন্যবাদ)',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 2},
        {'text': 'b.না', 'score': 0},
        {'text': 'c.এড়িয়ে  চলুন', 'score': 0},
      ]
    },
    {
      //4
      'questionText':
          '4.দয়াকরে আপনার শরীরের বর্তমান তাপমাত্রা কত তা আমাদের জানান।',
      'answers': [
        {'text': 'a.শরীরের তাপমাত্রা স্বাভাবিক আছে 96°F-98.6°F   ', 'score': 1},
        {'text': 'b.জ্বর 98.6°F-102°F', 'score': 2},
        {'text': 'c.অনেক জ্বর >102°F', 'score': 5},
      ]
    },
    {
      //5
      'questionText': '5.আপনার কি শুকনা কাশি গলাব্যথা  লক্ষন রয়েছে?',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 5},
        {'text': 'b.না', 'score': 1},
      ]
    },
    {
      //6
      'questionText': '6.আপনার কি  শ্বাসকষ্ট  লক্ষন রয়েছে?',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 3},
        {'text': 'b.না', 'score': 1},
      ]
    },
    {
      //7
      'questionText':
          ' আপনার কি অতি দুর্বলতা (যেমনঃ বাথরুমে যেতে অন্যের সাহায্যের প্রয়োজন হয় এমন) এবং সর্দি বা নাক দিয়ে পানি পড়ার লক্ষন রয়েছে?',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 4},
        {'text': 'b.না', 'score': 1},
      ]
    },
    {
      //8
      'questionText': '8.আপনার কি পেট ব্যাথা লক্ষন দেখা দিয়েছে??',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 3},
        {'text': 'b.না', 'score': 1},
      ]
    },
    {
      //9
      'questionText': '9.আপনার কি বমি বা পাতলা পায়খানা লক্ষন দেখা দিয়েছে?',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 4},
        {'text': 'b.না', 'score': 1},
      ]
    },
    {
      //10
      'questionText':
          '10.আপনার কি বুকে ব্যথা এবং চাপ অনুভব করা লক্ষন দেখা দিয়েছে??',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 3},
        {'text': 'b.না', 'score': 1},
      ]
    },
    {
      //11
      'questionText': '11.আপনার কি মাংশপেশি তে ব্যাথা অনুভব হয়?',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 3},
        {'text': 'b.না', 'score': 1},
      ]
    },
    {
      //12
      'questionText': '12.আপনার কি নাকে গন্ধ না পাওয়া করা লক্ষন দেখা দিয়েছে?',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 5},
        {'text': 'b.না', 'score': 1},
      ]
    },
    {
      //13
      'questionText':
          '13.আপনার কি চোখ চুলকানো বা লাল হয়ে যাওয়া লক্ষন দেখা দিয়েছে?',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 3},
        {'text': 'b.না', 'score': 1},
      ]
    },
    {
      //14
      'questionText': '14.আপনার কি তন্দ্রাচ্ছন্নভাব(ঘুমে ব্যাঘাত) দেখা দিয়েছে?',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 3},
        {'text': 'b.না', 'score': 1},
      ]
    },
    {
      //15
      'questionText': '15.আপনার ভ্রমনের তথ্য দিন।',
      'answers': [
        {
          'text':
              'a. গত ১৪ দিনের মধ্যে কোথাও ভ্রমণ করি নাই অথবা করোনা আক্রান্ত কিংবা জ্বর, কাশি, শ্বাসকষ্ট আছে এমন কারো কাছাকাছি যাই নাই',
          'score': 1
        },
        {
          'text':
              'b. গত ১৪ দিনের মধ্যে জ্বর, কাশি, শ্বাসকষ্ট আছে এমন কারো সংস্পর্শে গিয়েছিলাম (যেমনঃ পরিবার সদস্য / সহকর্মী)',
          'score': 3
        },
        {
          'text':
              'c. গত ১৪ দিনের মধ্যে বিদেশ থেকে ফিরেছে      এমন কারো সংস্পর্শে গিয়েছিলাম',
          'score': 4
        },
        {
          'text':
              'd. গত ১৪ দিনের মধ্যে করোনা ভাইরাসে আক্রান্ত এলাকা বা বিদেশে ভ্রমণ করেছিগত ১৪ দিনের মধ্যে করোনা ভাইরাসে আক্রান্ত ব্যক্তির সংস্পর্শে  গিয়েছিলাম',
          'score': 10
        },
      ]
    },
    {
      //16
      'questionText': '16. আপনার কি এই রোগ গুলো আগে থেকেই আছে?',
      'answers': [
        {'text': 'a.ফুসফুসের সমস্যা', 'score': 1},
        {'text': 'b.হৃদরোগের সমস্যা', 'score': 1},
        {'text': 'c.উচ্চ রক্ত চাপ', 'score': 1},
        {'text': 'd.ডায়াবেটিস', 'score': 1},
        {'text': 'e.কিডনির সমস্যা', 'score': 1},
        {'text': 'f.ক্যান্সার', 'score': 1},
        {'text': 'g. আমার b এবং d অপশেন রোগ রয়েছে', 'score': 1},
        {'text': 'h.একটিও না', 'score': 3},
      ]
    },
    {
      //17
      'questionText': '17.আপনার কি ধূমপানের অভ্যাস আছে?',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 3},
        {'text': 'b.না', 'score': 1},
      ]
    },
    {
      //18
      'questionText':
          '18.আপনি কি একজন স্বাস্থ্যকর্মী? (ডাক্তার, নার্স,    সহায়ককর্মী , অথবা সমাজের কোনে কাজে থাকা ইত্যাদি)',
      'answers': [
        {'text': 'a.হ্যাঁ', 'score': 3},
        {'text': 'b.না', 'score': 1},
      ]
    },
    {
      //19
      'questionText': '19.আপনার লক্ষণ গুলো গত ৪৮ ঘণ্টায় কি পরিবর্তন হয়েছে?',
      'answers': [
        {'text': 'a.আগের থেকে ভালো', 'score': 1},
        {'text': 'b.কোন পরিবর্তন নাই', 'score': 2},
        {'text': 'c.আরও খারাপ হয়েছে', 'score': 4},
        {'text': 'd.অনেক বেশী খারাপ', 'score': 5},
      ]
    },
  ];

  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Galada',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text(
            'করোনা টেস্ট',
            style: TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[100],
        ),
        body: SingleChildScrollView(
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
