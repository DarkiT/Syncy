# 简介

SyncY--可在路由上运行的百度网盘同步软件
SyncY是一款通过调用百度PCS开放的API接口实现基于linux内核系统的文件上传、下载和同步的程序，可运行于open-wrt、dd-wrt、centos等linux内核的系统之上，也可运行于部分厂商的nas产品上，可实现文件的上传、下载和同步。
SyncY从发布至今深受广大用户的喜欢和支持，如今已发展到第二版，在V2版中更是增加了多任务多线程的支持，实现了更高速度的上传和下载。
SyncY官方网址：http://www.syncy.cn
******
# 配置与运行

## 初次运行配置

拉取镜像，挂载下载目录和配置文件目录，并进行初次运行配置。其中`/localpath` 需修改为为宿主机下载目标路径

浏览器中打开

    https://pan.shekd.com/baidu/login

使用微信扫描浏览器显示的二维码后进行相关授权操作，获得授权token后，将所获得的token填入配置文件syncy 第三行token处，再次启动容器程序将自动拉取您的授权信息（默认授权信息有效期为30天，在到期前3天内微信将会发送消息提醒你进行续期操作，直接点击微信消息按首次方法即可进行授权续期）。

    INFO: Get device token success.

显示以上日志内容即为已经成功获取了您百度网盘的授权信息，程序已经可以正常工作。

程序具体配置说明请参考 http://www.syncy.cn/index.php/syncyconfighelp/

## 运行Syncy

执行以下命令运行Syncy

    sudo docker start syncy

执行以下命令查看Syncy运行状态

    sudo docker logs syncy

## 自动启动

在 `/etc/rc.local` 中添加以下命令，使syncy随宿主机自动启动（需要先配置好docker自动启动）

    docker start syncy
    
******
# 更新日志
## 2017/8/27

第一次研究Python 第一次使用Docker，程序不排除有bug，欢迎提交，尽力修复

1. 改为用 `Dockerfile` 构建镜像
2. 修改配置文件路径为 `/config/syncy`
3. 修改默认下载路径为 `/downloads/`
4. 挂载配置目录为 `/config/`
4. 挂载下载目录改为 `/downloads/`
******
# 参考


项目主页 https://github.com/DarkiT/Syncy

原作者 https://github.com/wishinlife