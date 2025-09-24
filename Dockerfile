# 基础 Dockerfile 示例
FROM ubuntu:24.04

# 设置时区和语言（可选）
ENV TZ=Asia/Shanghai \
    LANG=C.UTF-8

# 安装基础工具
RUN apt-get update && \
    apt-get install -y bash && \
    rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /app

# 复制项目文件（如有应用代码可修改）
COPY . /app

# 默认命令
CMD ["bash"]
