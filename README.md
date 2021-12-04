# devenv
代码开发环境中常常需要科学上网，过去也花过时间搞环境，没有整理记录。本次花费了几天时间做的基础工作，不能再白白浪费了，步骤里面的每一步结果，记录下来：<br>
### 1.申请域名<br>
有很多教程，我使用的是自己早就在阿里云（你好万维网）申请好的域名，就直接用了。<br>
目前顶级域名据了解暂时只有freenom可免费申请，官网： http://www.freenom.com/zh/index.html<br>
如果不知道怎么申请，百度【怎么申请freenom免费域名】<br>
### 2.绑定DNS<br>
![image](https://user-images.githubusercontent.com/4297820/144697777-a575140b-bb0a-4c30-a472-06a78dfedc54.png)<br>
### 3.站长工具 ping<br>
![image](https://user-images.githubusercontent.com/4297820/144699266-5d9c0359-8580-404f-8853-d9ae4e11af77.png)<br>
https://freessl.cn<br>
### 4.申请证书<br>
![DwieuXFwEu](https://user-images.githubusercontent.com/4297820/144698331-5247a054-a975-4b07-a488-996d10f21b14.png)<br>
![image](https://user-images.githubusercontent.com/4297820/144698372-174adaa1-17f3-4e50-a105-c65981471313.png)<br>
![image](https://user-images.githubusercontent.com/4297820/144698377-b06caf55-849b-451a-a00d-8a5794130b15.png)<br>
### 5.证书管理：<br>
![image](https://user-images.githubusercontent.com/4297820/144698663-372319a8-f0f3-4933-9f96-9e8d78d17642.png)<br>
![image](https://user-images.githubusercontent.com/4297820/144698668-ab81e82e-d623-4367-bb67-e57b3f88f80b.png)<br>
## 6.服务端环境搭建
经过参照两份材料，就可以完成服务端的搭建<br>
https://www.v2rayssr.com/trojanssl.html/comment-page-1<br>
和<br>
https://www.youtube.com/watch?v=9a1x_uRzy2Q<br>
### 7.客户端 clash 的 trojan 代理配置<br>
![middle_img_v2_7eea6559-a5d1-45e4-8657-77a21bf07f1g](https://user-images.githubusercontent.com/4297820/144699014-10689dd2-75a8-4aba-80f3-c1e6d1a322b8.png)<br>
对于规则配置，可以参见 本项目中的[文件](https://github.com/china-6268/devenv/blob/main/clash.rules)<br>
