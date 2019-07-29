
[FoBis](https://github.com/szaghi/FoBiS) 是一个Fortran自动编译工具，简单好用。

# 基本变量
## 编译器相关变量
- 指定编译器
```
compiler = gnu
```

- 指定编译选项
```
cflags =
```
- 指定链接选项
```
lflags =
```
## 文件结构相关变量
- 指定编译文件夹
```
build_dir = build
```

- 指定源码位置
```
src = src
```

- 排除不用编译源码的位置
```
exclude_dirs =  
```

## 控制变量
- 颜色显示
```
colors = True
```
- 是否显示详细信息
```
quiet = True
```
- 是否产生log文件
```
log = False
```
- 是否并行
```
mpi = True

```
- 并行编译
指定核数
```
jobs = 4

```
## 预处理
- 预定义
```
preproc = -DXXX

```

## 外部库
- 头文件所在位置
```
include =
```
- 外部库所在位置
```
libs =
```
- 外部库
```
ext_libs =
```
## 制作库文件
- 库类型
```
mklib=static/shared

```
- 指定目标
制作库的最顶层 fortran 代码 'xxx.f90'
```
target =
```
- 指定输出
库文件的名称‘xxx.a/xxx.so’, 该变量会根据target的名称自动命名，不用定义。
```
output =
```

# 简单模式
建立一个文件[simple.fobis](./simple.fobis)，在该文件中定义编译相关的基本变量，然后使用以下命令进行编译
使用
```
FoBiS.py build -f simple.fobis

```

# 多重模式
建立一个文件[multiple.fobis](./multiple.fobis)，在该文件中定义不同的编译模式，然后使用以下命令进行编译
使用
```
FoBiS.py build -f multiple.fobis -mode tests-gnu
```
其中 '-mode' 后的变量可以指定为 [multiple.fobis](./multiple.fobis)中定义的不同模式。
