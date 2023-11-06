
![action status](https://github.com/ForwardingAgent/PostgreSQL_tasks/actions/workflows/second.yml/badge.svg)

<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!-- PROJECT LOGO -->
<div align="center">
  <h1 align="center">PostgreSQL + pgAdmin4</h1>
  <p align="center">
    Pet-project
      </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Оглавление</summary>
  <ol>
    <li>
      <a href="#О-проекте">О Проекте</a>
      <ul>
        <li><a href="#Использованые-инструменты-для-создания-проекта">Инструменты проекта</a></li>
      </ul>
    </li>
    <li>
      <a href="#Начало-работы">Начало работы</a>
      <ul>
        <li><a href="#Установка-и-запуск">Установка и запуск</a></li>
      </ul>
    </li>
    <li><a href="#Описание-и-процесс-работы">Описание и процесс работы</a></li>
    <li><a href="#Улучшения">Улучшения</a></li>
    <li><a href="#Контакты">Контакты</a></li>
    <li><a href="#Знания">Знания</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## О проекте


Проект реализован для практики запросов в базу данных PosgreSQL.
Что создал в проекте:
- реализовал базу данных PosgreSQL и сервис администрирования и разработки баз данных PostgreSQL pgAdmin 4;
- запустил проект в Docker с помощью docker-compose файла;
- изучил функционал Github Actions;
- написал код для запуска контейнеров и создания базы данных в Githyb Actions;
- на практике отработана модель MTV, операции CRUD для работы с БД с использованием ORM-интефрейса Django, реализована функция slug-и к url-адресам.


![Main_page](readme-assets/Main_page.png)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ### Built With -->

### Использованые инструменты для создания проекта:


* [![Postgres][Postgres.psg]][Postgres-url]
* [![Docker][Docker.dkr]][Docker-url]
* [![GitHub_Actions][GitHub_Actions.gtac]][GGitHub_Actions-url]
* [![GitHub][GitHub.gth]][GitHub-url]
* [![VSCode][VSCode.vsc]][VSCode-url]
* [![YouTube][YouTube.yt]][YouTube-url]


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Начало работы

Чтобы запустить локальную версию проекта необходимо скачать себе командой:
   ```sh

$ git clone https://github.com/ForwardingAgent/PostgreSQL_tasks
   ```
Затем прописать в файле .env ваши данные для следующих переменных:

для Postgres:
- POSTGRES_DB=<ваши данные>
- POSTGRES_USER=<ваши данные>
- POSTGRES_PASSWORD=<ваши данные>

для pgadmin:
- PGADMIN_DEFAULT_EMAIL=<ваши данные (email)>
- PGADMIN_DEFAULT_PASSWORD=<ваши данные (password)>

### Установка и запуск

1. Для сборки всех сервисов запустите команду
   ```sh
   docker-compose build
    ```
2. Для запуска проекта запустите команду
   ```sh
   docker-compose up
   ```
3. Доступ к БД Postgres через pgAdmin4 по адресу
   ```sh
   http://localhost:5050
   ```


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Описание и процесс работы

Данный проект запускается парой команд docker-compose build и docker-compose up, т.к. работает контейнерах на основе платформы Docker
Каждый элемент проекта запущен в своем контейнере (PostgreSQL, PgAdmin):

![Docker](readme-assets/Docker.png)


Доступ и управление базой данных Postgres осуществляется через интерфейс платформы pgAdmin:


![pgAdmin](readme-assets/pgAdmin.png)


В личном кабинете пользователя организована Корзина товаров, так же пользователь может изменять в своем профиле, фото, имя и фамилию:

![Basket](readme-assets/Basket.png)


![Pagination](readme-assets/Pagination.gif)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Улучшения

Всегда открыт к новым идеям и знаниям.

1. Создайте собственную копию проекта Fork the Project
2. Создать новую ветку (`git checkout -b feature/AmazingFeature`)
3. Создайте коммит (`git commit -m 'Add some AmazingFeature'`)
4. Запуште (`git push origin feature/AmazingFeature`)
5. Отправьте обновления в вашу ветку Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Контакты

Email - npodkopaev@gmail.com

Ссылка на проект: [https://github.com/ForwardingAgent/My_first_website](https://github.com/ForwardingAgent/My_first_website)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Знания

Некоторые ресурсы которые помогли в создании сайта:

* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
* [Malven's Flexbox Cheatsheet](https://flexbox.malven.co/)
* [Malven's Grid Cheatsheet](https://grid.malven.co/)
* [Img Shields](https://shields.io)
* [GitHub Pages](https://pages.github.com)


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew



[product-screenshot]: images/screenshot.png
[VSCode.vsc]: https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white
[VSCode-url]: https://code.visualstudio.com

[Python.py]: https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54
[Python-url]: https://www.python.org

[Django.dj]: https://img.shields.io/badge/django-%23092E20.svg?style=for-the-badge&logo=django&logoColor=white
[Django-url]: https://www.djangoproject.com


[Sqlite.sq]: https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white
[Sqlite-url]: https://www.sqlite.org/index.html

[YouTube.yt]: https://img.shields.io/badge/YouTube-%23FF0000.svg?style=for-the-badge&logo=YouTube&logoColor=white
[YouTube-url]: https://www.youtube.com


[Postgres.psg]: https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white
[Postgres-url]: https://www.postgresql.org

[Redis.rds]: https://img.shields.io/badge/redis-%23DD0031.svg?style=for-the-badge&logo=redis&logoColor=white
[Redis-url]: https://redis.io

[Docker.dkr]: https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white
[Docker-url]: https://www.docker.com

[GitHub.gth]: https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white
[GitHub-url]: https://github.com

[GitHub_Actions.gtac]: https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white
[GitHub_Actions-url]: https://github.com/features/actions

[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com

