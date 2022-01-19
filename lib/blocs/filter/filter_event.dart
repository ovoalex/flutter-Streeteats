part of 'filter_bloc.dart';

abstract class FilterEvent extends Equatable {
  const FilterEvent();
}

class LoadFilter extends FilterEvent {
  @override
  List<Object?> get props => [];
}

class UpdateCategoryFilter extends FilterEvent {
  final CategoryFilter categoryFilter;

  const UpdateCategoryFilter({
    required this.categoryFilter,
  });

  @override
  List<Object?> get props => [categoryFilter];
}

class PriceFilterUpdated extends FilterEvent {
  final PriceFilter priceFilter;

  const PriceFilterUpdated({
    required this.priceFilter,
  });

  @override
  List<Object?> get props => [priceFilter];
}
