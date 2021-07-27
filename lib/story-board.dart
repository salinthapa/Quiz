import 'dart:ffi';

import 'package:gole/story.dart';

enum choice { OPTION1, OPTION2 }

class StoryBoard {
  List<Story> _storyOrder = [
    Story(
        backgroundImage: 'assets/image0.jpg',
        title: 'Rise of Junga Bahadur',
        choice1: 'start',
        choice2: ''),
    Story(
        backgroundImage: 'assets/image1.jpg',
        title: 'Impress the king Rajendra Bikram Shah and become captain',
        choice1: 'Jump from Dharhara',
        choice2: 'Accompanying with him during terai visit '),
    Story(
        backgroundImage: 'assets/image2.jpg',
        title: 'Create the Power vacuum',
        choice1: 'Kill the prime minster Mathabarsingh Thapa ',
        choice2: 'Kill the Crown Prince '),
    Story(
      backgroundImage: 'assets/image3.jpg',
      title: 'Dismantle queen power',
      choice1: 'Kill the king ',
      choice2: 'Kill Army Chief Gagan Singh ',
    ),
    Story(
      backgroundImage: 'assets/image4.jpg',
      title: 'Becomes Prime minster',
      choice1: 'Massacre of all the powerful person in kot parva',
      choice2: 'Kill the queen ',
    ),
    Story(
      backgroundImage: 'assets/image5.jpg',
      title: 'Eliminated all opposition and exiled the Queen ',
      choice1: 'Another Mass Massacre i.e Bhandarkhal Parva ',
      choice2: 'Alau massacre ',
    ),
    Story(
        backgroundImage: 'assets/image6.jpg',
        title: 'Junga Bahadur and his families rules for 108 years',
        choice1: 'Re-start',
        choice2: ''),
  ];

  int _stroryNum = 0;

  String getBackgroundImage() {
    return _storyOrder[_stroryNum].backgroundImage;
  }

  String getTitle() {
    return _storyOrder[_stroryNum].title;
  }

  String getChoice1() {
    return _storyOrder[_stroryNum].choice1;
  }

  String getChoice2() {
    return _storyOrder[_stroryNum].choice2;
  }

  void restart() {
    _stroryNum = 0;
  }

  void next() {
    _stroryNum++;
  }

  void chooseOption(choice option) {
    if (_stroryNum == 0 && option == choice.OPTION1) {
      next();
    } else if (_stroryNum == 0 && option == choice.OPTION2) {
      restart();
    } else if (_stroryNum == 1 && option == choice.OPTION2) {
      next();
    } else if (_stroryNum == 1 && option == choice.OPTION1) {
      restart();
    } else if (_stroryNum == 2 && option == choice.OPTION1) {
      next();
    } else if (_stroryNum == 2 && option == choice.OPTION2) {
      restart();
    } else if (_stroryNum == 3 && option == choice.OPTION2) {
      next();
    } else if (_stroryNum == 3 && option == choice.OPTION1) {
      restart();
    } else if (_stroryNum == 4 && option == choice.OPTION1) {
      next();
    } else if (_stroryNum == 4 && option == choice.OPTION2) {
      restart();
    } else if (_stroryNum == 5 && option == choice.OPTION1) {
      next();
    } else if (_stroryNum == 5 && option == choice.OPTION2) {
      restart();
    } else if (_stroryNum == 6 && option == choice.OPTION1) {
      restart();
    }
  }
}
