class Language {
  final int id;
  final String name;
  final String flag;
  final String languageCode;

  Language(this.id, this.name, this.flag, this.languageCode);

  // Lista țărilor cu steaguri a luat-o de pe flagpedia.net/emoji
  // Pentru languageCode a folosit lingoes.net/en/translator/langcode.htm (ISO language code table)

  static List<Language> languageList() {
    return <Language>[
      Language(1, 'English', '🇺🇸', 'en'),
      Language(2, 'Romanian', '🇷🇴', 'ro'),
    ];
  }
}
