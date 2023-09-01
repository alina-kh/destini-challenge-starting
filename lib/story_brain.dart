import 'story.dart';

class StoryBrain {
  int storyNumber = 0;

  List<Story> _storyData = [
    Story(
      'У вашей машины лопнуло колесо на извилистой дороге посреди пустыни, где нет связи по мобильному телефону. Вы решаете путешествовать автостопом. Ржавый пикап с грохотом останавливается рядом с вами. Мужчина в широкополой шляпе с бездушными глазами открывает вам пассажирскую дверь и спрашивает: «Подвезти?».',
      'Я поеду. Спасибо за помощь!',
      'Лучше сначала спроси его, убийца ли он.'),
    Story(
      'Он медленно кивает, не обращая внимания на вопрос.',
      'По крайней мере, он честен. Я залезу.',
      'Подождите, я знаю, как поменять колесо.'),
    Story(
      'Когда вы садитесь за руль, незнакомец начинает рассказывать о своих отношениях с матерью. С каждой минутой он злится всё больше и больше. Он просит вас открыть бардачок. Внутри вы находите окровавленный нож, два отрубленных пальца и кассету с Элтоном Джоном. Он тянется к бардачку.',
      'Обожаю Элтона Джона! Передайте ему кассету.',
      'Либо он, либо я! Ты берешь нож и наносишь ему удар.'),
    Story(
      'Что? Я полицейский! Знаете ли вы, что дорожно-транспортные происшествия являются второй по значимости причиной смерти в результате несчастных случаев для большинства взрослых возрастных групп?',
      'Перезапуск',
      ''),
    Story(
      'Когда вы пробиваетесь через ограждение и летите к зазубренным камням внизу, вы размышляете о сомнительной мудрости нанесения удара ножом кому-то, когда он ведет машину, в которой вы находитесь.',
      'Перезапуск',
      ''),
    Story(
      'Вы сближаетесь с убийцей, напевая стихи «Можете ли вы почувствовать любовь сегодня вечером». Он высадит тебя в следующем городе. Прежде чем уйти, он спрашивает, знаете ли вы хорошие места, где можно сбрасывать тела. Вы отвечаете: «Попробуйте пирс».',
      'Перезапуск',
      '')
  ];

  getStory(storyNumber) {
    return _storyData[nextStory(storyNumber)].storyTitle;
  }

  getChoice1(storyNumber) {
    return _storyData[nextStory(storyNumber)].choice1;
  }

  getChoice2(storyNumber) {
    return _storyData[nextStory(storyNumber)].choice2;
  }

  nextStory(int choiceNumber) {
    if(choiceNumber == 1) {
      storyNumber = storyNumber + 2;
    }
    if(storyNumber == 3 || storyNumber == 4 || storyNumber == 5) {
      storyNumber = 0;
    }

    return storyNumber;
  }
}

//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
