import 'package:anivsub/app/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/shared/extension/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'history_cubit.freezed.dart';
part 'history_state.dart';

@injectable
class HistoryCubit extends BaseCubit<HistoryState> {
  HistoryCubit(
    this._authUseCase,
    this._getUserHistoryUseCase,
  ) : super(const HistoryInitial()) {
    getHistory();
  }

  final AuthUseCase _authUseCase;
  final GetUserHistoryUseCase _getUserHistoryUseCase;
  int _page = 1;

  Future<void> getHistory() async {
    _page = 1;
    final auth = await _authUseCase.execute(const GetLocalAuthTokenInput());
    final history = await _getUserHistoryUseCase.execute(
      GetUserHistoryUseCaseInput(page: _page),
    );

    safeEmit(
      HistoryLoaded(
        user: auth.localSession!,
        queryHistory: history.result,
      ),
    );
  }

  Future<void> loadMore() async {
    try {
      final output = await _getUserHistoryUseCase.execute(
        GetUserHistoryUseCaseInput(page: ++_page),
      );

      final currentHistory =
          List<QueryHistoryEntity?>.from(state.queryHistory ?? []);
      currentHistory.addAll(output.result);

      safeEmit(
        HistoryLoaded(
          user: state.user!,
          queryHistory: currentHistory,
        ),
      );
    } catch (e) {
      safeEmit(const HistoryError(message: 'Failed to load more history'));
    }
  }

  Future<void> logout() async {
    final authUseCaseOutput =
        await _authUseCase.execute(const GetLocalAuthTokenInput());
    safeEmit(
      HistoryLoaded(
        user: authUseCaseOutput.localSession!,
        queryHistory: null,
      ),
    );
  }
}
