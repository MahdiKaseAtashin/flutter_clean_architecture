import 'package:dartz/dartz.dart';
import 'package:simple_architecture/core/error/failures.dart';
import 'package:simple_architecture/features/iran_sign/domain/entities/number_trivia.dart';
import 'package:simple_architecture/features/iran_sign/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;
  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> execute({required int number}) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
