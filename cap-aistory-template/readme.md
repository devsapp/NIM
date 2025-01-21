
> 注：当前项目为 Serverless Devs 应用，由于应用中会存在需要初始化才可运行的变量（例如应用部署地区、函数名等等），所以**不推荐**直接 Clone 本仓库到本地进行部署或直接复制 s.yaml 使用，**强烈推荐**通过 `s init ${模版名称}` 的方法或应用中心进行初始化，详情可参考[部署 & 体验](#部署--体验) 。

# nim_aistory 帮助文档
<p align="center" class="flex justify-center">
    <a href="https://www.serverless-devs.com" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=nim_aistory&type=packageType">
  </a>
  <a href="http://www.devsapp.cn/details.html?name=nim_aistory" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=nim_aistory&type=packageVersion">
  </a>
  <a href="http://www.devsapp.cn/details.html?name=nim_aistory" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=nim_aistory&type=packageDownload">
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
   
- :fire: 通过 [Serverless 应用中心](https://fcnext.console.aliyun.com/applications/create?template=nim_aistory) ，
  [![Deploy with Severless Devs](https://img.alicdn.com/imgextra/i1/O1CN01w5RFbX1v45s8TIXPz_!!6000000006118-55-tps-95-28.svg)](https://fcnext.console.aliyun.com/applications/create?template=nim_aistory) 该应用。
   
</appcenter>
<deploy>
    
- 通过 [Serverless Devs Cli](https://www.serverless-devs.com/serverless-devs/install) 进行部署：
  - [安装 Serverless Devs Cli 开发者工具](https://www.serverless-devs.com/serverless-devs/install) ，并进行[授权信息配置](https://docs.serverless-devs.com/fc/config) ；
  - 初始化项目：`s init nim_aistory -d nim_aistory`
  - 进入项目，并进行项目部署：`cd nim_aistory && s deploy -y`
   
</deploy>

## 应用详情

<appdetail id="flushContent">

本应用旨在帮助开发者实现将 NIM AI_Story 应用部署到阿里云函数计算，并且轻松实现一键拉起 NVIDIA NIM驱动的LLM 故事demo，体验通过大语言模型（LLM）来生成不同主题的故事

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


- **步骤一**：登录阿里云函数计算 FC 2.0控制台，点击左侧应用，选择【创建应用】，在【人工智能】页签下可以找到NVIDIA NIM  AI Story应用，点击【立即创建】![](https://img.alicdn.com/imgextra/i4/O1CN01sRXy4D25IQhAsBPMf_!!6000000007503-0-tps-2996-1488.jpg)


- **步骤二**：部署类型选择【直接部署】![](https://img.alicdn.com/imgextra/i2/O1CN012OJNbi1tnmPwmzUrz_!!6000000005947-49-tps-937-451.webp)


- **步骤三**：需要授权  AliyunFCServerlessDevsRole 角色，点击【前往授权】 —> 【同意授权】![](https://img.alicdn.com/imgextra/i1/O1CN01y21Gs21DH4GdcM0W7_!!6000000000190-49-tps-1008-549.webp)

![](https://img.alicdn.com/imgextra/i1/O1CN01OyKPjC29OA7F4xaCL_!!6000000008057-49-tps-1008-549.webp)


- **步骤四**：填入前期准备中在[NVIDIA网站](https://catalog.ngc.nvidia.com/?filters=&orderBy=weightPopularDESC&query=&page=&pageSize=)获取到的的API Key![](https://img.alicdn.com/imgextra/i3/O1CN01jT3Lca23oN5N7B3bb_!!6000000007302-0-tps-2236-484.jpg)


- **步骤五**：点击创建并部署默认环境![](https://img.alicdn.com/imgextra/i1/O1CN01DAjTm61RAZGXQdAPe_!!6000000002071-0-tps-1398-586.jpg)


- **步骤六**：耐心等待，显示部署成功后，点击访问域名即可访问应用开始体验NIM AI Story ![](https://img.alicdn.com/imgextra/i3/O1CN01KMyjia1koqnnS04tv_!!6000000004731-49-tps-1008-515.webp)![](https://img.alicdn.com/imgextra/i4/O1CN01zzbCej1cR1GZeOfwt_!!6000000003596-49-tps-1008-549.webp)


### 注意事项

- 浏览器可能会显示无法访问此网站，请不要刷新和跳转，等待几秒钟之后就会成功打开![](https://img.alicdn.com/imgextra/i2/O1CN01Eqc9Or1rgKkKBgHzs_!!6000000005660-0-tps-3024-1460.jpg)


- 如果出现部署失败的情况，请检查下日志，如果出现以下报错信息，说明日志服务SLS没有开通成功，请先到SLS控制台完成开通![](https://img.alicdn.com/imgextra/i1/O1CN018VQGQc1suotCpqMwz_!!6000000005827-49-tps-937-142.webp)![](https://img.alicdn.com/imgextra/i4/O1CN01jHl7b41i7gEjoJuhi_!!6000000004366-0-tps-2504-1162.jpg)


- 由于模型加载时间很长，因此部署时间比较长，第一次部署会在25min左右。看到日志出现如下信息，则证明在加载模型，请耐心等待![](https://img.alicdn.com/imgextra/i3/O1CN01AfKowW1bX8weQoSq0_!!6000000003474-49-tps-902-750.webp)


   - 如果想查看模型的下载进度：在资源信息下的函数资源中找到 init 函数，在调用日志中可以看到![](https://img.alicdn.com/imgextra/i4/O1CN01a2uyBc1tLNrSUnoyi_!!6000000005885-49-tps-936-469.webp)![](https://img.alicdn.com/imgextra/i4/O1CN01cDd79g1GQAzXEHx3o_!!6000000000616-49-tps-1008-510.webp)


- 如果在访问模型时页面出现报错信息
    -  可能由于网络问题导致模型没有启动成功，请耐心等待一分钟，并多刷新几次页面，再重新访问
    -  如果仍然出现报错信息，可以进入相对应的模型函数（llama3_1_8b 或 mistral）


       >在部署的应用中资源信息板块下的函数信息，进入模型函数
         ![](https://img.alicdn.com/imgextra/i4/O1CN01Y2WLIu1uM87dyOmlp_!!6000000006022-0-tps-3024-1646.jpg)


       >以mistral为例，进入弹性管理页签，删除现有预留实例
   ![](https://img.alicdn.com/imgextra/i2/O1CN01rOZ1381NRHFnmdqUz_!!6000000001566-0-tps-2527-528.jpg)


       >再点击创建规则，版本或别名选择LATEST，最小实例数填入1，启用闲置模式，点击创建
  ![](https://img.alicdn.com/imgextra/i4/O1CN01ALtKcJ1bN4EZaPZaw_!!6000000003452-0-tps-1397-551.jpg)
  ![](https://img.alicdn.com/imgextra/i4/O1CN01VFzoMu1GFBU2Ai2tt_!!6000000000592-0-tps-1529-1121.jpg)


       >并耐心等待两分钟，进入函数调用日志，看到如下日志信息证明模型启动成功
  ![](https://img.alicdn.com/imgextra/i2/O1CN011W6gdW1Ehv6VbF2K6_!!6000000000384-0-tps-2174-1402.jpg)

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