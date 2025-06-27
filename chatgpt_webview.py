import webview
import os
import sys

class ChatGPTApp:
    def __init__(self):
        self.window = None
        
    def start(self):
        # Путь для хранения данных
        data_dir = os.path.join(os.getenv("LOCALAPPDATA"), "ChatGPTClient", "webview_data")
        if not os.path.exists(data_dir):
            os.makedirs(data_dir)
        
        # Создаем окно с настройками
        self.window = webview.create_window(
            title="ChatGPT Desktop",
            url="https://chatgpt.com",
            width=1200,
            height=800,
            resizable=True,
            fullscreen=False,
            frameless=True,
            min_size=(800, 600)
        )
        
        # Запускаем с настройками для сохранения данных
        webview.start(
            gui='edgechromium',
            private_mode=False,  # Отключаем приватный режим для сохранения cookies
            storage_path=data_dir,
            user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
            debug=False
        )

if __name__ == "__main__":
    app = ChatGPTApp()
    app.start()