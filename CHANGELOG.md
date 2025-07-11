# Changelog

Все важные изменения в проекте будут задокументированы в этом файле.

Формат основан на [Keep a Changelog](https://keepachangelog.com/ru/1.0.0/),
и проект придерживается [Семантического версионирования](https://semver.org/lang/ru/).

## [Unreleased]

### 🎯 Планируется
- Поддержка macOS и Linux
- Темная тема интерфейса
- Горячие клавиши для быстрого доступа
- Экспорт чатов в различные форматы (PDF, Markdown, TXT)
- Многоязычная поддержка интерфейса
- Автообновление приложения
- Интеграция с системным треем
- Поддержка прокси-серверов

## [1.0.0] - 2025-01-27

### 🎉 Первый релиз

#### ✨ Добавлено
- Базовая функциональность десктопного клиента для ChatGPT
- Безрамочное окно с современным дизайном
- Автоматическое сохранение сессий пользователя
- Локальное хранение данных и настроек
- Изменяемый размер окна (минимум 800x600)
- Интеграция с Edge WebView2 для рендеринга
- Установщик для Windows (Inno Setup)
- Поддержка Python 3.11

#### 🛠️ Технические детали
- Реализация на основе pywebview 5.4
- Использование PyQt5 как GUI фреймворка
- Сборка через PyInstaller 6.14.1
- User Agent имитирует Chrome для совместимости
- Данные сохраняются в `%LOCALAPPDATA%\ChatGPTClient`

#### 📁 Структура проекта
- `chatgpt_webview.py` - основная реализация
- `chatgpt_cef.py` - альтернативная реализация на CEFPython
- `requirements.txt` - список зависимостей
- `ChatGPT Desktop.iss` - скрипт установщика

### 🔧 Известные ограничения
- Поддержка только Windows
- Требуется постоянное интернет-соединение
- Необходим Microsoft Edge WebView2 Runtime

---

## Формат версий

### Типы изменений
- 🎉 **Добавлено** - для новых функций
- ✨ **Изменено** - для изменений в существующей функциональности
- 🗑️ **Устарело** - для функций, которые будут удалены
- 🚫 **Удалено** - для удаленных функций
- 🐛 **Исправлено** - для исправления ошибок
- 🔒 **Безопасность** - для исправлений уязвимостей

### Версионирование
Проект использует семантическое версионирование:
- **MAJOR** версия - несовместимые изменения API
- **MINOR** версия - новая функциональность с обратной совместимостью
- **PATCH** версия - исправления ошибок с обратной совместимостью

---

[Unreleased]: https://github.com/yourusername/chatgpt_client/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/yourusername/chatgpt_client/releases/tag/v1.0.0