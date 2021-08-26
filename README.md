### 该主题在halo博客Sakura的基础上进行了更改
- 友情链接部分

  - ![好友分组](https://images.chenmx.net/blog/image-20210507212558155.png)![image-20210507212828910](https://images.chenmx.net/blog/image-20210507212828910.png)

    ```
    大佬分组样式：<div class="note warning" style="width:100%;font-size:19px;font-family: cursive,Noto Serif SC,sans-serif;margin: 30px 0 10px 0;">🌸 大佬 —— 没有不劳而获的工作，更没有坐享其成的收获</div>
    朋友分组样式：<div class="note primary" style="width:100%;font-size:19px;font-family: cursive,Noto Serif SC,sans-serif;margin: 30px 0 10px 0;">🌤️ 朋友 —— 你的春日好运正在派件，请保持心情舒畅</div>
    邻居分组样式：<div class="note info" style="width:100%;font-size:19px;font-family: cursive,Noto Serif SC,sans-serif;margin: 30px 0 10px 0;">🍀 邻居 —— 相逢一醉是前缘，风雨散、飘然何处</div>
    ```

    感谢大佬[Sanarous](https://bestzuo.cn/)[Takagi](https://lixingyong.com/)

  - 剪刀那部分样式在代码中有，无须额外配置
  - 代码中有，无须额外配置![友情链接样式](https://images.chenmx.net/blog/image-20210507213240890.png)
  - 友情链接留言区，由于不会使用<#macro 标签，只能曲线救国，先写一篇文章，保存到草稿箱，然后点击这里，进入![image-20210507213913979](https://images.chenmx.net/blog/image-20210507213913979.png)![image-20210507214027839](https://images.chenmx.net/blog/image-20210507214027839.png)记住这里的id，然后替换这个位置的id![image-20210507214142350](https://images.chenmx.net/blog/image-20210507214142350.png)![友情链接留言区](C:\Users\Ray\AppData\Roaming\Typora\typora-user-images\image-20210507213532344.png)

- 顶部图标部分

  - 会动的图标：主题本身已经引入这俩个css文件了。[图标官方网址](http://www.fontawesome.com.cn/cheatsheet/),[图标动画官方网址](https://www.51qianduan.com/article/view/4111.html)
    ![image-20210507214304944](https://images.chenmx.net/blog/image-20210507214304944.png)

- 底部运行状态，访客数等：

  - 需在主题中配置站点成立时间和是否开启访客数统计，代码路径：**\halo-theme-sakura\footer.ftl

    ```html
    <div class="footer-device">
    			<p>
    				© ${.now?string("yyyy")}&nbsp;
    				<i class="iconfont icon-sakura rotating" style="color: #ffc0cb;display:inline-block"></i>
    				&nbsp;${(user.nickname)!}
    				<#if settings.footer_case_number??  && settings.footer_case_number != "">
    					&nbsp;
    					<a href="https://beian.miit.gov.cn/" target="_blank">${settings.footer_case_number}</a>
    				</#if>
    				<#if settings.footer_ga_case_number??  && settings.footer_ga_case_number != "">
    					&nbsp;
    					<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=${settings.footer_ga_select_number!}" target="_blank">
    						<img src="${res_base_url!}/source/images/other/gongan.png">${settings.footer_ga_case_number}
    					</a>
    				</#if>
    			</p>
    			<div class="github-badge">
    				<a style="color: #fff" rel="license" href="http://halo.run" target="_blank" title="由 Halo 驱动" data-pjax-state="">
    					<span class="badge-subject">Powered</span>
    					<span class="badge-value bg-blue">Halo</span>
    				</a>
    			</div>
    			<div class="github-badge">
    				<a style="color: #fff" rel="license" href="https://github.com/LIlGG/halo-theme-sakura" target="_blank" title="本站主题为 Sakura 主题" data-pjax-state="">
    					<span class="badge-subject">Theme</span>
    					<span class="badge-value bg-red">Sakura</span>
    				</a>
    			</div>
    			<div class="github-badge">
    				<a style="color: #fff" rel="license" href="https://cloud.tencent.com/" target="_blank" title="运行于腾讯云轻量服务器" data-pjax-state="">
    					<span class="badge-subject">Hosted</span>
    					<span class="badge-value bg-brightgreen">腾讯云</span>
    				</a>
    			</div>
    			<div class="github-badge">
    				<span class="badge-subject">访客数</span>
    				<span class="badge-value bg-orange" id="busuanzi_value_site_uv" target="_blank" title="本站访客量"></span>
    			</div>
    			<div class="github-badge">
    				<span class="badge-subject">访问量</span>
    				<span class="badge-value bg-orange" id="busuanzi_value_site_pv" target="_blank" title="本站浏览量"></span>
    			</div>
    			<div class="github-badge">
    				<span class="badge-subject">运行</span>
    				<span class="badge-value bg-blueviolet" target="_blank" title="本站已运行"><span id="span_dt_dt"></span></span>
    			</div>
    		</div>
    ```

    ![image-20210507215120663](https://images.chenmx.net/blog/image-20210507215120663.png)

  - 又拍云css代码

    ```html
    <a href="https://www.upyun.com/?utm_source=lianmeng&utm_medium=referral" style="display:flex;justify-content: center;align-content: center;"><span style="line-height:30px;">本站由</span>
    	<img src="https://images.chenmx.net/youpaiyun5.png" align="absmiddle" width="59px" height="30px">
    	<span style="line-height:30px;">提供加速服务</span>
    </a>
    ```

- 文章状态等

  - 无须额外配置，已写死在代码中![image-20210507215431136](https://images.chenmx.net/blog/image-20210507215431136.png)



- [代码Gitee仓库地址](https://gitee.com/cgd0526/halo-theme-sakura.git)前端我是真的不会，在征得各位大佬的意见后就都抄过来了，后续有新的样式，也会在此仓库提交
- 如果有加互加友链的友友们，环游留言，看到了就会加上~~~~

#### [新增大家一起来吹空调](https://halo.chenmx.net/s/air-conditioning)
### 最后再次感谢halo博客的各位大佬弄辣么好看的主题供鄙人参考（其实就是抄抄抄~~~）