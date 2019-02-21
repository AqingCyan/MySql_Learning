## 登录与退出
- `mysql -h localhost -P 3306 -u root -p`：本机的root用户通过3306端口登录mysql。
- `exit`：用户退出mysql。
- `-u [username]`：后面需要跟随登录的用户名。
- `-h [host]`：登录的参数可以跟随主机地址，比如`localhost`。
- `-P [portnumber]`：登录命令的后面参数可以指定端口名，比如`3306`。
- `-p[password]`：跟随小p的后面可以输入密码（和密码之间不可以有空格），也可以直接回车，再输入密码。
- `mysql -u root -p`：如果默认是本机和3306端口，可以直接简写。

## 常见命令
> mysql的命令十分的语义化，可以很快上手，但是切记每个命令行后面加上分号。
- `show databases`：显示mysql中的所以数据库
- `use [database_name]`：使用（进入）某一数据库
- `show tables`：显示当前数据库中的所有表
- `show tables from [database_name]`：显示某一数据库中的所有表
- `select database()`：显示当前所在数据库
- `create table table_name(列名 列类型，列名 列类型)`：创建表
- `desc [tabel_name]`：查看表的列信息
- `select * from [table_name]`：查看表的数据
- `create database [database_name]`：创建一个新的数据库

## MySql的语法规范
- 不区分大小写，但是建议我们关键字大写，表名，列名小写。
- 每条命令用分号结尾。
- 每条命令根据需要，可以进行缩进或者换行。（例如创建表的时候）
- 注释，用于解释说明命令，单行注释用`#`开头或者`--[空格]`开头，多行注释`/*注释文字*/`

