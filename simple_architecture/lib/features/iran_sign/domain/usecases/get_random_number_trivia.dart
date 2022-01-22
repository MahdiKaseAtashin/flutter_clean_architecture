import 'package:dartz/dartz.dart';
import 'package:simple_architecture/core/error/failures.dart';
import 'package:simple_architecture/core/usecases/usecase.dart';
import 'package:simple_architecture/features/iran_sign/domain/entities/number_trivia.dart';
import 'package:simple_architecture/features/iran_sign/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>?> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
