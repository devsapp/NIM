
> 注：当前项目为 Serverless Devs 应用，由于应用中会存在需要初始化才可运行的变量（例如应用部署地区、函数名等等），所以**不推荐**直接 Clone 本仓库到本地进行部署或直接复制 s.yaml 使用，**强烈推荐**通过 `s init ${模版名称}` 的方法或应用中心进行初始化，详情可参考[部署 & 体验](#部署--体验) 。

# nim_asr 帮助文档
<p align="center" class="flex justify-center">
    <a href="https://www.serverless-devs.com" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=nim_asr&type=packageType">
  </a>
  <a href="http://www.devsapp.cn/details.html?name=nim_asr" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=nim_asr&type=packageVersion">
  </a>
  <a href="http://www.devsapp.cn/details.html?name=nim_asr" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=nim_asr&type=packageDownload">
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

使用该项目，您需要有开通以下服务：

<service>



| 服务 |  备注  |
| --- |  --- |
| 函数计算 |  本项目将由阿里云函数计算 FC 提供算力 |
| 文件存储 NAS |  本项目所需的模型将会存储在 NAS 中 |
| 日志服务 SLS |  提供日志能力 |

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
   
- :fire: 通过 [Serverless 应用中心](https://fcnext.console.aliyun.com/applications/create?template=nim_asr) ，
  [![Deploy with Severless Devs](https://img.alicdn.com/imgextra/i1/O1CN01w5RFbX1v45s8TIXPz_!!6000000006118-55-tps-95-28.svg)](https://fcnext.console.aliyun.com/applications/create?template=nim_asr) 该应用。
   
</appcenter>
<deploy>
    
- 通过 [Serverless Devs Cli](https://www.serverless-devs.com/serverless-devs/install) 进行部署：
  - [安装 Serverless Devs Cli 开发者工具](https://www.serverless-devs.com/serverless-devs/install) ，并进行[授权信息配置](https://docs.serverless-devs.com/fc/config) ；
  - 初始化项目：`s init nim_asr -d nim_asr`
  - 进入项目，并进行项目部署：`cd nim_asr && s deploy -y`
   
</deploy>

## 应用详情

<appdetail id="flushContent">

本应用旨在帮助开发者实现将NVIDIA NIM Searchfile 应用部署到阿里云函数计算，并且轻松实现一键拉起 NVIDIA NIM驱动的ASR demo，体验语音实时转化为文字

## 部署准备

您需要先开通以下服务：

- 函数计算 FC：创建 AliyunFCDefaultRole 角色，点击同意授权![](https://img.alicdn.com/imgextra/i3/O1CN01FIQqTU1fODh2Z4r1v_!!6000000003996-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i3/O1CN0117ZZYx1iv90r8kQEj_!!6000000004474-0-tps-3024-1646.jpg)


- 日志服务SLS：请到[SLS控制台](https://sls.console.aliyun.com/lognext/profile)开通日志服务


- 文件存储服务NAS：请到[NAS控制台](https://nasnext.console.aliyun.com/overview)开通![](https://img.alicdn.com/imgextra/i1/O1CN01VsWn5U29xQc3cwPHa_!!6000000008134-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i1/O1CN01FLk42M1ze3hkowYRD_!!6000000006738-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i2/O1CN01AJL4nX25R8DkKR4Ob_!!6000000007522-0-tps-3024-1646.jpg)


- NVIDIA API KEY：需要到[NVIDIA网站](https://catalog.ngc.nvidia.com/?filters=&orderBy=weightPopularDESC&query=&page=&pageSize=)去获取，具体操作步骤请参考[https://docs.nvidia.com/ai-enterprise/deployment/spark-rapids-accelerator/latest/appendix-ngc.html](https://docs.nvidia.com/ai-enterprise/deployment/spark-rapids-accelerator/latest/appendix-ngc.html)

</appdetail>

## 使用文档

<usedetail id="flushContent">

### 使用说明


- **步骤一**：登录阿里云函数计算 FC 2.0控制台，点击左侧应用，选择【创建应用】，在【人工智能】页签下可以找到NVIDIA NIM ASR应用，点击【立即创建】![](https://img.alicdn.com/imgextra/i4/O1CN01sRXy4D25IQhAsBPMf_!!6000000007503-0-tps-2996-1488.jpg)

- **步骤二**：部署类型选择【直接部署】![](https://img.alicdn.com/imgextra/i1/O1CN017CJKCy1bKmFjdXpvt_!!6000000003447-0-tps-2538-1266.jpg)

- **步骤三**：需要授权  AliyunFCServerlessDevsRole 角色，点击【前往授权】 —> 【同意授权】![](https://img.alicdn.com/imgextra/i2/O1CN01ZFMjkk1q1k1npXQAA_!!6000000005436-0-tps-2259-407.jpg)![](https://img.alicdn.com/imgextra/i4/O1CN01N3qurI1oERmfDcz9Q_!!6000000005193-0-tps-3024-1646.jpg)

- **步骤四**：填入前期准备中在[NVIDIA网站](https://catalog.ngc.nvidia.com/?filters=&orderBy=weightPopularDESC&query=&page=&pageSize=)获取到的的API Key![](https://img.alicdn.com/imgextra/i3/O1CN01jT3Lca23oN5N7B3bb_!!6000000007302-0-tps-2236-484.jpg)

- **步骤五**：点击创建并部署默认环境![](https://img.alicdn.com/imgextra/i1/O1CN01DAjTm61RAZGXQdAPe_!!6000000002071-0-tps-1398-586.jpg)

- **步骤六**：耐心等待，显示部署成功后，点击访问域名即可访问应用开始体验NIM ASR ![](https://img.alicdn.com/imgextra/i1/O1CN0131jUC31YJuetZuiv7_!!6000000003039-0-tps-2370-1151.jpg)![](https://img.alicdn.com/imgextra/i2/O1CN0192hKHl20WYpxxTMeW_!!6000000006857-0-tps-3024-1646.jpg)









### 注意事项

- 浏览器可能会显示无法访问此网站，请不要刷新和跳转，等待几秒钟之后就会成功打开![](https://img.alicdn.com/imgextra/i2/O1CN01Eqc9Or1rgKkKBgHzs_!!6000000005660-0-tps-3024-1460.jpg)


- 如果出现部署失败的情况，请检查下日志，如果出现以下报错信息，说明日志服务SLS没有开通成功，请先到SLS控制台完成开通![](https://img.alicdn.com/imgextra/i1/O1CN018VQGQc1suotCpqMwz_!!6000000005827-49-tps-937-142.webp)![](https://img.alicdn.com/imgextra/i4/O1CN01jHl7b41i7gEjoJuhi_!!6000000004366-0-tps-2504-1162.jpg)


- 由于模型加载时间很长，因此部署时间比较长，第一次部署会在10min左右。看到日志出现如下信息，则证明在加载模型，请耐心等待![](https://img.alicdn.com/imgextra/i1/O1CN01vsfjk81wSf09v3Tkc_!!6000000006307-49-tps-852-528.webp)


   - 如果想查看模型的下载进度：在资源信息下的函数资源中找到 init 函数，在调用日志中可以看到![](https://img.alicdn.com/imgextra/i1/O1CN01AefowX1CCCRNA4Agw_!!6000000000044-49-tps-867-317.webp)![](https://img.alicdn.com/imgextra/i1/O1CN01fM7UwT1buxXh3ptBc_!!6000000003526-49-tps-937-507.webp)

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
