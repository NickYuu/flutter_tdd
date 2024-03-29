import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:tdd_clean_architecture/core/error/failure.dart';
import 'package:tdd_clean_architecture/core/usecases/usecase.dart';
import 'package:tdd_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_clean_architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;
  GetRandomNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}