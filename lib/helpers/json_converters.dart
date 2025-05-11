import 'package:todo_list/services/logger.dart';

String? jsonToString(String key, Map<String, dynamic> json) {
  final value = json[key];
  if (value == null || (value is String && value.isEmpty)) {
    return null;
  }
  return value.toString();
}

bool? jsonToBool(String key, Map<String, dynamic> json) {
  final value = json[key];
  if (value == null || value == '') {
    return null;
  } else if (value is bool) {
    return value;
  }
  return null;
}

double? jsonToDouble(String key, Map<String, dynamic> json) {
  final value = json[key];
  if (value == null || value == '') {
    return null;
  } else if (value is num) {
    return value.toDouble();
  }
  return null;
}

int? jsonToInt(String key, Map<String, dynamic> json) {
  final value = json[key];
  if (value == null) {
    return null;
  } else if (value is int) {
    return value;
  } else if (value is String) {
    return int.tryParse(value);
  }
  return null;
}

List<String> jsonToStringList(String key, Map<String, dynamic> json) {
  final value = json[key];
  if (value is List) {
    return value.whereType<String>().toList();
  }
  return [];
}

List<T> jsonToCustomClassList<T>(
  String key,
  Map<String, dynamic> json,
  T Function(Map<String, dynamic>) fromJson,
) {
  final dynamic value = json[key];
  if (value is List) {
    return value
        .map<T>((dynamic item) => fromJson(item as Map<String, dynamic>))
        .toList();
  }
  return <T>[];
}

DateTime? jsonToDateTime(String key, Map<String, dynamic> json) {
  final dynamic value = json[key];
  if (value == null || value == '') {
    return null;
  }

  if (value is String) {
    try {
      return DateTime.parse(value);
    } catch (e) {
      Logger.log('Error parsing DateTime for key "$key": $e');
      return null;
    }
  } else if (value is int) {
    // Assuming it's milliseconds since the Unix epoch
    try {
      return DateTime.fromMillisecondsSinceEpoch(value);
    } catch (e) {
      Logger.log('Error parsing DateTime (from milliseconds) for key "$key": $e');
      return null;
    }
  }

  Logger.log(
    'Unexpected type for DateTime key "$key": ${value.runtimeType}. Expected String or int.',
  );
  return null;
}
