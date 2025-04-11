# 1. Python 3.9 asosida image
FROM python:3.9-slim

# 2. Ishchi papka
WORKDIR /app

# 3. Git va kerakli paketlar
RUN apt-get update && apt-get install -y git && apt-get clean

# 4. Loyihani GitHub'dan yuklash
RUN git clone https://github.com/marlacoder43/telegram-echo-bot.git 

# 5. Python kutubxonalarni o'rnatish (agar requirements.txt bo‘lsa)
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app/telegram-echo-bot

# 6. Botni ishga tushurish
CMD ["python", "bot.py"]
