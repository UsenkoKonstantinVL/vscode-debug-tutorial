# Подготовка к презентации
1. Скачать репозиторий `git clone https://github.com/UsenkoKonstantinVL/vscode-debug-tutorial.git`
2. Собрать образ, запустив команду `./build.sh`
3. Установить в VS Code плагин для работы с **ROS'ом** и **DOCKER'ом**. 

# Дебагинг нод
1. Запускаем `./run.sh` файл.
2. Внутри собираем проект `catkin build -j4 --cmake-args -DCMAKE_BUILD_TYPE=Debug`.
3. Запускаем VS Code.
4. Внутри VS Code'а подключаемся к запущенному контейнеру.
5. Устанавливаем внутри плагин с **ROS'ом**.
6. Создаем внитри папку **.vscode**.
7. В папке создаем файл **settings.json**.
8. В файл добавляем:
```json
{
    "python.autoComplete.extraPaths": [
        "/opt/ros/noetic/lib/python3/dist-packages"
    ],
    "python.analysis.extraPaths": [
        "/opt/ros/noetic/lib/python3/dist-packages"
    ],
    "ros.distro": "noetic",
    "ros.rosSetupScript": "/opt/ros/noetic/setup.bash"

}
```
