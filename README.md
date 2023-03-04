# Notices 📝
Интернет-сервис для создания заметок. 

## Стек и требования

Java 17, Maven, Spring Boot 3.0.2, Spring Web, PostgreSQL, Spring Data JPA, Freemarkeк, Lombok, Bootstrap.

## Как запустить?
После копирования репозитория неободимо изменить данные в [application.properties](https://github.com/dSofarts/notices/blob/main/src/main/resources/application.properties).
Я ипользую PostgreSQL, но вы можете использовать любую другую СУБД. Пример заполнения:
    
    spring.datasource.url=jdbc:postgresql://localhost:5432/notices
    spring.datasource.username=username
    spring.datasource.password=password
    
После настройки application.properties необходимо запустить приложение. Для запуска вам обязательно потребуется **Java 17** 

Внешний вид приложения:
<img width="1792" alt="Снимок экрана 2023-03-04 в 15 19 19" src="https://user-images.githubusercontent.com/84384443/222900673-c9cdf89b-a4d7-473a-ac57-22d6d019e1d9.png">

---

Если у Вас возникли сложности или вопросы, пожалуйста пишите на почту: [DronovEgorVl@yandex.com](mailto:DronovEgorVl@yandex.com)
<div id="badges">
  <a href="https://github.com/dSofarts">
    <img src="https://img.shields.io/badge/dSofarts-161b22?style=for-the-badge&logo=github&logoColor=white" alt="github Badge"/>
  </a>
  <a href="https://t.me/psvmger/">
    <img src="https://img.shields.io/badge/Telegram-blue?style=for-the-badge&logo=Telegram&logoColor=white" alt="Telegram Badge"/>
  </a>
  <a href="https://stackoverflow.com/users/20419526/dsofarts">
    <img src="https://img.shields.io/badge/stackoverflow-f2740d?style=for-the-badge&logo=stackoverflow&logoColor=white" alt="stackoverflow Badge"/>
  </a>
</div>
