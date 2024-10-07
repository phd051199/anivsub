import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/features/home/cubit/home_cubit.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/shared/chewie_player.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
            ),
          );
        }
      },
      builder: (context, state) => SafeArea(
        child: switch (state) {
          HomeInitial() || HomeLoading() => const LoadingWidget(),
          HomeLoaded() => _buildBody(context),
          _ => Container(),
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(context),
          Divider(height: 32),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildChapter(context),
                  _buildChapter(context),
                  _buildChapter(context),
                  _buildChapter(context),
                ],
              ),
            ),
          ),
        ),
        Divider(height: 32),
        _buildSection2(
          context,
          title: 'Trending',
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: IntrinsicWidth(
              child: Wrap(
                runSpacing: 20,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  _buildThumb(context),
                  _buildThumb(context),
                  _buildThumb(context),
                  _buildThumb(context),
                  _buildThumb(context),
                  _buildThumb(context),
                  _buildThumb(context),
                ],
              ),
            ),
          ),
        ),
        Divider(
          height: 32,
        ),
        _buildSection(
          context,
          title: 'Playing',
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ChewiePlayer(),
          ),
        ),
      ],
    );
  }

  Widget _buildChapter(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Row(
        children: [
          _buildThumb(context),
          _buildDesc(context),
        ],
      ),
    );
  }

  Widget _buildDesc(BuildContext context) {
    return Expanded(
      child: Container(
        height: 160,
        margin: const EdgeInsets.only(left: 10, right: 20),
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

  Column _buildSection2(
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
              )
            ],
          ],
        ),
        child,
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
              )
            ],
          ],
        ),
        child,
      ],
    );
  }

  Text _buildTitle(BuildContext context) {
    return Text(
      context.l10n.home,
      style: context.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
