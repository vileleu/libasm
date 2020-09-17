nasm -f macho64 ft_strlen.s
nasm -f macho64 ft_strcpy.s
nasm -f macho64 ft_strcmp.s
nasm -f macho64 ft_write.s
nasm -f macho64 ft_read.s
gcc ft_strlen.o ft_strcpy.o ft_strcmp.o ft_write.o ft_read.o main.c
rm *.o