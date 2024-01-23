# 这是一个sh脚本，可以让启智云在29分钟内恰好关机，防止扣积分 
启智云规定：
> 如不满30分钟则不计费
> 超过30分钟按小时计费 例如使用了29分钟50秒, 则不计算算力积分消耗，使用了30分钟，则按1小时计算算力消耗)

*配合此脚本使用可以无限白嫖GPU*
> 有疑问联系QQ2575044704
# 使用方法
正常运行：  
`
bash shutdown.sh
`
  
后台运行：  
```
import subprocess
try:
    process = subprocess.Popen(["bash", "shutdown.sh"])
except KeyboardInterrupt:
    print("Script execution interrupted.")
```
