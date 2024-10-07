#!/bin/bash

# Function to capitalize the feature name
capitalize_feature_name() {
  echo "$1" | awk -F'_' '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2)); print $0}' OFS=''
}

# Input: Feature name
echo "Enter the feature name (e.g., my_feature):"
read feature_name

if [ -z "$feature_name" ]; then
  echo "Error: Feature name is required."
  exit 1
fi

# Input: Select Bloc or Cubit
echo "Select the state management (1 for Bloc, 2 for Cubit):"
select state_management in "Bloc" "Cubit"; do
  case $state_management in
    Bloc)
      with_bloc=true
      with_cubit=false
      break
      ;;
    Cubit)
      with_cubit=true
      with_bloc=false
      break
      ;;
    *)
      echo "Invalid selection, please select 1 or 2."
      ;;
  esac
done

cd ..

# Paths
feature_dir="lib/features/$feature_name"
bloc_dir="$feature_dir/bloc"
cubit_dir="$feature_dir/cubit"

# Check if the directory already exists
if [ -d "$feature_dir" ]; then
  echo "Error: Directory $feature_dir already exists"
  exit 1
fi

# Create feature directory
mkdir -p "$feature_dir"

# Capitalize the first letter of the feature name
capitalized_feature_name=$(capitalize_feature_name "$feature_name")

# Create widget file for both Bloc and Cubit
cat <<EOL > "$feature_dir/${feature_name}_page.dart"
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

EOL

if [ "$with_bloc" == "true" ]; then
  cat <<EOL >> "$feature_dir/${feature_name}_page.dart"
import 'bloc/${feature_name}_bloc.dart';
import 'bloc/${feature_name}_state.dart';

class ${capitalized_feature_name}Page extends StatefulWidget {
  const ${capitalized_feature_name}Page({super.key});

  @override
  State<${capitalized_feature_name}Page> createState() => _${capitalized_feature_name}PageState();
}

class _${capitalized_feature_name}PageState extends State<${capitalized_feature_name}Page> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<${capitalized_feature_name}Bloc, ${capitalized_feature_name}State>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: switch (state) {
            ${capitalized_feature_name}Initial() || ${capitalized_feature_name}Loading() => const Center(child: CircularProgressIndicator()),
            ${capitalized_feature_name}Loaded() => _buildBody(context, state),
            _ => Container(),
          },
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, ${capitalized_feature_name}Loaded state) {
    return Center(
      child: Text('${capitalized_feature_name} loaded'),
    );
  }
}
EOL

elif [ "$with_cubit" == "true" ]; then
  cat <<EOL >> "$feature_dir/${feature_name}_page.dart"
import 'cubit/${feature_name}_cubit.dart';
import 'cubit/${feature_name}_state.dart';

class ${capitalized_feature_name}Page extends StatelessWidget {
  const ${capitalized_feature_name}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<${capitalized_feature_name}Cubit, ${capitalized_feature_name}State>(
      builder: (context, state) {
        return SafeArea(
          child: switch (state) {
            ${capitalized_feature_name}Initial() || ${capitalized_feature_name}Loading() => const Center(child: CircularProgressIndicator()),
            ${capitalized_feature_name}Loaded() => _buildBody(context, state),
            _ => Container(),
          },
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, ${capitalized_feature_name}Loaded state) {
    return Center(
      child: Text('${capitalized_feature_name} loaded'),
    );
  }
}
EOL
fi

# Bloc files creation
if [ "$with_bloc" == "true" ]; then
  mkdir -p "$bloc_dir"
  
  # Create bloc, event, state files
  cat <<EOL > "$bloc_dir/${feature_name}_bloc.dart"
import 'package:anivsub/core/base/base.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '${feature_name}_event.dart';
import '${feature_name}_state.dart';

@injectable
class ${capitalized_feature_name}Bloc extends BaseBloc<${capitalized_feature_name}Event, ${capitalized_feature_name}State> {
  ${capitalized_feature_name}Bloc() : super(${capitalized_feature_name}Initial()) {
    on<Load${capitalized_feature_name}>(_onLoad${capitalized_feature_name});
    on<Error${capitalized_feature_name}>(_onError${capitalized_feature_name});
  }

  void _onLoad${capitalized_feature_name}(Load${capitalized_feature_name} event, Emitter<${capitalized_feature_name}State> emit) {
    emit(${capitalized_feature_name}Loaded());
  }

  void _onError${capitalized_feature_name}(Error${capitalized_feature_name} event, Emitter<${capitalized_feature_name}State> emit) {
    emit(${capitalized_feature_name}Error('An error occurred'));
  }
}
EOL

  cat <<EOL > "$bloc_dir/${feature_name}_event.dart"
import 'package:anivsub/core/base/base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '${feature_name}_event.freezed.dart';

abstract class ${capitalized_feature_name}Event extends BaseBlocEvent {}

@freezed
class Load${capitalized_feature_name} extends ${capitalized_feature_name}Event with _\$Load${capitalized_feature_name} {
  const factory Load${capitalized_feature_name}() = _Load${capitalized_feature_name};
}

@freezed
class Error${capitalized_feature_name} extends ${capitalized_feature_name}Event with _\$Error${capitalized_feature_name} {
  const factory Error${capitalized_feature_name}() = _Error${capitalized_feature_name};
}
EOL

  cat <<EOL > "$bloc_dir/${feature_name}_state.dart"
import 'package:anivsub/core/base/base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '${feature_name}_state.freezed.dart';

@freezed
class ${capitalized_feature_name}State extends BaseBlocState with _\$${capitalized_feature_name}State {
  const factory ${capitalized_feature_name}State.initial() = ${capitalized_feature_name}Initial;
  const factory ${capitalized_feature_name}State.loading() = ${capitalized_feature_name}Loading;
  const factory ${capitalized_feature_name}State.loaded() = ${capitalized_feature_name}Loaded;
  const factory ${capitalized_feature_name}State.error(String message) = ${capitalized_feature_name}Error;
}
EOL
fi

# Cubit files creation
if [ "$with_cubit" == "true" ]; then
  mkdir -p "$cubit_dir"

  # Create cubit and state files
  cat <<EOL > "$cubit_dir/${feature_name}_cubit.dart"
import 'package:anivsub/core/base/base.dart';
import 'package:injectable/injectable.dart';

import '${feature_name}_state.dart';

@injectable
class ${capitalized_feature_name}Cubit extends BaseCubit<${capitalized_feature_name}State> {
  ${capitalized_feature_name}Cubit() : super(${capitalized_feature_name}Initial());

  void load() {
    emit(${capitalized_feature_name}Loading());
    // Add your loading logic here
    emit(${capitalized_feature_name}Loaded());
  }

  void error() {
    emit(${capitalized_feature_name}Error('An error occurred'));
  }
}
EOL

  cat <<EOL > "$cubit_dir/${feature_name}_state.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

part '${feature_name}_state.freezed.dart';

@freezed
class ${capitalized_feature_name}State with _\$${capitalized_feature_name}State {
  const factory ${capitalized_feature_name}State.initial() = ${capitalized_feature_name}Initial;
  const factory ${capitalized_feature_name}State.loading() = ${capitalized_feature_name}Loading;
  const factory ${capitalized_feature_name}State.loaded() = ${capitalized_feature_name}Loaded;
  const factory ${capitalized_feature_name}State.error(String message) = ${capitalized_feature_name}Error;
}
EOL
fi

# Build the project
echo "Building..."
dart pub run build_runner build --delete-conflicting-outputs

echo "Feature '$feature_name' with $state_management created successfully."
