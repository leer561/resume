angular.module 'profile-data', []
.constant 'profileData', {
  skills: [
    {
      name: '编程语言：'
      groups: [
        'JavaScript'
        'HTML'
        'CSS'
        'Swift(学习中)'
      ]
    }
    {
      name: '预处理器：'
      groups: [
        'CoffeeScript'
        'Less'
        'Sass'
        'Jade'
      ]
    }
    {
      name: '前端工具：'
      groups: [
        'Gulp'
        'Bower'
      ]
    }
    {
      name: '库与框架：'
      groups: [
        'Angularjs'
        'Jquery'
        'Bootstrap'
        'lodash'
        'Highcharts'
        'Express'
        'Mongoose'
        'Karma'
      ]
    }
    {
      name: '版本管理：'
      groups: [
        'Git(Git flow)'
      ]
    }
    {
      name: '工作环境：'
      groups: [
        'Atlassian'
        'OSX'
        'Apiary'
        'InVision'
        'HipChat'
      ]
    }
    {
      name: '常用软件：'
      groups: [
        'WebStorm'
        'SourceTree'
        'Xcode'
        'Photoshop'
        'Sketch'
        'Charles'
      ]
    }
  ]
  works: [
    {
      time: '2015-02至今'
      title: 'Rightcapital主站开发 www.rightcapital.com'
      content: [
        '职责：前端开发'
        '1、主要使用Angularjs，其他主要使用Bootstrap，angular-bootstrap，Highcharts等完成页面开发。'
        '2、深入理解Angular内部promise, NgModelController, $resource等并熟练使用Directive, Service, Resource, UI Router等module。'
        '3、熟悉并习惯Atlassian，Git flow工作流程。'
      ]
    }
    {
      time: '2014-03至2015-02'
      title: 'HINT2期平板销售工具'
      content: [
        '职责：主设计和前端开发'
        '1、完成dms前台接待、潜客录入、潜客管理等业务逻辑平板端实现'
        '2、主要页面商务备忘、试乘试驾、合同签订、交车的交互以及UI标准'
        '3、后台打印模板自由扩展的前端实现'
      ]
    }
    {
      time: '2014-02至2014-03'
      title: 'S4S微信销售工具'
      content: [
        '职责：主设计'
        '1、分析竞品，引入卡片式设计'
        '2、完成交互设计，以及色彩，排版，布局的UI标准'
      ]
    }
    {
      time: '2014-3'
      title: '纪念google+最萌战争，'
      content: [
        '职责：设计与开发，自嗨作品，主要是用来学习'
        '1、体验angularjs的各种坑，体验route, directive, emit, sanitize, animate等'
        '2、添加google+登录接口（翻墙），接口api资料用起来各种坑'
        '3、使用socket.io搭建聊天室(基于google+登陆,jwt加密token),版本混乱的socket.io接口api各种坑'
        '4、express新版本4.X版本的各插件例如logger, bodyParser, expressJwt等的使用'
      ]
    }
    {
      time: '2013-12至2014-01'
      title: '观澜湖新城MHMall的移动界面设计'
      content: [
        '职责：主设计'
        '1、确定设计主题colorful，完成交互设计，以及色彩，排版，布局的UI标准'
        '2、完成其他特色模块，室内导航，消息通知，预定，儿童防丢失等'
      ]
    }
    {
      time: '2013-9至2014-01'
      title: '中国体育彩票帷胜决策分析系统ipad版本'
      content: [
        '职责：前端开发'
        '1、highcharts添加触摸支持，添加数据map联动，饼图柱状图联动'
        '2、使用神州数码移动中间件打包，完成文件下载，定时更新'
        '3、ISCROLL 4完成下拉更新，多区域滚动'
        '4、tablesorter各种数据类型的表格排序'
      ]
    }
    {
      time: '2012-12至2013-5'
      title: '东风本田HINT销售系统一体机版本'
      content: [
        '职责：前端开发，主设计'
        '1、用于车展等展示例如外观展示，内饰展示，加装展示'
        '2、用于4s店展厅展示车辆外观颜色等页面'
        '3、用于资料录入，流程完成等页面'
        '4、tablesorter各种数据类型的表格排序'
      ]
    }
    {
      time: '2012-9至2012-12'
      title: '平谷移动政务App和长江商学院十周年会议App'
      content: [
        '职责：前端开发，主设计'
        '1、两个项目只是设计有差别，前端差别并不大，均是自己的前端组件'
        '2、了解viewport、css媒体查询、使用css3盒子模型,相对单位em完成设备适配'
        '3、使用load、本地存储、css3动画完成转场'
        '4、ISCROLL 4完成下拉更新，区域滚动'
      ]
    }
  ]
}
