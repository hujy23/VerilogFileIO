# Verilog的文件读写$fscanf和$fdisplay函数的用法

这个代码是测试Verilog中的$fscanf和$fdisplay函数用法的，顺带测试了$display、$fopen、$fclose函数。

参考：[verilog $fscanf相关讲解_weizhl10131729的博客-CSDN博客](https://blog.csdn.net/weizhl10131729/article/details/78556489)

## 文件说明

fscanf_test.v   ：测试$fscanf函数用法的仿真文件；

sim.do          ：ModelSim的仿真脚本；

data_in.txt     ：测试输入文件；

data_out.txt    ：读取输入文件后写出的文件；

clean.sh        ：一键删除ModelSim仿真生成的中间文件；

## 仿真

配置好ModelSim之后，切换到当前目录，输入 `vsim -c -do sim.do` 开始仿真。

命令解释：

`vsim` 是ModelSim的仿真程序，

`-c` 指的是不打开图形界面，如果需要看波形，可以去掉此命令，

`-do` 记得有个 `-` 在前面。

在ModelSim的图形界面里，输入`do sim.do`也可以开始仿真，`quit -sim`退出vsim仿真，`quit`彻底退出vsim。
