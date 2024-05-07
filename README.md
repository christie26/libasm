# libasm 
*02/05/24 - ing*
## function I have to make 

- ft_strlen (man 3 strlen)
- ft_strcpy (man 3 strcpy)
- ft_strcmp (man 3 strcmp)
- ft_write (man 2 write)
- ft_read (man 2 read)
- ft_strdup (man 3 strdup, you can call to malloc)

## work process
1. write code in C to remember libft 
2. convert them to .s file with
```
gcc -s -C <filename.c>
```
```
gcc <filename.c> -s
```

in mac
```
gcc -S -o ft_strlen.s ft_strlen.c
```

## How to use gdb 
```
gdb <execute_filename>
disas <function_name>
```

## cheatsheet
https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf
https://cheatography.com/mika56/cheat-sheets/asm-8086/
