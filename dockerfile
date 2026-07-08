# 使用轻量级 JDK 镜像（建议版本与编译时一致）
FROM sapmachine:17-alpine

# 设置工作目录
WORKDIR /app

# 将本地的 jar 包复制到镜像中（建议重命名为 app.jar 方便管理）
COPY Rukkit-0.9.4.jar app.jar

# 暴露应用端口（根据实际情况修改，比如 8080）
EXPOSE 5123

# 启动命令
CMD ["java","-Djline.terminal=none","-Dfile.encoding=UTF-8", "-Djava.library.path=.","-cp","app.jar:libs/*","cn.rukkit.RukkitLauncher"]
