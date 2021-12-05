# devenv
代码开发环境中常常需要科学上网，过去也花过时间搞环境，没有整理记录。本次花费了几天时间做的基础工作，不能再白白浪费了，步骤里面的每一步结果，记录下来：<br>
## 1.申请域名<br>
有很多教程，我使用的是自己早就在阿里云（你好万维网）申请好的域名，就直接用了。<br>
目前顶级域名据了解暂时只有freenom可免费申请，官网： http://www.freenom.com/zh/index.html<br>
如果不知道怎么申请，百度【怎么申请freenom免费域名】<br>
## 2.申请主机<br>
### 2.1 采购一台最便宜的阿里云（目前我能找到的） <br>
基础配置<br>
![image](https://user-images.githubusercontent.com/4297820/144729435-bdbf3bca-086d-4d16-9fe8-bf1ca35ece06.png)  <br>
网络和安全组<br>
![image](https://user-images.githubusercontent.com/4297820/144729500-65f530c5-4fec-4195-981c-683e30834ef6.png)<br>
确认订单<br>
![image](https://user-images.githubusercontent.com/4297820/144729690-67ab1a87-83fa-41f1-a4de-6f0e3d53af4d.png)<br>
创建实例<br>
![image](https://user-images.githubusercontent.com/4297820/144729741-3e6e0656-11ac-49af-813a-b170616a1b91.png)<br>
查看实例<br>
![image](https://user-images.githubusercontent.com/4297820/144729818-ca746d7d-b792-42f5-a632-e32a89dfb3d7.png)<br>
重置密码<br>
![image](https://user-images.githubusercontent.com/4297820/144729889-0d1783b8-f5bf-4e15-ab02-6380d4998be6.png)



结果列出来如下：<br>
![image](https://user-images.githubusercontent.com/4297820/144719891-9c465f72-8361-4b94-899a-f84a75bbc3a2.png)<br>
## 3.绑定DNS<br>
![image](https://user-images.githubusercontent.com/4297820/144697777-a575140b-bb0a-4c30-a472-06a78dfedc54.png)<br>
### 4.站长工具 ping<br>
![image](https://user-images.githubusercontent.com/4297820/144699266-5d9c0359-8580-404f-8853-d9ae4e11af77.png)<br>
https://freessl.cn<br>
## 5.申请证书<br>
![DwieuXFwEu](https://user-images.githubusercontent.com/4297820/144698331-5247a054-a975-4b07-a488-996d10f21b14.png)<br>
![image](https://user-images.githubusercontent.com/4297820/144698372-174adaa1-17f3-4e50-a105-c65981471313.png)<br>
![image](https://user-images.githubusercontent.com/4297820/144698377-b06caf55-849b-451a-a00d-8a5794130b15.png)<br>
## 6.证书管理：<br>
![image](https://user-images.githubusercontent.com/4297820/144698663-372319a8-f0f3-4933-9f96-9e8d78d17642.png)<br>
![image](https://user-images.githubusercontent.com/4297820/144698668-ab81e82e-d623-4367-bb67-e57b3f88f80b.png)<br>
## 7.服务端环境搭建
经过参照两份材料，就可以完成服务端的搭建<br>
https://www.v2rayssr.com/trojanssl.html/comment-page-1<br>
和<br>
https://www.youtube.com/watch?v=9a1x_uRzy2Q<br>
搭建好的样子截图如下：<br>
![image](https://user-images.githubusercontent.com/4297820/144720552-c76b2d80-b48d-4f17-a57f-29e12416266d.png)
### 7.1

## 8.客户端 clash 的 trojan 代理配置<br>
![middle_img_v2_7eea6559-a5d1-45e4-8657-77a21bf07f1g](https://user-images.githubusercontent.com/4297820/144699014-10689dd2-75a8-4aba-80f3-c1e6d1a322b8.png)<br>
对于规则配置，可以参见 本项目中的[文件](https://github.com/china-6268/devenv/blob/main/clash.rules)<br>
## 9.我本地客户端的默认截图记录如下：<br>
![image](https://user-images.githubusercontent.com/4297820/144719982-c866d1f4-4280-4b11-be55-103ddd4d001a.png)<br>
注意，默认是建议选择“直连模式”来出站，这样对于按流量计费的方式没有压力，等需要科学上网时，在选择规则模式来出站。设置为“系统代理”会让小猫灰色激活为黑色。此时浏览器再改为“系统代理”就可以正常的科学上网了。点击“复制终端命令”，会得到如下的内容，拷贝到终端，就可以终端科学上网了。<br>
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7891<br>
平时自己可以通过ping测试了解客户端和服务端的传输响应时延<br>
![image](https://user-images.githubusercontent.com/4297820/144720640-6c228d6e-a75a-4098-ac7e-aa90e65315db.png)<br>
## 10.允许局域网连接，是我觉得最有用的功能<br>
因为虚拟机中通过配置浏览器代理就可以通过代理客户端科学上网了。但是当局域网是通过热点搭建的时，这个功能是无效的。<br>
