import 'package:bookia/core/services/dio/failure.dart';
import 'package:bookia/feature/home/data/models/best_seller_books_response/data.dart';
import 'package:bookia/feature/home/data/models/slider_response/data.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, SliderResponse>> getSliders();
  Future<Either<Failure, BestSellerBooksResponse>> getBestSellers();
}
