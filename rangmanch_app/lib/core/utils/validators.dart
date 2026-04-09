import 'strings.dart';

String? validateNickname(String? value) {
  final cleaned = trimmedOrEmpty(value);

  if (cleaned.isEmpty) {
    return 'Please enter a nickname';
  }

  if (cleaned.length < 2) {
    return 'Nickname is too short';
  }

  return null;
}

String? validateSituation(String? value) {
  final cleaned = trimmedOrEmpty(value);

  if (cleaned.isEmpty) {
    return 'Please describe the moment';
  }

  if (cleaned.length < 8) {
    return 'Give a little more context';
  }

  return null;
}

String? validateSquadMember(String? value) {
  final cleaned = trimmedOrEmpty(value);

  if (cleaned.isEmpty) {
    return 'Enter at least one name';
  }

  return null;
}