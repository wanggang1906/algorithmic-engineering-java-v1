## web端的算法实践

### 功能模块

#### 基本管理系统


#### 算法实践



##### 模块命名
    + eladmin-xxx - 基本的web信息系统，原项目中的作者信息不做任何修改
    + eladmin-controller - 自己模块和前端的接口
        + xyz - web小测试相关
        + data-visual - 数据可视化
        + data-xxx - 大数据相关的模块
    + alg-python - 基本的和python通信的模块，使用sock或者微服务的方式【待定】
    + alg-xxx - 基本的算法模块，若有多个
    + data-visual - 数据可视化
    + data-xxx - 大数据相关的模块
    
#### 新建模块
    + 以eladmin为父模块，新键子模块
    + 模块建好后在sys模块的pom中引入新键的模块
    + 新键模块的代码路径必须要为me.zhengjie下