import 'package:shared_preferences/shared_preferences.dart';

import '../models/app_profile.dart';

class LocalProfileStore {
  static const _nicknameKey = 'profile_nickname';
  static const _vibeKey = 'profile_selected_vibe';
  static const _humorKey = 'profile_selected_humor';
  static const _toneKey = 'profile_selected_tone';

  Future<void> saveProfile(AppProfile profile) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_nicknameKey, profile.nickname);
    await prefs.setString(_vibeKey, profile.selectedVibe);
    await prefs.setString(_humorKey, profile.selectedHumorStyle);
    await prefs.setString(_toneKey, profile.selectedCompanionTone);
  }

  Future<AppProfile> loadProfile() async {
    final prefs = await SharedPreferences.getInstance();

    return AppProfile(
      nickname: prefs.getString(_nicknameKey) ?? '',
      selectedVibe: prefs.getString(_vibeKey) ?? '',
      selectedHumorStyle: prefs.getString(_humorKey) ?? '',
      selectedCompanionTone: prefs.getString(_toneKey) ?? '',
    );
  }
}