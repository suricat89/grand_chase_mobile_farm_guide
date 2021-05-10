enum QuestType {
  adventureClear,
  adventureBoss,
  adventureBossAssault,
  adventureBossMage,
  adventureBossHealer,
  adventureBossTank,
  adventureBossRanger,
  dimensionalBossFight,
  dimensionalBossDefeat,
  dimensionalBossSummonReward,
  dimensionalBossSummon,
  skillUse,
  annihilation,
  dailyDefense,
  wizardLabyrinth,
  dimensionalChasm,
  guildWarStars,
  adventurerKeySend,
}

enum Skill { s1, s2, special, none }

class LikabilityQuestModel {
  final QuestType questType;
  final Skill skill;
  final int ammount;
  int ammountCompleted;
  final int bpRequired;
  final bool characterPresent;

  String get _ammountCompletedText => "$ammountCompleted/$ammount";

  String _getCharacterPresentText(String characterName) =>
      characterPresent ? " com $characterName" : "";

  String get _getBpRequired => bpRequired > 0
      ? " (" + (bpRequired / 1000).toStringAsFixed(0) + "k+ BP)"
      : "";

  String _getBossClearDescription(String characterName, String bossClass) =>
      "Aventura: derrotar boss $bossClass $_ammountCompletedText${_getCharacterPresentText(characterName)}$_getBpRequired";

  String get _skillName {
    switch (skill) {
      case Skill.s1:
        return "S1";
      case Skill.s2:
        return "S2";
      case Skill.special:
        return "Habilidade especial";
      case Skill.none:
        return "";
    }
  }

  String getQuestDescription(String characterName) {
    switch (questType) {
      case QuestType.adventureBoss:
        return _getBossClearDescription(characterName, "de qualquer classe");
      case QuestType.adventureClear:
        return "Aventura: concluir missões de aventura $_ammountCompletedText${_getCharacterPresentText(characterName)}$_getBpRequired";
      case QuestType.adventureBossAssault:
        return _getBossClearDescription(characterName, "Guerreiro");
      case QuestType.adventureBossMage:
        return _getBossClearDescription(characterName, "Mago");
      case QuestType.adventureBossHealer:
        return _getBossClearDescription(characterName, "Suporte");
      case QuestType.adventureBossTank:
        return _getBossClearDescription(characterName, "Guardião");
      case QuestType.adventureBossRanger:
        return _getBossClearDescription(characterName, "Atirador");
      case QuestType.dimensionalBossFight:
        return "Chefe dimensional: enfrentar $_ammountCompletedText${_getCharacterPresentText(characterName)}";
      case QuestType.dimensionalBossDefeat:
        return "Chefe dimensional: derrotar $_ammountCompletedText${_getCharacterPresentText(characterName)}";
      case QuestType.dimensionalBossSummonReward:
        return "Chefe dimensional: receber recompensa de invocação $_ammountCompletedText";
      case QuestType.dimensionalBossSummon:
        return "Chefe dimensional: invocar $_ammountCompletedText";
      case QuestType.skillUse:
        return "Aventura: usar a habilidade $_skillName $_ammountCompletedText";
      case QuestType.annihilation:
        return "Extermínio: concluir $_ammountCompletedText${_getCharacterPresentText(characterName)}";
      case QuestType.dailyDefense:
        return "Defesa diária: concluir $_ammountCompletedText${_getCharacterPresentText(characterName)}";
      case QuestType.wizardLabyrinth:
        return "Labirinto fantasmagórico: concluir $_ammountCompletedText${_getCharacterPresentText(characterName)}";
      case QuestType.dimensionalChasm:
        return "Fenda dimensional: concluir $_ammountCompletedText${_getCharacterPresentText(characterName)}";
      case QuestType.guildWarStars:
        return "GvG: ganhar $_ammountCompletedText estrelas";
      case QuestType.adventurerKeySend:
        return "Amigos: Enviar $_ammountCompletedText chaves";
    }
  }

  LikabilityQuestModel({
    required this.questType,
    this.skill = Skill.none,
    required this.ammount,
    this.ammountCompleted = 0,
    this.bpRequired = 0,
    this.characterPresent = false,
  });
}
