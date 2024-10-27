import 'package:anivsub/core/extension/context_extension.dart';
import 'package:anivsub/core/extension/number_extension.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:flutter/material.dart';

class DetailSection extends StatelessWidget {
  const DetailSection({
    super.key,
    required this.onTap,
  });

  final Function(WatchLoaded) onTap;

  @override
  Widget build(BuildContext context) {
    final state = context.watchTypedState<WatchBloc, WatchLoaded>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
    final state = context.watchTypedState<WatchBloc, WatchLoaded>();

    return ListTile(
      minVerticalPadding: 16,
      contentPadding: EdgeInsets.zero,
      title: Text(
        state.detail.name,
        style: context.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          '${state.detail.views.formatNumber()} ${context.l10n.views.toLowerCase()}',
          style: context.textTheme.titleSmall?.copyWith(
            color: context.theme.colorScheme.secondary,
          ),
        ),
      ),
      trailing: const Icon(Icons.info_outline),
    );
  }

  Widget _buildInfoText(BuildContext context) {
    final state = context.watchTypedState<WatchBloc, WatchLoaded>();

    final infoTexts = [
      InfoText(
        '${context.l10n.producedBy} ${state.detail.studio}',
        TextStyle(
          color: context.theme.colorScheme.tertiary,
          fontWeight: FontWeight.bold,
        ),
        Icons.movie_creation_outlined,
      ),
      InfoText(
        state.detail.schedule != ''
            ? state.detail.schedule!
            : context.l10n.seasonEnd,
        null,
        Icons.calendar_today_outlined,
      ),
      InfoText(
        '${state.detail.yearOf} • ${context.l10n.episode} ${state.detail.duration} • ${state.detail.countries.map((e) => e.name).join(', ')}',
        null,
        Icons.info_outline,
      ),
      InfoText(
        '${state.detail.rate}/10 • ${state.detail.countRate} ${context.l10n.rating} • ${state.detail.seasonOf?.name}',
        null,
        Icons.star_outline,
      ),
      InfoText(
        state.detail.genre.map((e) => e.name).join(', '),
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
        padding: const EdgeInsets.all(12),
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
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          if (icon != null)
            Icon(icon, size: 20, color: context.theme.colorScheme.secondary),
          const SizedBox(width: 12),
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
