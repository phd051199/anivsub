import 'dart:ui';

import 'package:anivsub/core/routes/go_router_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/features/home/cubit/home_cubit.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeError) {
          _showErrorSnackBar(context, state.message);
        }
      },
      builder: (context, state) => SafeArea(
        child: _getBody(context, state),
      ),
    );
  }

  void _showErrorSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Widget _getBody(BuildContext context, HomeState state) {
    return switch (state) {
      HomeInitial() || HomeLoading() => const LoadingWidget(),
      HomeLoaded() => _buildHomeContent(context),
      _ => Container(),
    };
  }

  Widget _buildHomeContent(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          const Gap(16),
          _buildContent(context),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        _buildSection(
          context,
          title: 'Airing',
          subtitle: 'This week',
          child: _buildAiringSection(context),
        ),
        Divider(height: 32),
        _buildSection(
          context,
          title: 'Trending',
          child: _buildTrendingSection(context),
        ),
        Divider(height: 32),
      ],
    );
  }

  Widget _buildAiringSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(4, (_) => _buildChapter(context)),
        ),
      ),
    );
  }

  Widget _buildTrendingSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: IntrinsicWidth(
        child: Wrap(
          runSpacing: 20,
          alignment: WrapAlignment.spaceBetween,
          children: List.generate(7, (_) => _buildThumb(context)),
        ),
      ),
    );
  }

  Widget _buildChapter(BuildContext context) {
    return InkWell(
      onTap: () => context.push(ScreenPaths.watch),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Row(
          children: [
            _buildThumb(context),
            _buildDesc(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDesc(BuildContext context) {
    return Expanded(
      child: Container(
        height: 160,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today, 12:00 AM',
              style: context.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: context.theme.colorScheme.primary,
              ),
            ),
            const Gap(4),
            Text(
              'Ojarumaru',
              style: context.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(8),
            Text(
              'In the Heian era, around 1000 years ago, a young boy of noble family named Ojarumaru is bored with his life of privilege. Meanwhile, three demons steal the power-stick of Enma, king of demons, and then lose it. Ojarumaru finds it, and uses it to transport himself...',
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.labelMedium!.copyWith(
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack _buildThumb(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.network(
            'https://cdn.noitatnemucod.net/thumbnail/300x400/100/2ec55cad86a731311b88909ae808c673.jpg',
            fit: BoxFit.cover,
            height: 160,
            width: 110,
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: context.theme.colorScheme.onPrimary.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'S01.E01',
                  style: context.textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column _buildSection(
    BuildContext context, {
    String? subtitle,
    required String title,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: context.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            if (subtitle != null) ...[
              const Gap(12),
              Text(
                subtitle,
                style: context.textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ],
        ),
        child,
      ],
    );
  }
}
