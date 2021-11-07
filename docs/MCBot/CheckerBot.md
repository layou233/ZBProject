

# CheckerBot

为了防止账号外泄，我们只提供了私聊方式使用测卡功能。  

请注意，此处所述私聊指好友私聊，并非群聊临时会话之类。所以如果在输入正确指令格式的前提下仍未获得任何响应，请不要首先认为是我们的原因，检查自己的操作是否正确。  

当然也有部分时候是我们的原因，包括Mirai内部错误或登录退出、服务器崩溃、例行维护、临时更新和一些不可抗力因素，但总体出现概率不大，我们会在得知消息的第一时间前往修复。

## 操作流程

1. 发送`checkban`指令，格式如下：

   ```
   checkban <email>:<password>
   ```

   测卡是需要提供账号密码的，不然没法测，在任何情况下，维护人员不会偷卡，目前也无人传本机器人偷卡的消息。我们的信用可以保证，请放心使用。

2. 机器人返回登录信息示例（成功状态）

   > ===CheckerBot指令===  
   > |模式：CheckBan(user:pass)  
   > |状态：登录成功！  
   > |账号类型：SFA  
   > |游戏名：aaa_bbb_ccc  
   > |UUID：1f2f1755-668f-4b8d-b55e-f82171438820  
   > |AccessToken：eyJhbGciOiJIUzI1NiJ9.eyJhZ2ciOiJDaGlsZCIsInN1YiI6ImY3N2JhNDhiMWNlODBlZjY4YjY5ZmZiNzVkZTA4MWRlIiwieWdndCI6IjhjZTkzZmI3NWU3ZTQwM2Q5ZjJlMDZjODkzYjZlM2I3Iiwic3ByIjoiMWYyZjE3NTU2NjhmNGI4ZGI1NWVmODIxNzE0Mzg4MjAiLCJpc3MiOiJZZ2dkcmFzaWwtQXV0aCIsImV4cCI6MTYzNDU0Mjc2NywiaWF0IjoxNjM0MzY5OTY3fQ.bzEKIUE39s_aoO2m-rLEv8DTRBebVAb9S8SN9VJPOJA  
   > |提示：即将进行下一步操作.  

   > ===CheckerBot指令===  
   > |模式：CheckBan(user:pass)  
   > |状态：测Ban成功！  
   > |游戏名：aaa_bbb_ccc  
   > |UUID：1f2f1755-668f-4b8d-b55e-f82171438820  
   > |  
   > |Hypixel封禁状态:Security Alert (需要申诉以转换为30d封禁)  
   > |B站@贴吧蜡油  

   > ===CheckerBot指令===  
   > |模式：CheckBan(user:pass)  
   > |状态：测Ban成功！  
   > |提示：以下为服务器返回信息，可参考作为测Ban登录结果！  
   > |信息:You are permanently banned from this server!  
   >
   > Reason: Your account has a security alert, please secure it and contact appeals.   
   > Find out more: https://www.hypixel.net/appeal  
   >
   > Ban ID: #B6FCE8BF  
   > Sharing your Ban ID may affect the processing of your appeal!

3. 如果被测账号还拥有OF Cape，则会自动生成OF Cape编辑器链接。原理见我[B站专栏](https://b23.tv/NOehDL)。

   > ===CheckerBot指令===  
   > |模式：CheckBan(user:pass)  
   > |状态：Optifine Cape编辑器链接生成成功！ 
   > |提示：这是我们的新功能，如果此账号拥有OF披风，那么可以自动生成OF披风编辑器链接，无需启动游戏即可进行披风修改或迁移操作！  
   > |链接：https://optifine.net/capeChange?u=<uuid>&n=<player_name>&s=OFCapeMadeByBilibiliAtTieBaLaYou

