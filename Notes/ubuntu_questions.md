# Ubuntu Questions

本文记录一下很多时候在ubuntu环境下遇到的各种各样的问题，有时候真的让人莫不找头脑。再次按照一个问题一个问题记录一下。



## 0. 插了网线却各种连不上网

这个问题产生的原因是NetworkManager的问题，如果你看你会发现：`device not managed`。这个时候要修改一下： `sudo gedit /etc/NetworkManager/NetworkManager.conf`, 将其中的managed=false 改为true。

然后重启一下服务：

```
sudo service network-manager restart
```

这个时候应该就可以上网了。