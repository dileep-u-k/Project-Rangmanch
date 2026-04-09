import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/models/app_profile.dart';
import '../../core/storage/local_memory_store.dart';
import '../../core/storage/local_profile_store.dart';
import '../../core/utils/strings.dart';
import 'onboarding_state.dart';

final onboardingControllerProvider =
    NotifierProvider<OnboardingController, OnboardingState>(
  OnboardingController.new,
);

class OnboardingController extends Notifier<OnboardingState> {
  late final LocalProfileStore _profileStore;
  late final LocalMemoryStore _memoryStore;

  @override
  OnboardingState build() {
    _profileStore = LocalProfileStore();
    _memoryStore = LocalMemoryStore();
    return const OnboardingState();
  }

  void setNickname(String value) {
    state = state.copyWith(nickname: value);
  }

  void setVibe(String value) {
    state = state.copyWith(selectedVibe: value);
  }

  void setHumorStyle(String value) {
    state = state.copyWith(selectedHumorStyle: value);
  }

  void setCompanionTone(String value) {
    state = state.copyWith(selectedCompanionTone: value);
  }

  Future<void> persistProfile() async {
    state = state.copyWith(isSaving: true);

    final profile = AppProfile(
      nickname: trimmedOrEmpty(state.nickname),
      selectedVibe: state.selectedVibe ?? '',
      selectedHumorStyle: state.selectedHumorStyle ?? '',
      selectedCompanionTone: state.selectedCompanionTone ?? '',
    );

    await _profileStore.saveProfile(profile);

    if (profile.nickname.isNotEmpty) {
      await _memoryStore.saveNickname(profile.nickname);
    }

    if (profile.selectedVibe.isNotEmpty) {
      await _memoryStore.saveLastMood(profile.selectedVibe);
    }

    state = state.copyWith(isSaving: false);
  }
}