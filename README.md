# Java Docker контейнер

## Сборка контейнера

```sh
docker build -t myjavaapp .
```

## Запуск контейнера

```sh
docker run --rm myjavaapp
```

## Описание
- Контейнер компилирует и запускает Main.java.
- Используется официальный образ openjdk:21. 