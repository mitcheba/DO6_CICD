# Basic CI/CD

## Part 1. Настройка gitlab-runner

Поднять виртуальную машину Ubuntu Server 22.04 LTS.

![Part1.1](screenshot/part1/part1.1.png)

Скачать и установить на виртуальную машину gitlab-runner.

![Part1.2](screenshot/part1/part1.2.png)

Запустить gitlab-runner и зарегистрировать его для использования в текущем проекте (DO6_CICD).

![Part1.3](screenshot/part1/part1.3.png)

## Part 2. Сборка

### Написать этап для CI по сборке приложений из проекта C2_SimpleBashUtils.

![Part2.1](screenshot/part2/part2.1.png)

В файле gitlab-ci.yml добавить этап запуска сборки через мейк файл из проекта C2.

Файлы, полученные после сборки (артефакты), сохранить в произвольную директорию со сроком хранения 30 дней.

![Part2.2](screenshot/part2/part2.2.png)

## Part 3. Тест кодстайла

### Написать этап для CI, который запускает скрипт кодстайла (clang-format).

![Part3.1](screenshot/part3/part3.1.png)

Если кодстайл не прошел, то «зафейлить» пайплайн.

В пайплайне отобразить вывод утилиты clang-format.

![Part3.2](screenshot/part3/part3.2.png)

## Part 4. Интеграционные тесты

### Написать этап для CI, который запускает интеграционные тесты из того же проекта.

![Part4.1](screenshot/part4/part4.1.png)

Запустить этот этап автоматически только при условии, если сборка и тест кодстайла прошли успешно.

Если тесты не прошли, то «зафейли» пайплайн.

В пайплайне отобразить вывод, что интеграционные тесты успешно прошли / провалились

![Part4.2](screenshot/part4/part4.2.png)

## Part 5. Этап деплоя

Поднять вторую виртуальную машину Ubuntu Server 22.04 LTS.

### Написать этап для CD, который «разворачивает» проект на другой виртуальной машине.

![Part5.1](screenshot/part5/part5.1.png)

Запустить этот этап вручную при условии, что все предыдущие этапы прошли успешно.

Написать bash-скрипт, который при помощи ssh и scp копирует файлы, полученные после сборки (артефакты), в директорию /usr/local/bin второй виртуальной машины.

В файле gitlab-ci.yml добавить этап запуска написанного скрипта.

![Part5.2](screenshot/part5/part5.2.png)

В случае ошибки «зафейлить» пайплайн.

![Part5.3](screenshot/part5/part5.3.png)

![Part5.4](screenshot/part5/part5.4.png)

## Part 6. Дополнительно. Уведомления

Настроить уведомления о успешном/неуспешном выполнении пайплайна через бота с именем «mitcheba DO6 CI/CD» в Telegram.

Скрипт бота

![Part6.1](screenshot/part6/part6.1.png)

Добавляем в файл gitlab-ci.yml этап запуска

![Part6.22](screenshot/part6/part6.22.png)

Вывод бота

![Part6.2](screenshot/part6/part6.2.png)
