# Dart 编程语言

## 重要概念

- ### 与 javascript 相同或相似的

  - 任何保存在变量中的都是一个 对象 ， 并且所有的对象都是对应一个 类 的实例。 无论是数字，函数和 null 都是对象。所有对象继承自 Object 类。
  - 标识符 以字母或下划线（\_）开头，后跟任意字母和数字组合。
  - 类似地， Dart 支持顶级 变量 ， 同样变量绑定在类或对象上（静态变量和实例变量）。 实例变量有时称为字段或属性
  - Dart 语法中包含 表达式（ expressions ）（有运行时值）和 语句（ statements ）（没有运行时值）。 例如，条件表达式 condition ? expr1 : expr2 的值可能是 expr1 或 expr2 。 将其与 if-else 语句 相比较，if-else 语句没有值。 一条语句通常包含一个或多个表达式，相反表达式不能直接包含语句

- ### 与 javascript 不一致的
  - 尽管 Dart 是强类型的，但是 Dart 可以推断类型，所以类型注释是可选的。
  - Dart 支持泛型，如 List <int> （整数列表）或 List <dynamic> （任何类型的对象列表）。
  - Dart 支持顶级函数（例如 main（） ）， 同样函数绑定在类或对象上（分别是 静态函数 和 实例函数 ）。 以及支持函数内创建函数 （ 嵌套 或 局部函数 ） 。
  - Dart 没有关键字 “public” ， “protected” 和 “private” 。 如果标识符以下划线（\_）开头，则它相对于库是私有的。

## 变量

1. 未初始化的变量默认值是 null，不同于 js 的 undefined
2. map 就是 key value 的集合，写法类似 js 的 Object
3. Rune 用来表示字符串中的 UTF-32 编码字符

## 函数

1. 有闭包
2. 作用域类似
3. 没 return 默认 return null

## 运算符

表格按优先级排序，从上到下，从左到又，优先级递减。

| Description | Operator                        | Memo       |
| ----------- | ------------------------------- | ---------- |
| 一元后缀    | expr++ expr-- () [] . ?.        |            |
| 一元前缀    | -expr !expr ~expr ++expr --expr |            |
| 乘除        | \* / % ~/                       | ~/结果取整 |
| 加减        | + -                             |            |
| shift       | << >> >>>                       | 位运算符   |
| 按位与      | &                               |            |
| 按位异或    | ^                               |            |
| 按位或      | \|                              |            |
| 关系运算符  | >= > <= <                       |            |
| 类型判定符  | as is is!                       |            |
| equality    | == !=                           |            |
| 逻辑与      | &&                              |            |
| 逻辑或      | \|\|                            |            |
| if null     | ??                              | 条件表达式 |
| conditional | expr1 ? expr2 : expr3           |            |
| 级联运算符  | ..                              |            |
| assignment  | = \*= /= += -= &= ^= etc.       |            |

## 控制流程语句

#### assert

如果 assert 语句中的布尔条件为 false ， 那么正常的程序执行流程会被中断。

## 类

1. 常量构造函数
2. 获取对象的类型: `runtimeType`
3. 构造函数不被继承
4. 命名构造函数
5. 工厂构造函数：当执行构造函数并不总是创建这个类的一个新实例时，则使用 factory 关键字。工厂构造函数无法访问 this
6. Getter 和 Setter
7. 抽象类： `abstract`
8. \*隐式接口
9. 继承，用`super`引用父类
10. 重写类成员： `@override`
11. \*重写运算符？？？
12. 枚举类型： enum `enum Color { red, green, blue }`
13. \*为类添加功能： Mixin

## 范型

## 库和可见性

## 异步处理
