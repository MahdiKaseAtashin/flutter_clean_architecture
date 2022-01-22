import 'package:dartz/dartz.dart';
import 'package:simple_architecture/core/error/failures.dart';
import 'package:simple_architecture/features/iran_sign/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>>? getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>>? getRandomNumberTrivia();
}
