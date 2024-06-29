import 'package:mai_practice/features/news/model/publication_model.dart';

const _path = "assets/images/";

final List<Publication> testnews = [
  Publication(
    id: '0', 
    imagePath: "${_path}post_1.png", 
    contentComment: 'САМОЕ ВАЖНОЕ', 
    title: 'Университет Иннополис запустил промежуточный ассессмент'.toUpperCase(), 
    date: DateTime(2024, 6, 26), 
    text: _postText
  ),
  Publication(
    id: '1', 
    imagePath: "${_path}post_2.png", 
    contentComment: 'МЕРОПРИЯТИЯ', 
    title: 'Университет Иннополис запустил промежуточный ассессмент'.toUpperCase(), 
    date: DateTime(2024, 6, 26), 
    text: _postText
  ),
  Publication(
    id: '2', 
    imagePath: "${_path}post_3.png", 
    contentComment: 'РАБОТА', 
    title: 'Университет Иннополис запустил промежуточный ассессмент'.toUpperCase(), 
    date: DateTime(2024, 6, 26), 
    text: _postText
  ),
  Publication(
    id: '3', 
    imagePath: "${_path}post_4.png", 
    contentComment: 'МЕРОПРИЯТИЯ', 
    title: 'Университет Иннополис запустил промежуточный ассессмент'.toUpperCase(), 
    date: DateTime(2024, 6, 26), 
    text: _postText
  ),
  Publication(
    id: '4', 
    imagePath: "${_path}post_2.png", 
    contentComment: 'МЕРОПРИЯТИЯ', 
    title: 'Университет Иннополис запустил промежуточный ассессмент'.toUpperCase(), 
    date: DateTime(2024, 6, 26), 
    text: _postText
  ),
  Publication(
    id: '5', 
    imagePath: "${_path}post_3.png", 
    contentComment: 'РАБОТА', 
    title: 'Университет Иннополис запустил промежуточный ассессмент'.toUpperCase(), 
    date: DateTime(2024, 6, 26), 
    text: _postText
  ),
  Publication(
    id: '6', 
    imagePath: "${_path}post_4.png", 
    contentComment: 'МЕРОПРИЯТИЯ', 
    title: 'Университет Иннополис запустил промежуточный ассессмент'.toUpperCase(), 
    date: DateTime(2024, 6, 26), 
    text: _postText
  ),
];

const _postText = 'Стартует набор на стажировку в VK. Это возможность для студентов и недавних выпускников получить опыт работы в крупной IT-компании, поработать с профессионалами и в итоге получить оффер в команду — половина стажёров прошлых лет продолжили работать в компании.\n\nСейчас открыты более 40 вакансий по IT- и digital-направлениям — от маркетинга и дизайна до разработки и аналитики. Стажёров ищут для работы над продуктами ВКонтакте, VK Tech, департамента единых облачных технологий и других бизнес-юнитов VK.\n\nЧто получат стажёры: \n💙 опыт работы в крупной IT-компании; \n💙 конкурентную оплату; \n💙 обучение от экспертов-наставников в процессе работы; \n💙 возможность получить оффер в VK после стажировки.\n\nСтажировка будет проходить в онлайн- и офлайн-формате. Время старта и продолжительность стажировки (три или шесть месяцев) зависят от вакансии. Занятость — от 20 часов в неделю.\n\nВакансии будут закрываться поэтапно, как только будет набрано достаточное количество заявок. Именно поэтому откладывать регистрацию на стажировку мечты не стоит.\n\n🔥 Переходите на сайт и выбирайте свою вакансию прямо сейчас: vk.cc/cuYDvw.';