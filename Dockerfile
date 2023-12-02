# определение базового образа для приложения
FROM python:3.8.18-slim 

# создание директории
WORKDIR /app

# копирование необходимых файлов для сборки приложения, установка зависимостей
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .

# открытие порта приложения
EXPOSE 8000

# запуск миграции и приложения
RUN chmod +x /app/docker-entrypoint.sh
CMD ["/app/docker-entrypoint.sh"]
