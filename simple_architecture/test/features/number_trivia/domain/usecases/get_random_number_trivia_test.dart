import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_architecture/core/usecases/usecase.dart';
import 'package:simple_architecture/features/iran_sign/domain/entities/number_trivia.dart';
import 'package:simple_architecture/features/iran_sign/domain/repositories/number_trivia_repository.dart';
import 'package:simple_architecture/features/iran_sign/domain/usecases/get_random_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late MockNumberTriviaRepository mockNumberTriviaRepository;
  late GetRandomNumberTrivia usecase;
  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(mockNumberTriviaRepository);
  });

  const tNumberTrivia = NumberTrivia(text: 'text', number: 1);

  test('should get trivia from repository', () async {
    // arrange
    when(mockNumberTriviaRepository.getRandomNumberTrivia())
        .thenAnswer((_) async => const Right(tNumberTrivia));
    // act
    final result = await usecase(NoParams());
    // assert
    expect(result, const Right(tNumberTrivia));
    verify(mockNumberTriviaRepository.getRandomNumberTrivia());
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
