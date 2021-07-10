import 'package:equatable/equatable.dart';

import 'languages.g.dart';
export 'languages.g.dart';

class Language extends Equatable {
  Language(this.isoCode, this.name);

  final String name;
  final String isoCode;

  Language.fromMap(Map<String, String> map)
      : name = map['name']!,
        isoCode = map['isoCode']!;

  /// Returns the Language matching the given ISO code from the standard list.
  factory Language.fromIsoCode(String isoCode) =>
      Languages.defaultLanguages.firstWhere((l) => l.isoCode == isoCode);

  @override
  List<Object?> get props => [name, isoCode];
}
