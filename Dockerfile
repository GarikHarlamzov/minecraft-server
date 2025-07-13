from eclipse-temurin:21-jdk

workdir /app

# копируем все файлы сервера внутрь контейнера
copy server/ .

# открываем стандартный порт minecraft
expose 4999

# запускаем сервер с указанием папки мира
CMD ["java", "-Xmx1024m", "-Xms1024m", "-jar", "paper-1.20.1-196.jar", "nogui"]
