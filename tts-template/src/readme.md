
> 注：当前项目为 Serverless Devs 应用，由于应用中会存在需要初始化才可运行的变量（例如应用部署地区、函数名等等），所以**不推荐**直接 Clone 本仓库到本地进行部署或直接复制 s.yaml 使用，**强烈推荐**通过 `s init ${模版名称}` 的方法或应用中心进行初始化，详情可参考[部署 & 体验](#部署--体验) 。

# cap-nim-tts 帮助文档

<description>

部署 NIM TTS 到阿里云云应用开发平台

</description>


## 资源准备

使用该项目，您需要有开通以下服务并拥有对应权限：

<service>



| 服务/业务 |  权限  | 相关文档 |
| --- |  --- | --- |
| 函数计算 |  AliyunFCFullAccess | [帮助文档](https://help.aliyun.com/product/2508973.html) [计费文档](https://help.aliyun.com/document_detail/2512928.html) |
| 专有网络 |  AliyunFCServerlessDevsRolePolicy | [帮助文档](https://help.aliyun.com/zh/vpc) [计费文档](https://help.aliyun.com/zh/vpc/product-overview/billing) |

</service>

<remark>



</remark>

<disclaimers>



</disclaimers>

## 部署 & 体验

<appcenter>
   
- :fire: 通过 [云原生应用开发平台 CAP](https://cap.console.aliyun.com/template-detail?template=cap-nim-tts) ，[![Deploy with Severless Devs](https://img.alicdn.com/imgextra/i1/O1CN01w5RFbX1v45s8TIXPz_!!6000000006118-55-tps-95-28.svg)](https://cap.console.aliyun.com/template-detail?template=cap-nim-tts) 该应用。
   
</appcenter>
<deploy>
    
   
</deploy>

## 案例介绍

<appdetail id="flushContent">

本应用旨在帮助开发者实现将 NIM TTS 应用部署到阿里云云应用开发平台，并且轻松实现一键拉起 NVIDIA NIM驱动的文字转语音 demo，实时体验到模型生成的语音效果

## 部署准备

您需要先开通以下服务：

- 函数计算 FC：创建 AliyunFCDefaultRole 角色，点击同意授权![](https://img.alicdn.com/imgextra/i3/O1CN01FIQqTU1fODh2Z4r1v_!!6000000003996-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i3/O1CN0117ZZYx1iv90r8kQEj_!!6000000004474-0-tps-3024-1646.jpg)


- 日志服务SLS：请到[SLS控制台](https://sls.console.aliyun.com/lognext/profile)开通日志服务


- 文件存储服务NAS：请到[NAS控制台](https://nasnext.console.aliyun.com/overview)开通![](https://img.alicdn.com/imgextra/i1/O1CN01VsWn5U29xQc3cwPHa_!!6000000008134-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i1/O1CN01FLk42M1ze3hkowYRD_!!6000000006738-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i2/O1CN01AJL4nX25R8DkKR4Ob_!!6000000007522-0-tps-3024-1646.jpg)


- NVIDIA API KEY：需要到[NVIDIA网站](https://catalog.ngc.nvidia.com/?filters=&orderBy=weightPopularDESC&query=&page=&pageSize=)去获取，具体操作步骤请参考[https://docs.nvidia.com/ai-enterprise/deployment/spark-rapids-accelerator/latest/appendix-ngc.html](https://docs.nvidia.com/ai-enterprise/deployment/spark-rapids-accelerator/latest/appendix-ngc.html)

</appdetail>




## 架构图

<framework id="flushContent">

![](https://img.alicdn.com/imgextra/i3/O1CN01aCiMPw1KWpEhWgmkr_!!6000000001172-2-tps-898-518.png)

</framework>

## 使用流程

<usedetail id="flushContent">

**步骤一**：登录阿里云云应用开发平台 CAP 控制台，点击左侧「探索」，在「人工智能」页签下找到 NVIDIA NIM TTS 应用，点击并「立即部署」 ![](https://img.alicdn.com/imgextra/i1/O1CN01jDsOj61JuoMW6pgSg_!!6000000001089-0-tps-471-232.jpg)


**步骤二**：填入 API_KEY，并点解部署项目 ![](https://img.alicdn.com/imgextra/i3/O1CN01mk4lRd27j727fqTOj_!!6000000007832-0-tps-1655-867.jpg)


**步骤三**：耐心等待，显示部署成功后，点击名为 `TTS` 的 Web 服务，点击访问地址，即可访问应用开始体验 NIM TTS 
![](https://img.alicdn.com/imgextra/i2/O1CN01dyEkn81O4fLbKlLcN_!!6000000001652-0-tps-2884-1328.jpg)
![](https://img.alicdn.com/imgextra/i1/O1CN01NGfm291kle3rJxpNd_!!6000000004724-0-tps-3024-1646.jpg)

</usedetail>




## 注意事项

<matters id="flushContent">

 1. 浏览器可能会显示无法访问此网站，请不要刷新和跳转，等待几秒钟之后就会成功打开![](https://img.alicdn.com/imgextra/i2/O1CN01Eqc9Or1rgKkKBgHzs_!!6000000005660-0-tps-3024-1460.jpg)


2. 如果出现部署失败的情况，请检查下日志，如果出现以下报错信息，说明日志服务SLS没有开通成功，请先到SLS控制台完成开通![](https://img.alicdn.com/imgextra/i1/O1CN018VQGQc1suotCpqMwz_!!6000000005827-49-tps-937-142.webp)![](https://img.alicdn.com/imgextra/i4/O1CN01jHl7b41i7gEjoJuhi_!!6000000004366-0-tps-2504-1162.jpg)

</matters>



