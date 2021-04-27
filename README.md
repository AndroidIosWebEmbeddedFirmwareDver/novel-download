
# 小说精品屋-download


#### 项目介绍

1. 服务器只保存小说关键信息，不保存章节内容，减少硬盘占用和提升爬取效率（1小时大约可爬取10万本小说）。
2. 多爬虫源配置，增加小说资源的有效性。


#### 接口文档

[点击查看接口文档示例](doc/api/api.md)

#### 安装步骤（源码，小白请看其他安装教程）

##### 数据库安装：

1. 安装MySQL软件。
2. 修改MySQL`max_allowed_packet `配置（建议100M）。
3. 新建数据库，设置编码为utf8mb4（utf8mb4_bin）。
4. 执行doc/sql/novel_plus.sql脚本文件。

~~~
[SQL] Query novel_download start
[ERR] 1273 - Unknown collation: 'utf8mb4_0900_ai_ci'
[ERR] /*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : novel_plus
Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

~~~

##### 爬虫管理系统安装：

1. 修改novel-common模块下application-common-dev.yml（dev环境，默认环境）或application-common-prod.yml（prod环境，需要在application.yml配置文件中切换）配置文件中的数据库配置。
2. 修改novel-crawl模块下application.yml文件中的管理员账号密码。
3. 启动程序，打开浏览器，默认8081端口访问。
4. 选择已有或新增爬虫源（支持自定义爬虫规则），点击`开启`按钮，开始爬取小说数据。

##### 前台小说门户安装（dev环境跳过3、4步骤）：

1. 修改novel-common模块下application-common-dev.yml（dev环境，默认环境）或application-common-prod.yml（prod环境，需要在application.yml配置文件中切换）配置文件中的数据库配置。

2. 修改novel-front模块下application-website配置文件中的网站信息。

  ```
  #网站配置
  website:
    #网站名
    name: Novel-Boutique
    #域名
    domain: xiongxyang.gitee.io
    #SEO关键词
    keyword: ${website.name},小说,小说CMS,原创文学系统,开源小说系统,免费小说建站程序
    #SEO描述
    description: ${website.name}是一个多端（PC、WAP）阅读、功能完善的原创文学CMS系统，由前台门户系统、作家后台管理系统、平台后台管理系统、爬虫管理系统等多个子系统构成，支持会员充值、订阅模式、新闻发布和实时统计报表等功能，新书自动入库，老书自动更新。
    #联系QQ
    qq: 1179705413
  ```

3. prod环境下需要修改novel-front模块下application-prod.yml配置文件中的模版名为你需要使用的模版名（templates文件夹下的模版文件夹名，内置orange和dark两套模版，prod环境下才支持多模版）。

  ```
  #模版配置
  templates:
    #模版名
    name: orange
  ```

4. prod环境下的jar包形式部署时，需要复制templates文件夹到jar文件的相同目录下。

5. 启动程序，打开浏览器，默认8080端口访问。
