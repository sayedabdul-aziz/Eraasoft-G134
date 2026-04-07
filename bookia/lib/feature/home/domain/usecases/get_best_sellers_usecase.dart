import 'package:bookia/core/services/dio/failure.dart';
import 'package:bookia/feature/home/data/models/best_seller_books_response/data.dart';
import 'package:bookia/feature/home/domain/repository/home_repo.dart';
import 'package:dartz/dartz.dart';

class GetBestSellersUseCase {
  final HomeRepository homeRepository;

  GetBestSellersUseCase(this.homeRepository);

  Future<Either<Failure, BestSellerBooksResponse>> call() {
    return homeRepository.getBestSellers();
  }
}
