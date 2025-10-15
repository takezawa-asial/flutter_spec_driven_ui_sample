# Repository Guidelines

## Project Structure & Module Organization
- `lib/`: Application source (widgets, features, routing). Generated files like `*.g.dart` and `*.freezed.dart` live alongside sources — do not edit them.
- `test/`: Unit/widget tests mirroring `lib/` (use matching paths and `*_test.dart`).
- `android/`, `ios/`: Platform runners and configs. Do not modify unless platform-specific work.
- `pubspec.yaml`: Dependencies, assets, and Flutter config. `analysis_options.yaml` defines lints.

## Build, Test, and Development Commands
- Install deps: `flutter pub get` (or `fvm flutter pub get`).
- Run app: `flutter run -d <device>`.
- Analyze: `flutter analyze` to lint per `analysis_options.yaml`.
- Format: `dart format .` (CI expects formatted code).
- Tests: `flutter test` (add `--coverage` if needed).
- Codegen: `dart run build_runner build --delete-conflicting-outputs` (or `watch` during dev).

## Coding Style & Naming Conventions
- Dart style: 2-space indent, 80–100 col soft limit, trailing commas for multi-line args.
- Names: Classes `UpperCamelCase`, methods/vars `lowerCamelCase`, files `snake_case.dart`.
- Imports: Prefer package imports (`package:flutter_spec_driven_ui_sample/...`).
- Do not edit generated files (`*.g.dart`, `*.freezed.dart`); update sources and rerun codegen.

## Testing Guidelines
- Framework: `flutter_test` (unit, widget). Organize tests to mirror `lib/` structure.
- Names: One `group` per unit; file ends with `*_test.dart`.
- Run: `flutter test` locally; keep tests deterministic (no real network/IO).

## Commit & Pull Request Guidelines
- Commits: Small, focused, imperative mood (“Add payment method UI”). Include context in body when needed; reference issues (`#123`).
- PRs: Clear description, screenshots for UI, steps to test, and linked issues. Pass `analyze`, `format`, `test`, and regenerate code when sources change.

## Codegen & Architecture Notes
- Libraries: Riverpod (incl. `AsyncNotifier`), Freezed, go_router. When editing models/providers/routes, run build_runner to refresh generated code.
- Routing: Check `lib/` for go_router configuration before adding routes to keep navigation consistent.
- Versioning: Project includes `.fvmrc`; prefer `fvm flutter ...` to match the pinned Flutter SDK.

