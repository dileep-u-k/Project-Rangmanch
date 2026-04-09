import 'package:shared_preferences/shared_preferences.dart';

class LocalMemoryStore {
  static const _nicknameKey = 'nickname';
  static const _lastMoodKey = 'last_mood';
  static const _lastHookKey = 'last_hook';
  static const _lastEpisodeTitleKey = 'last_episode_title';
  static const _lastArtifactLabelKey = 'last_artifact_label';

  Future<void> saveNickname(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_nicknameKey, value);
  }

  Future<String?> loadNickname() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_nicknameKey);
  }

  Future<void> saveLastMood(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_lastMoodKey, value);
  }

  Future<String?> loadLastMood() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastMoodKey);
  }

  Future<void> saveLastHook(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_lastHookKey, value);
  }

  Future<String?> loadLastHook() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastHookKey);
  }

  Future<void> saveLastEpisodeTitle(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_lastEpisodeTitleKey, value);
  }

  Future<String?> loadLastEpisodeTitle() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastEpisodeTitleKey);
  }

  Future<void> saveLastArtifactLabel(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_lastArtifactLabelKey, value);
  }

  Future<String?> loadLastArtifactLabel() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastArtifactLabelKey);
  }
}