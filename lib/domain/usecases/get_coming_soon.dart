import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_movie_app/domain/entities/app_error.dart';
import 'package:flutter_bloc_movie_app/domain/entities/movie_entity.dart';
import 'package:flutter_bloc_movie_app/domain/entities/no_params.dart';
import 'package:flutter_bloc_movie_app/domain/repositories/movie_repository.dart';
import 'package:flutter_bloc_movie_app/domain/usecases/usecase.dart';

class GetComingSoon extends UseCase<List<MovieEntity>, NoParams> {
  final MovieRepository repository;
  GetComingSoon(this.repository);

  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await repository.getComingSoon();
  }
}
