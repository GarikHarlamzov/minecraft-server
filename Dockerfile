FROM eclipse-temurin:21-jdk

WORKDIR /app

# Копируем все файлы сервера внутрь контейнера
COPY server/ .

# Открываем стандартный порт Minecraft
EXPOSE 4999

# Запускаем сервер с указанием папки мира
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "paper-1.20.1-196.jar", "nogui"] 