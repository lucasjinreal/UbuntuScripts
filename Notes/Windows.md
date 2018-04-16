# Windows

这里记录一些windows下的蛋疼问题，可以说是非常蛋疼了。

## 1. Windows下pip换源

直接进入 %APPDATA% 这个目录， 新建一个pip文件夹，进去新建一个pip.ini文件，内容：

```
[global]
timeout = 6000
index-url = http://pypi.douban.com/simple
trusted-host = pypi.douban.com
```

当然也可以换其他的源，豆瓣的稳定一些，最后是这个