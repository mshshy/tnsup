# استخدام صورة بايثون الأساسية
FROM python:3.9-slim

# إعداد دليل العمل
WORKDIR /app

# نسخ ملف المتطلبات وتثبيتها
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# نسخ باقي الملفات إلى دليل العمل
COPY . .

# تحديد الأمر الافتراضي لتشغيل التطبيق
CMD ["python", "run.py"]
