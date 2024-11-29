
> 注：当前项目为 Serverless Devs 应用，由于应用中会存在需要初始化才可运行的变量（例如应用部署地区、函数名等等），所以**不推荐**直接 Clone 本仓库到本地进行部署或直接复制 s.yaml 使用，**强烈推荐**通过 `s init ${模版名称}` 的方法或应用中心进行初始化，详情可参考[部署 & 体验](#部署--体验) 。

# NIM_TTS 帮助文档
<p align="center" class="flex justify-center">
    <a href="https://www.serverless-devs.com" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=NIM_TTS&type=packageType">
  </a>
  <a href="http://www.devsapp.cn/details.html?name=NIM_TTS" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=NIM_TTS&type=packageVersion">
  </a>
  <a href="http://www.devsapp.cn/details.html?name=NIM_TTS" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=NIM_TTS&type=packageDownload">
  </a>
</p>

<description>

使用serverless devs将NIM部署到阿里云函数计算上

</description>

<codeUrl>



</codeUrl>
<preview>



</preview>


## 前期准备

您需要先开通以下服务：
- 1. 函数计算 FC:
  -  1. 创建 AliyunFCDefaultRole 角色，点击同意授权![](https://img.alicdn.com/imgextra/i3/O1CN01FIQqTU1fODh2Z4r1v_!!6000000003996-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i3/O1CN0117ZZYx1iv90r8kQEj_!!6000000004474-0-tps-3024-1646.jpg)
- 2. 日志服务SLS：请到[SLS控制台](https://sls.console.aliyun.com/lognext/profile)开通日志服务
- 3. 文件存储服务NAS：请到[NAS控制台](https://nasnext.console.aliyun.com/overview)开通![](https://img.alicdn.com/imgextra/i1/O1CN01VsWn5U29xQc3cwPHa_!!6000000008134-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i1/O1CN01FLk42M1ze3hkowYRD_!!6000000006738-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i2/O1CN01AJL4nX25R8DkKR4Ob_!!6000000007522-0-tps-3024-1646.jpg)
- 4. NVIDIA API KEY：需要到[NVIDIA网站](https://catalog.ngc.nvidia.com/?filters=&orderBy=weightPopularDESC&query=&page=&pageSize=)去获取，具体操作步骤请参考[https://docs.nvidia.com/ai-enterprise/deployment/spark-rapids-accelerator/latest/appendix-ngc.html](https://docs.nvidia.com/ai-enterprise/deployment/spark-rapids-accelerator/latest/appendix-ngc.html)
- 5. 请联系阿里云函数计算技术人员为您调整后台运行配置，以便您正常使用该应用，需要提供使用主账号UID。
     -  联系方式：请添加钉钉群 11721331 申请。![](https://img.alicdn.com/imgextra/i4/O1CN01gSdE421v0QyXNE0D6_!!6000000006110-0-tps-1008-362.jpg)

<service>



| 服务 |  备注  |
| --- |  --- |
| 函数计算 |  算力将由阿里云函数计算 FC 提供 |
| 文件存储 NAS |  项目所需要的模型将会存放在 NAS 服务中 |
| 日志服务 SLS |  提供函数级别的日志服务 |

</service>

推荐您拥有以下的产品权限 / 策略：
<auth>
</auth>

<remark>



</remark>

<disclaimers>



</disclaimers>

## 部署 & 体验

<appcenter>
   
- :fire: 通过 [Serverless 应用中心](https://fcnext.console.aliyun.com/applications/create?template=NIM_TTS) ，
  [![Deploy with Severless Devs](https://img.alicdn.com/imgextra/i1/O1CN01w5RFbX1v45s8TIXPz_!!6000000006118-55-tps-95-28.svg)](https://fcnext.console.aliyun.com/applications/create?template=NIM_TTS) 该应用。
   
</appcenter>
<deploy>
    
- 通过 [Serverless Devs Cli](https://www.serverless-devs.com/serverless-devs/install) 进行部署：
  - [安装 Serverless Devs Cli 开发者工具](https://www.serverless-devs.com/serverless-devs/install) ，并进行[授权信息配置](https://docs.serverless-devs.com/fc/config) ；
  - 初始化项目：`s init NIM_TTS -d NIM_TTS`
  - 进入项目，并进行项目部署：`cd NIM_TTS && s deploy -y`
   
</deploy>

## 应用详情

<appdetail id="flushContent">

使用serverless devs将NVIDIA NIM TTS 部署到阿里云函数计算上


### NIM介绍

本应用旨在帮助开发者实现将 NIM TTS 应用部署到阿里云函数计算，并且轻松实现一键拉起 NVIDIA NIM驱动的文字转语音 demo，实时体验到模型生成的语音效果

### NIM准备
该应用案例，需要您开通以下阿里云产品：



</appdetail>

## 使用文档

<usedetail id="flushContent">

## 应用介绍

本应用旨在帮助开发者实现将 NIM TTS 应用部署到阿里云函数计算，并且轻松实现一键拉起 NVIDIA NIM驱动的文字转语音 demo，实时体验到模型生成的语音效果

## 前期准备
该应用案例，需要您开通以下阿里云产品：

- 1. 函数计算 FC:
  -  1. 创建 AliyunFCDefaultRole 角色，点击同意授权![](https://img.alicdn.com/imgextra/i3/O1CN01FIQqTU1fODh2Z4r1v_!!6000000003996-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i3/O1CN0117ZZYx1iv90r8kQEj_!!6000000004474-0-tps-3024-1646.jpg)
- 2. 日志服务SLS：请到[SLS控制台](https://sls.console.aliyun.com/lognext/profile)开通日志服务
- 3. 文件存储服务NAS：请到[NAS控制台](https://nasnext.console.aliyun.com/overview)开通![](https://img.alicdn.com/imgextra/i1/O1CN01VsWn5U29xQc3cwPHa_!!6000000008134-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i1/O1CN01FLk42M1ze3hkowYRD_!!6000000006738-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i2/O1CN01AJL4nX25R8DkKR4Ob_!!6000000007522-0-tps-3024-1646.jpg)
- 4. NVIDIA API KEY：需要到[NVIDIA网站](https://catalog.ngc.nvidia.com/?filters=&orderBy=weightPopularDESC&query=&page=&pageSize=)去获取，具体操作步骤请参考[https://docs.nvidia.com/ai-enterprise/deployment/spark-rapids-accelerator/latest/appendix-ngc.html](https://docs.nvidia.com/ai-enterprise/deployment/spark-rapids-accelerator/latest/appendix-ngc.html)
- 5. 请联系阿里云函数计算技术人员为您调整后台运行配置，以便您正常使用该应用，需要提供使用主账号UID。
     -  联系方式：请添加钉钉群 11721331 申请。![](https://img.alicdn.com/imgextra/i4/O1CN01gSdE421v0QyXNE0D6_!!6000000006110-0-tps-1008-362.jpg)

</usedetail>


<devgroup>


## 开发者社区

您如果有关于错误的反馈或者未来的期待，您可以在 [Serverless Devs repo Issues](https://github.com/serverless-devs/serverless-devs/issues) 中进行反馈和交流。如果您想要加入我们的讨论组或者了解 FC 组件的最新动态，您可以通过以下渠道进行：

<p align="center">  

| <img src="https://serverless-article-picture.oss-cn-hangzhou.aliyuncs.com/1635407298906_20211028074819117230.png" width="130px" > | <img src="https://serverless-article-picture.oss-cn-hangzhou.aliyuncs.com/1635407044136_20211028074404326599.png" width="130px" > | <img src="https://serverless-article-picture.oss-cn-hangzhou.aliyuncs.com/1635407252200_20211028074732517533.png" width="130px" > |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| <center>微信公众号：`serverless`</center>                                                                                         | <center>微信小助手：`xiaojiangwh`</center>                                                                                        | <center>钉钉交流群：`33947367`</center>                                                                                           |
</p>
</devgroup>
