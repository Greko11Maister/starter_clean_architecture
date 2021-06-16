import 'package:dartz/dartz.dart';
import 'package:starter_gbp/core/error/failures.dart';
import 'package:starter_gbp/core/usecases/usecase.dart';
import 'package:starter_gbp/features/domain/entities/post_entity.dart';
import 'package:starter_gbp/features/domain/repositories/post_repository.dart';

class GetPostUseCase implements UseCase<List<PostEntity>, NoParams>{
  final PostRepository? repository;

  GetPostUseCase(this.repository);

  @override
  Future<Either<Failure, List<PostEntity>>> call(NoParams params) async {
   return  await repository!.getPosts();
  }

}