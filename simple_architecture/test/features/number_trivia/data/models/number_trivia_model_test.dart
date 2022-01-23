import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_architecture/features/iran_sign/data/models/number_trivia_model.dart';
import 'package:simple_architecture/features/iran_sign/domain/entities/number_trivia.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: "Test text");

  test('should be a sub class of NumberTrivia', () async {
    // assert
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });

  group('fromJson', () {
    test('should return a valid model when the JSON number is an integer',
        () async {
      //arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));
      //act
      final result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, equals(tNumberTriviaModel));
    });
    test('should return a valid model when the JSON number is an double',
        () async {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));
      //act
      final result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, equals(tNumberTriviaModel));
    });
  });

  group('toJson', () {
    test('should return ', () async {
      //act
      final result = tNumberTriviaModel.toJson();
      //assert
      final expectedMap = {
        "text": "Test text",
        "number": 1,
      };
      expect(result, equals(expectedMap));
    });
  });
}
