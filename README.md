# Ubuntu

This project provides a custom Docker image based on Ubuntu, designed to simulate a minimal VPS environment. It includes an SSH server enabled by default, allowing users to interact with the container just like a typical remote server. This setup is ideal for testing, development, or training purposes where a lightweight and easily reproducible virtual server is needed.

https://github.com/vevc/ubuntu

[Claw cloud 容器 VPS 安装](https://www.youtube.com/watch?v=TkdGQQsVWII&list=PLPIt8ET248RAM756vmUq4RXHiJb_Jy8WN)

[Claw cloud 容器改造 VPS, 实现 SSH 远程登录](https://vevc.dpdns.org/archives/2.html)
[Claw cloud 容器改造 VPS, 使用 supervisor 管理容器进程，实现应用开机自启、自动保活、cron 规则持久化](https://vevc.dpdns.org/archives/3.html)
[Claw cloud 容器 VPS 安装 xray | 提取复用 3x-ui 配置，手动部署 xray 代理 | All in one 容器 VPS](https://vevc.dpdns.org/archives/5.html)
[Claw cloud 容器 VPS 安装 ttyd，在浏览器 web 页面登录和使用 ssh 终端](https://vevc.dpdns.org/archives/7.html)

SSH_USER=zls
SSH_PASSWORD=ubYaM1bK3bAF

## Usage

```bash
docker run -d \
  --name ubuntu \
  -p 2222:22 \
  -e SSH_USER=ubuntu \
  -e SSH_PASSWORD='ubuntu!23' \
  ghcr.io/zls3201/ubuntu:25.11.13.9
```

