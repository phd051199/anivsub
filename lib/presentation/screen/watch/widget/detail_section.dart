import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../resources/localization.dart';
import '../../../../shared/const/const.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../../shared/extension/extension.dart';
import '../watch.dart';

class DetailSection extends StatelessWidget {
  const DetailSection({
    super.key,
    required this.onTap,
  });

  final Function(WatchState) onTap;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WatchBloc>().state;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.d16.responsive(),
        vertical: Dimens.d8.responsive(),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => onTap(state),
            child: _buildDetailTile(context),
          ),
          _buildInfoText(context),
        ],
      ),
    );
  }

  Widget _buildDetailTile(BuildContext context) {
    final state = context.watch<WatchBloc>().state;

    return ListTile(
      minVerticalPadding: 16,
      contentPadding: EdgeInsets.zero,
      title: Text(
        state.detail?.name ?? '',
        style: context.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: kTitleFontSize,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(top: Dimens.d8.responsive()),
        child: Text(
          '${state.detail?.views.formatNumber() ?? 0} ${S.current.views.toLowerCase()}',
          style: context.textTheme.titleSmall?.copyWith(
            color: context.theme.colorScheme.secondary,
          ),
        ),
      ),
      trailing: const Icon(Icons.info_outline),
    );
  }

  Widget _buildInfoText(BuildContext context) {
    final state = context.watch<WatchBloc>().state;
    final detail = state.detail!;

    final infoTexts = [
      InfoText(
        '${S.current.producedBy} ${detail.studio}',
        TextStyle(
          color: context.theme.colorScheme.tertiary,
          fontWeight: FontWeight.bold,
        ),
        Icons.movie_creation_outlined,
      ),
      InfoText(
        detail.schedule != '' ? detail.schedule! : S.current.seasonEnd,
        null,
        Icons.calendar_today_outlined,
      ),
      InfoText(
        '${detail.yearOf} • ${S.current.episode} ${detail.duration} • ${detail.countries.map((e) => e.name).join(', ')}',
        null,
        Icons.info_outline,
      ),
      InfoText(
        '${detail.rate}/10 • ${detail.countRate} ${S.current.rating} • ${detail.seasonOf?.name}',
        null,
        Icons.star_outline,
      ),
      InfoText(
        detail.genre.map((e) => e.name).join(', '),
        TextStyle(
          color: context.theme.colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
        Icons.tag,
      ),
    ];

    return Card.filled(
      color: context.theme.colorScheme.surfaceContainer,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: EdgeInsets.all(Dimens.d12.responsive()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: infoTexts.map((item) => item.build(context)).toList(),
        ),
      ),
    );
  }
}

class InfoText {
  const InfoText(this.text, [this.style, this.icon]);
  final String text;
  final TextStyle? style;
  final IconData? icon;

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimens.d5.responsive()),
      child: Row(
        children: [
          if (icon != null)
            Icon(
              icon,
              size: 20,
              color: context.theme.colorScheme.secondary,
            ),
          Gap(Dimens.d12.responsive()),
          Expanded(
            child: Text(
              text,
              style: context.textTheme.bodyMedium?.merge(style),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
