import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 50) {
      resultText =
          'আপনার ঝুঁকি টেস্ট সম্পর্ন হয়েছে।     ***আপনার করোনা সংক্রামন হওয়ার সম্ভবনা খুব কম***                       কোন অবস্থাতেই এই সফটওয়ার থেকে প্রাপ্ত ফলাফলকে অভিজ্ঞ ডাক্তার কর্তৃক স্বাস্থ্য পরামর্শ হিসেবে বিবেচনা করা যাবে না। যোগাযোগঃ 16263,333';
    } else if (resultScore <= 63) {
      resultText =
          'আপনার ঝুঁকি টেস্ট সম্পর্ন হয়েছে।    ***আপনার করোনা সংক্রামন  হওয়ার সম্ভবনা খুব বেশি না তবে অবশ্যাই ৪৮ ঘন্টা পর্যবেক্ষণ এ থাকবেন***                        কোন অবস্থাতেই এই সফটওয়ার থেকে প্রাপ্ত ফলাফলকে অভিজ্ঞ ডাক্তার কর্তৃক স্বাস্থ্য পরামর্শ হিসেবে বিবেচনা করা যাবে না। যোগাযোগঃ 16263,333,';
    } else if (resultScore <= 75) {
      resultText =
          '***আপনার করোনা সংক্রামন হওয়ার সম্ভবনা খুব বেশি,অতি শীগ্রই ডাক্তার এর চিকিৎসা নিন***                       কোন অবস্থাতেই এই সফটওয়ার থেকে প্রাপ্ত ফলাফলকে অভিজ্ঞ ডাক্তার কর্তৃক স্বাস্থ্য পরামর্শ হিসেবে বিবেচনা করা যাবে না। যোগাযোগঃ 16263,333';
    } else {
      resultText =
          'আপনার ঝুঁকি টেস্ট সম্পর্ন হয়েছে।    ***আপনার করোনা সংক্রামন হওয়ার সম্ভবনা খুব বেশি,অতি শীগ্রই ডাক্তার এর চিকিৎসা নিন***                  কোন অবস্থাতেই এই সফটওয়ার থেকে প্রাপ্ত ফলাফলকে অভিজ্ঞ ডাক্তার কর্তৃক স্বাস্থ্য পরামর্শ হিসেবে বিবেচনা করা যাবে না। যোগাযোগঃ 16263,333';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'পুনোরায় টেষ্ট শুরু করুন!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red[500],
              ),
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
