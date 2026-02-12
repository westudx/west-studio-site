# 1. 找一个预装了 Java 的“基础底盘”
FROM eclipse-temurin:21-jdk-alpine

# 2. 把我们电脑里的代码文件“复印”到容器里
COPY HelloWest.java /app/HelloWest.java

# 3. 设置容器内的工作目录
WORKDIR /app

# 4. 在容器里运行 Java 编译命令
RUN javac HelloWest.java

# 5. 设置容器启动时默认执行的命令
CMD ["java", "HelloWest"]