import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import shared_preferences
import 'question.dart'; // Import the Question model

class QuizProvider with ChangeNotifier {
  List<Question> _questions = [

Question(
  questionText: 'ما هو الشيء الذي يمشي بدون أرجل؟',
  options: ['الرياح', 'السيارة', 'الساعة', 'النهر'],
  correctAnswerIndex: 3,
  explanation: 'النهر هو الشيء الذي يمشي بدون أرجل.',
),

Question(
  questionText: 'ما هو الشيء الذي كلما أخذت منه كبر؟',
  options: ['الثقب', 'الضوء', 'الماء', 'النهر'],
  correctAnswerIndex: 0,
  explanation: 'الثقب هو الشيء الذي كلما أخذت منه كبر.',
),

Question(
  questionText: 'ما هو الشيء الذي لا يمكن كسره؟',
  options: ['المضاف إليه', 'الزجاج', 'الضوء', 'المبتدأ'],
  correctAnswerIndex: 3,
  explanation: 'المبتدأ لا يمكن كسره في قواعد اللغة.',
),

Question(
  questionText: 'ما هو الشيء الذي يتواجد في السماء وإذا أضفنا له حرفًا أصبح في الأرض؟',
  options: ['نجم', 'سحاب', 'مطر', 'قمر'],
  correctAnswerIndex: 0,
  explanation: 'نجم (نضيف حرف "م" ليصبح "منجم").',
),

Question(
  questionText: 'ما هو الشيء الذي يمكنه أن يحمل الكثير من الماء ولكنه لا يتبلل؟',
  options: ['السفينة', 'الإسفنجة', 'السحاب', 'الغربال'],
  correctAnswerIndex: 2,
  explanation: 'السحاب يحمل الكثير من الماء ولكنه لا يتبلل.',
),

Question(
  questionText: 'ما هو البيت الذي لا يوجد به أبواب أو نوافذ؟',
  options: ['بيت العنكبوت', 'بيت الشعر', 'بيت النحل', 'بيت الطيور'],
  correctAnswerIndex: 1,
  explanation: 'بيت الشعر لا يوجد إلا على الورق، بالتالي لا باب أو نوافذ له.',
),

Question(
  questionText: 'ما هو الحيوان الذي ينام وعيناه مفتوحتان؟',
  options: ['الدلفين', 'النمر', 'السمكة', 'البومة'],
  correctAnswerIndex: 2,
  explanation: 'السمكة تنام وعيناها مفتوحتان.',
),

Question(
  questionText: 'موكب الأمير تحت الجسر، إذا أضفت حرفًا إلى هذه العبارة أصبح موكب الأمير فوق الجسر، فما هو؟',
  options: ['الكاف', 'الواو', 'الهاء', 'الألف'],
  correctAnswerIndex: 2,
  explanation: 'عند إضافة الهاء تصبح العبارة "موكب الأمير تحته الجسر".',
),

Question(
  questionText: 'ما هو الشيء الذي يُلبس ولا يُرى؟',
  options: ['الملابس', 'الخاتم', 'الهواء', 'الكفن'],
  correctAnswerIndex: 3,
  explanation: 'الكفن يُلبس ولا يُرى.',
),


Question(
  questionText: 'ما هو العدد الذي إذا ضربته في نفسه ثم ضربته في 3، ينتج عنه 135؟',
  options: ['3', '5', '6', '7'],
  correctAnswerIndex: 1,
  explanation: '5 هو العدد الذي إذا ضربته في نفسه ثم في 3 ينتج 135.',
),

Question(
  questionText: 'ما هو الشيء الذي يرتفع عند وضعه في الماء ويغرق عند وضعه في النار؟',
  options: ['الخشب', 'الحديد', 'الورق', 'الصابون'],
  correctAnswerIndex: 2,
  explanation: 'الورق يطفو فوقَ سطح الماء بينما يبدو أثناء احتراقه في النار كأنه يغرق.',
),

Question(
  questionText: 'شيء يسمع بلا أذن ويتكلم بلا لسان؟',
  options: ['التلفاز', 'السماعة', 'التليفون', 'المذياع'],
  correctAnswerIndex: 2,
  explanation: 'التليفون يسمع بلا أذن ويتكلم بلا لسان.',
),

Question(
  questionText: 'الشيء الذي يتحدث بكل لغات العالم؟',
  options: ['الكتاب', 'القاموس', 'الطيار', 'صدى الصوت'],
  correctAnswerIndex: 3,
  explanation: 'صدى الصوت هو الشيء الذي يتحدث بكل لغات العالم.',
),

Question(
  questionText: 'يعتبر أضعف البيوت على وجه الأرض؟',
  options: ['بيت الطيور', 'بيت العنكبوت', 'بيت الزواحف', 'بيت الغراب'],
  correctAnswerIndex: 1,
  explanation: 'بيت العنكبوت هو أضعف البيوت.',
),

Question(
  questionText: 'اذكر اسم نبات يبدأ بحرف الهاء؟',
  options: ['الهيل', 'الهش', 'الكمثرى', 'الخردل'],
  correctAnswerIndex: 0,
  explanation: 'الهيل (الحبهان) هو النبات الذي يبدأ بحرف الهاء.',
),

Question(
  questionText: 'الشيء الذي يغلبك دون أن يؤذيك؟',
  options: ['أوراق الشجر', 'القماش', 'النوم', 'كل ما سبق'],
  correctAnswerIndex: 3,
  explanation: 'كل ما سبق (أوراق الشجر، القماش، النوم) يغلبك دون أن يؤذيك.',
),

Question(
  questionText: 'ما الشيء الذي له أسنان ولكنه لا يعض؟',
  options: ['القطة', 'الكلب', 'المقص', 'المشط'],
  correctAnswerIndex: 3,
  explanation: 'المشط هو الشيء الذي له أسنان ولكنه لا يعض.',
),

Question(
  questionText: 'كم حروف الأبجدية؟',
  options: ['29 حرف', '28 حرف', '31 حرف', '8 أحرف'],
  correctAnswerIndex: 3,
  explanation: 'كلمة "الأبجدية" تتكون من ثمانية أحرف.',
),

Question(
  questionText: 'ما هو الشيء الذي يرتفع ولا ينزل؟',
  options: ['العمر', 'البالون', 'الطائرة', 'الهواء'],
  correctAnswerIndex: 0,
  explanation: 'العمر هو الشيء الذي يرتفع ولا ينزل.',
),

Question(
  questionText: 'ما هو الشهر الذي يحتوي على 28 يوماً؟',
  options: ['يناير', 'فبراير', 'مارس', 'إبريل'],
  correctAnswerIndex: 1,
  explanation: 'فبراير هو الشهر الذي يحتوي على 28 يوماً.',
),

Question(
  questionText: 'ما هو الشيء الذي يتكسر دون أن يُلمس؟',
  options: ['الزجاج', 'الوعد', 'الخشب', 'الماء'],
  correctAnswerIndex: 1,
  explanation: 'الوعد هو الشيء الذي يتكسر دون أن يُلمس.',
),

Question(
  questionText: 'ما هو الشيء الذي يكتب ولكنه لا يقرأ؟',
  options: ['القلم', 'الكتاب', 'الورقة', 'القاموس'],
  correctAnswerIndex: 0,
  explanation: 'القلم يكتب ولكنه لا يقرأ.',
),

Question(
  questionText: 'ما هو الشيء الذي ينزل ولا يصعد؟',
  options: ['الهواء', 'المطر', 'الشمس', 'الثلج'],
  correctAnswerIndex: 1,
  explanation: 'المطر هو الشيء الذي ينزل ولا يصعد.',
),

Question(
  questionText: 'ما هو الشيء الذي لا يتحرك ولكنه يمكن أن يذهب إلى أي مكان؟',
  options: ['الرياح', 'الخيال', 'الصوت', 'الضوء'],
  correctAnswerIndex: 1,
  explanation: 'الخيال هو الشيء الذي لا يتحرك ولكنه يمكن أن يذهب إلى أي مكان.',
),

Question(
  questionText: 'ما هو الشيء الذي يحتوي على فم ولا يتكلم؟',
  options: ['الكوب', 'الأسطوانة', 'الكتاب', 'الهاتف'],
  correctAnswerIndex: 0,
  explanation: 'الكوب يحتوي على فم ولكنه لا يتكلم.',
),

Question(
  questionText: 'ما هو الشيء الذي ينمو في الأرض ولكنه لا ينمو في الماء؟',
  options: ['الشجرة', 'الزرع', 'الوردة', 'الصبار'],
  correctAnswerIndex: 0,
  explanation: 'الشجرة تنمو في الأرض ولكنها لا تنمو في الماء.',
),

Question(
  questionText: 'ما عدد سور القرآن الكريم؟',
  options: ['113 سورة', '103 سورة', '114 سورة', '102 سورة'],
  correctAnswerIndex: 2,
  explanation: 'عدد سور القرآن الكريم هو 114 سورة.',
),

Question(
  questionText: 'ما هي السورة التي تسمّى قلب القرآن؟',
  options: ['سورة الإخلاص', 'سورة يس', 'سورة النور', 'سورة البقرة'],
  correctAnswerIndex: 1,
  explanation: 'سورة يس تسمّى قلب القرآن.',
),

Question(
  questionText: 'كم سجدة في القرآن الكريم؟',
  options: ['19 سجدة', '13 سجدة', '15 سجدة', '9 سجدات'],
  correctAnswerIndex: 2,
  explanation: 'هناك 15 سجدة في القرآن الكريم.',
),

Question(
  questionText: 'ما السورة التي تعدل ثلث القرآن؟',
  options: ['سورة الناس', 'سورة البقرة', 'سورة الفلق', 'سورة الإخلاص'],
  correctAnswerIndex: 3,
  explanation: 'سورة الإخلاص تعدل ثلث القرآن.',
),

Question(
  questionText: 'كم عدد أركان الإسلام؟',
  options: ['5 أركان', '6 أركان', '14 ركن', '13 ركن'],
  correctAnswerIndex: 0,
  explanation: 'عدد أركان الإسلام هو 5: الشهادتان، إقام الصلاة، إيتاء الزكاة، صوم رمضان، حج البيت.', 
),

Question(
  questionText: 'كم عدد أركان الإيمان؟',
  options: ['7 أركان', '6 أركان', '4 أركان', '9 أركان'],
  correctAnswerIndex: 1,
  explanation: ' : 6 أركان. (الإيمان بالله -تعالى-، الإيمان بالملائكة، الإيمان بالرُّسل، الإيمان بالكتب السماوية، الإيمان باليوم الآخر، الإيمان بالقَدَر خيره وشرِّه.) ',
),

Question(
  questionText: 'ما هي الليلة التي أجور الأعمال فيها خير من ألف شهر، وتُصفّد فيها الشياطين؟',
  options: ['ليلة الاسراء والمعراج', 'ليلة القدر', 'ليلة الجمعة', 'ليلة يوم عرفة'],
  correctAnswerIndex: 1,
  explanation: 'ليلة القدر خير من ألف شهر وتصفد فيها الشياطين.',
),

Question(
  questionText: 'من هو النبي الذي كان يستطيع التكلّم مع الحيوانات؟',
  options: ['نوح -عليه السلام-', 'هود -عليه السلام-', 'صالح -عليه السلام-', 'سليمان -عليه السلام-'],
  correctAnswerIndex: 3,
  explanation: 'سليمان -عليه السلام- هو النبي الذي كان يستطيع التحدث مع الحيوانات.',
),

Question(
  questionText: 'كم كانت مدة دعوة نوح -عليه السلام- لقومه؟',
  options: ['تسعمائة وخمسين عامًا', 'أربعمائة وخمسين عامًا', 'ستمائة وخمسين عامًا', 'خمسمائة وخمسين عامًا'],
  correctAnswerIndex: 0,
  explanation: ' تسعمائة وخمسين عاماً.' ,
),

  ];

  int _currentQuestionIndex = 0;
  int _score = 0;
  String _feedback = '';
  List<int?> _selectedOptions = []; // Store selected option index for each question
  List<bool> _answeredCorrectly = []; // Track if the question was answered correctly

  List<Question> get questions => _questions;
  int get currentQuestionIndex => _currentQuestionIndex;
  int get score => _score;
  String get feedback => _feedback;
  int? get selectedOptionIndex => _selectedOptions.isNotEmpty
      ? _selectedOptions[_currentQuestionIndex]
      : null;

  QuizProvider() {
    _loadProgress(); // Load progress when initializing
  }

  Future<void> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    _currentQuestionIndex = prefs.getInt('currentQuestionIndex') ?? 0;
    _score = prefs.getInt('score') ?? 0;
    _selectedOptions = List.generate(
      _questions.length,
      (index) => prefs.getInt('selectedOptionIndex_$index'),
    );
    _answeredCorrectly = List.generate(
      _questions.length,
      (index) => prefs.getBool('answeredCorrectly_$index') ?? false,
    );
    notifyListeners();
  }

  Future<void> _saveProgress() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex', _currentQuestionIndex);
    await prefs.setInt('score', _score);
    for (int i = 0; i < _selectedOptions.length; i++) {
      await prefs.setInt('selectedOptionIndex_$i', _selectedOptions[i] ?? -1);
      await prefs.setBool('answeredCorrectly_$i', _answeredCorrectly[i]);
    }
  }

  void checkAnswer(int selectedOptionIndex) {
    _selectedOptions[_currentQuestionIndex] = selectedOptionIndex;

    if (!_answeredCorrectly[_currentQuestionIndex] &&
        selectedOptionIndex == _questions[_currentQuestionIndex].correctAnswerIndex) {
      // Award points only the first time the correct answer is selected
      _score += 10;
      _answeredCorrectly[_currentQuestionIndex] = true; // Mark this question as answered correctly
      _feedback = 'إجابة صحيحة!';
    } else if (selectedOptionIndex != _questions[_currentQuestionIndex].correctAnswerIndex) {
      _feedback = 'إجابة خاطئة. ${_questions[_currentQuestionIndex].explanation}';
    }

    _saveProgress(); // Save progress after checking answer
    notifyListeners();
  }

  void nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++;
      _feedback = ''; // Reset feedback when moving to the next question
      _saveProgress(); // Save progress after moving to the next question
    } else {
      _feedback = 'لقد أكملت كل الأسئلة!';
    }
    notifyListeners();
  }

  void previousQuestion() {
    if (_currentQuestionIndex > 0) {
      _currentQuestionIndex--;
      _feedback = ''; // Reset feedback when moving to the previous question
      _saveProgress(); // Save progress after moving to the previous question
    }
    notifyListeners();
  }
}
