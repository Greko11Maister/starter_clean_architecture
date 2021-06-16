import 'package:dartz/dartz.dart';
import 'package:starter_gbp/core/error/failures.dart';
import 'package:starter_gbp/features/domain/entities/post_entity.dart';

abstract class PostRepository {

  Future<Either<Failure, List<PostEntity>>>  getPosts();
  
}