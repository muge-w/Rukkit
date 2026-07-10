FROM open-17-jdk-jammy
WORKDIR /app
COPY Rukkit-0.9.4.jar app.jar
EXPOSE 5123

# 启动命令
CMD ["java","-Dfile.encoding=UTF-8","-Djava.library.path=.","-cp","app.jar:libs/*","cn.rukkit.RukkitLauncher"]
