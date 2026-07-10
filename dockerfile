FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    ncurses-term \
    && echo "export TERM=xterm" >> /root/.bashrc \
    && rm -rf /var/lib/apt/lists/*
RUN screen -S Rukkit
WORKDIR /app
COPY Rukkit-0.9.4.jar app.jar
EXPOSE 5123

# 启动命令
CMD ["java","-Dfile.encoding=UTF-8","-Djava.library.path=.","-cp","app.jar:libs/*","cn.rukkit.RukkitLauncher","--daemon"]
