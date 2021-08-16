class Constants{

 static final questions =  const [
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 30},
        {'text': 'Shawarma', 'score': 20},
        {'text': 'Pasta', 'score': 50},
        {'text': 'Salad', 'score': 100}
      ],
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 30},
        {'text': 'Red', 'score': 20},
        {'text': 'Green', 'score': 50},
        {'text': 'Black', 'score': 100}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 100},
        {'text': 'Cat', 'score': 20},
        {'text': 'Echidna', 'score': 50},
        {'text': 'Unicorn', 'score': 70}
      ]
    },
    {
      'questionText': 'What\'s your favorite pastime?',
      'answers': [
        {'text': 'Reading', 'score': 50},
        {'text': 'Video Games', 'score': 100},
        {'text': 'Outdoor Sports', 'score': 70},
        {'text': 'Working', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite music genre?',
      'answers': [
        {'text': 'Rock', 'score': 70},
        {'text': 'Pop', 'score': 20},
        {'text': 'Alternative', 'score': 100},
        {'text': 'Jazz', 'score': 50}
      ]
    },
  ];

Constants();

  static get questionList {
    return questions;
  }

}