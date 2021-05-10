import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/shared/models/likability_character_model.dart';
import 'package:grand_chase_farm_guide/shared/models/likability_episode_model.dart';
import 'package:grand_chase_farm_guide/shared/models/likability_quest_model.dart';

class LikabilityDetailsRepository with ChangeNotifier {
  setAmmountCompleted(
    String characterName,
    int episodeNumber,
    int episodeQuestIndex,
    int ammountCompleted,
  ) {
    LikabilityCharacterModel character = getCharacter(characterName);
    if (episodeNumber > 1 &&
        !character.getEpisode(episodeNumber - 1).isEpisodeComplete) return;

    bool episodeWasCompleteBefore =
        character.getEpisode(episodeNumber).isEpisodeComplete;

    LikabilityQuestModel episodeQuest =
        getEpisodeQuest(characterName, episodeNumber, episodeQuestIndex);

    episodeQuest.ammountCompleted = ammountCompleted;

    if (episodeWasCompleteBefore &&
        !character.getEpisode(episodeNumber).isEpisodeComplete) {
      character.resetEpisodes(episodeNumber + 1);
    }

    notifyListeners();
  }

  LikabilityCharacterModel getCharacter(String characterName) =>
      likabilityCharacters
          .firstWhere((element) => element.characterName == characterName);

  LikabilityEpisodeModel getEpisode(String characterName, int episodeNumber) =>
      likabilityCharacters
          .firstWhere((element) => element.characterName == characterName)
          .likabilityEpisodes
          .firstWhere((element) => element.episodeNumber == episodeNumber);

  LikabilityQuestModel getEpisodeQuest(
          String characterName, int episodeNumber, int episodeQuestIndex) =>
      likabilityCharacters
          .firstWhere((element) => element.characterName == characterName)
          .likabilityEpisodes
          .firstWhere((element) => element.episodeNumber == episodeNumber)
          .likabilityQuests
          .elementAt(episodeQuestIndex);

  List<LikabilityCharacterModel> likabilityCharacters = [
    LikabilityCharacterModel(
      characterName: "Amy",
      likabilityEpisodes: [
        LikabilityEpisodeModel(
          episodeNumber: 1,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.adventureBossMage,
              ammount: 20,
              ammountCompleted: 20,
              characterPresent: true,
              bpRequired: 80000,
            ),
            LikabilityQuestModel(
              questType: QuestType.skillUse,
              ammount: 50,
              ammountCompleted: 50,
              skill: Skill.s2,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 2,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.adventureBossHealer,
              ammount: 30,
              ammountCompleted: 10,
              characterPresent: true,
              bpRequired: 130000,
            ),
            LikabilityQuestModel(
              questType: QuestType.wizardLabyrinth,
              ammount: 2,
              characterPresent: false,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 3,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.adventureClear,
              ammount: 40,
              characterPresent: true,
              bpRequired: 175000,
            ),
            LikabilityQuestModel(
              questType: QuestType.dailyDefense,
              ammount: 2,
              characterPresent: true,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 4,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.skillUse,
              ammount: 300,
              skill: Skill.s1,
            ),
            LikabilityQuestModel(
              questType: QuestType.dailyDefense,
              ammount: 3,
              characterPresent: true,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 5,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.wizardLabyrinth,
              ammount: 3,
              characterPresent: false,
            ),
            LikabilityQuestModel(
              questType: QuestType.dimensionalBossFight,
              ammount: 50,
              characterPresent: true,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 6,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.adventureBossTank,
              ammount: 70,
              characterPresent: true,
              bpRequired: 270000,
            ),
            LikabilityQuestModel(
              questType: QuestType.dimensionalChasm,
              ammount: 14,
              characterPresent: false,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 7,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.guildWarStars,
              ammount: 6,
            ),
            LikabilityQuestModel(
              questType: QuestType.dimensionalBossSummonReward,
              ammount: 6,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 8,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.adventureClear,
              ammount: 90,
              characterPresent: true,
              bpRequired: 375000,
            ),
            LikabilityQuestModel(
              questType: QuestType.annihilation,
              ammount: 2,
              characterPresent: false,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 9,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.skillUse,
              ammount: 60,
              skill: Skill.special,
            ),
            LikabilityQuestModel(
              questType: QuestType.dailyDefense,
              ammount: 5,
              characterPresent: true,
            ),
          ],
        ),
      ],
    ),
    LikabilityCharacterModel(
      characterName: "Arme",
      likabilityEpisodes: [
        LikabilityEpisodeModel(
          episodeNumber: 1,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.adventureBossMage,
              ammount: 20,
              ammountCompleted: 20,
              characterPresent: true,
              bpRequired: 80000,
            ),
            LikabilityQuestModel(
              questType: QuestType.skillUse,
              ammount: 50,
              ammountCompleted: 50,
              skill: Skill.s2,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 2,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.adventureBossHealer,
              ammount: 30,
              ammountCompleted: 10,
              characterPresent: true,
              bpRequired: 130000,
            ),
            LikabilityQuestModel(
              questType: QuestType.wizardLabyrinth,
              ammount: 2,
              characterPresent: false,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 3,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.adventureClear,
              ammount: 40,
              characterPresent: true,
              bpRequired: 175000,
            ),
            LikabilityQuestModel(
              questType: QuestType.dailyDefense,
              ammount: 2,
              characterPresent: true,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 4,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.skillUse,
              ammount: 300,
              skill: Skill.s1,
            ),
            LikabilityQuestModel(
              questType: QuestType.dailyDefense,
              ammount: 3,
              characterPresent: true,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 5,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.wizardLabyrinth,
              ammount: 3,
              characterPresent: false,
            ),
            LikabilityQuestModel(
              questType: QuestType.dimensionalBossFight,
              ammount: 50,
              characterPresent: true,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 6,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.adventureBossTank,
              ammount: 70,
              characterPresent: true,
              bpRequired: 270000,
            ),
            LikabilityQuestModel(
              questType: QuestType.dimensionalChasm,
              ammount: 14,
              characterPresent: false,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 7,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.guildWarStars,
              ammount: 6,
            ),
            LikabilityQuestModel(
              questType: QuestType.dimensionalBossSummonReward,
              ammount: 6,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 8,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.adventureClear,
              ammount: 90,
              characterPresent: true,
              bpRequired: 375000,
            ),
            LikabilityQuestModel(
              questType: QuestType.annihilation,
              ammount: 2,
              characterPresent: false,
            ),
          ],
        ),
        LikabilityEpisodeModel(
          episodeNumber: 9,
          likabilityQuests: [
            LikabilityQuestModel(
              questType: QuestType.skillUse,
              ammount: 60,
              skill: Skill.special,
            ),
            LikabilityQuestModel(
              questType: QuestType.dailyDefense,
              ammount: 5,
              characterPresent: true,
            ),
          ],
        ),
      ],
    ),
  ];
}
