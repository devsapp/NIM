
> 注：当前项目为 Serverless Devs 应用，由于应用中会存在需要初始化才可运行的变量（例如应用部署地区、函数名等等），所以**不推荐**直接 Clone 本仓库到本地进行部署或直接复制 s.yaml 使用，**强烈推荐**通过 `s init ${模版名称}` 的方法或应用中心进行初始化，详情可参考[部署 & 体验](#部署--体验) 。

# cap-nim-searchfile 帮助文档

<description>

部署 NIM Searchfile 到阿里云云应用开发平台

</description>


## 前期准备

使用该项目，您需要有开通以下服务并拥有对应权限：

<service>



| 服务/业务 |  权限  | 相关文档 |
| --- |  --- | --- |
| 函数计算 |  AliyunFCFullAccess | [帮助文档](https://help.aliyun.com/product/2508973.html) [计费文档](https://help.aliyun.com/document_detail/2512928.html) |
| 专有网络 |  AliyunFCServerlessDevsRolePolicy | [帮助文档](https://help.aliyun.com/zh/vpc) [计费文档](https://help.aliyun.com/zh/vpc/product-overview/billing) |
| 日志服务 |  AliyunFCServerlessDevsRolePolicy | [帮助文档](https://help.aliyun.com/zh/sls) [计费文档](https://help.aliyun.com/zh/sls/product-overview/billing) |

</service>

<remark>



</remark>

<disclaimers>



</disclaimers>

## 部署 & 体验

<appcenter>
   
- :fire: 通过 [云原生应用开发平台 CAP](https://devs.console.aliyun.com/applications/create?template=cap-nim-searchfile) ，[![Deploy with Severless Devs](https://img.alicdn.com/imgextra/i1/O1CN01w5RFbX1v45s8TIXPz_!!6000000006118-55-tps-95-28.svg)](https://devs.console.aliyun.com/applications/create?template=cap-nim-searchfile) 该应用。
   
</appcenter>
<deploy>
    
   
</deploy>

## 项目架构图

<framework id="flushContent">

![](https://img.alicdn.com/imgextra/i2/O1CN01Ve52G022d5k7yKVvX_!!6000000007142-0-tps-1177-706.jpg)

</framework>

## 案例介绍

<appdetail id="flushContent">

本应用旨在帮助开发者实现将 NVIDIA NIM Searchfile 应用部署到阿里云函数计算，并且轻松实现一键拉起 NVIDIA NIM驱动的 LLM demo，体验通过大语言模型（LLM）来阅读、提炼和拓展文章

## 部署准备

您需要先开通以下服务：

1. 函数计算 FC：创建 AliyunFCDefaultRole 角色，点击同意授权![](https://img.alicdn.com/imgextra/i3/O1CN01FIQqTU1fODh2Z4r1v_!!6000000003996-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i3/O1CN0117ZZYx1iv90r8kQEj_!!6000000004474-0-tps-3024-1646.jpg)


2. 日志服务SLS：请到[SLS控制台](https://sls.console.aliyun.com/lognext/profile)开通日志服务


3. 文件存储服务NAS：请到[NAS控制台](https://nasnext.console.aliyun.com/overview)开通![](https://img.alicdn.com/imgextra/i1/O1CN01VsWn5U29xQc3cwPHa_!!6000000008134-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i1/O1CN01FLk42M1ze3hkowYRD_!!6000000006738-0-tps-3024-1646.jpg)![](https://img.alicdn.com/imgextra/i2/O1CN01AJL4nX25R8DkKR4Ob_!!6000000007522-0-tps-3024-1646.jpg)


4. NVIDIA API KEY：需要到[NVIDIA网站](https://catalog.ngc.nvidia.com/?filters=&orderBy=weightPopularDESC&query=&page=&pageSize=)去获取，具体操作步骤请参考[https://docs.nvidia.com/ai-enterprise/deployment/spark-rapids-accelerator/latest/appendix-ngc.html](https://docs.nvidia.com/ai-enterprise/deployment/spark-rapids-accelerator/latest/appendix-ngc.html)

</appdetail>

## 使用流程

<usedetail id="flushContent">

**步骤一**：登录阿里云云应用开发平台 CAP 控制台，点击左侧「探索」，在「人工智能」页签下找到 NVIDIA NIM Searchfile 应用，点击并「立即部署」 ![](https://img.alicdn.com/imgextra/i2/O1CN01AYZdLB1EBOzyfXdHs_!!6000000000313-0-tps-400-126.jpg)


**步骤二**：填入 API_KEY，并点击部署项目 ![](https://img.alicdn.com/imgextra/i3/O1CN01WZcz1V1cGwZKWfeol_!!6000000003574-0-tps-1071-1151.jpg)


**步骤三**：耐心等待，显示部署成功后，点击名为 `searchfile` 的 Web 服务，点击访问地址，即可访问应用开始体验 NIM Searchfile ![](https://img.alicdn.com/imgextra/i1/O1CN01KeGGsb1S7eNKNSiUB_!!6000000002200-0-tps-2495-790.jpg)![](https://img.alicdn.com/imgextra/i4/O1CN01ob6Hmu1anLLBWYdMu_!!6000000003374-0-tps-3024-1646.jpg)

</usedetail>







## 注意事项

<matters id="flushContent">

1. 浏览器可能会显示无法访问此网站，请不要刷新和跳转，等待几秒钟之后就会成功打开![](https://img.alicdn.com/imgextra/i2/O1CN01Eqc9Or1rgKkKBgHzs_!!6000000005660-0-tps-3024-1460.jpg)


2. 如果出现部署失败的情况，请检查下日志，如果出现以下报错信息，说明日志服务SLS没有开通成功，请先到SLS控制台完成开通![](https://img.alicdn.com/imgextra/i1/O1CN018VQGQc1suotCpqMwz_!!6000000005827-49-tps-937-142.webp)![](https://img.alicdn.com/imgextra/i4/O1CN01jHl7b41i7gEjoJuhi_!!6000000004366-0-tps-2504-1162.jpg)

</matters>
