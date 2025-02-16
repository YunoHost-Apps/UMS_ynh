<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Universal Media Server для YunoHost

[![Уровень интеграции](https://apps.yunohost.org/badge/integration/ums)](https://ci-apps.yunohost.org/ci/apps/ums/)
![Состояние работы](https://apps.yunohost.org/badge/state/ums)
![Состояние сопровождения](https://apps.yunohost.org/badge/maintained/ums)

[![Установите Universal Media Server с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ums)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Universal Media Server быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

Universal Media Server is a DLNA-compliant UPnP Media Server. It is capable of sharing video, audio and images between most modern devices.
The program streams or transcodes many different media formats with little or no configuration. It is powered by FFmpeg, MediaInfo, OpenSubtitles, Crowdin, MEncoder, tsMuxeR, AviSynth, VLC and more, which combine to offer support for a wide range of media formats.

**Поставляемая версия:** 14.10.0~ynh1

## Снимки экрана

![Снимок экрана Universal Media Server](./doc/screenshots/screenshot.png)

## Документация и ресурсы

- Официальный веб-сайт приложения: <www.universalmediaserver.com>
- Официальная документация администратора: <https://github.com/UniversalMediaServer/UniversalMediaServer/wiki>
- Репозиторий кода главной ветки приложения: <https://github.com/UniversalMediaServer/UniversalMediaServer>
- Магазин YunoHost: <https://apps.yunohost.org/app/ums>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/ums_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/ums_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
или
sudo yunohost app upgrade ums -u https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
