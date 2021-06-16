import 'package:equatable/equatable.dart';

class  PostEntity extends Equatable {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostEntity({this.userId, this.id, this.title, this.body});

  PostEntity copyWhit({int? userId,int? id , String? title, String? body}){
    return PostEntity(
      userId: userId ?? this.userId,
      id:  id ??  this.id,
      title: title ??  this.title,
      body: body ??  this.body
    );
  }

  @override
  List<Object?> get props => [userId, id, title, body];
}