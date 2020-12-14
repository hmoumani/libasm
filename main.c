#include <stdio.h>
#include <string.h>
#include <stdlib.h> 
#include <unistd.h>
// int ft_strlen(char *s);
// int ft_strcmp(char *s, char *s1);
ssize_t ft_read(int fildes, void *buf, size_t nbyte);
int main()
{   
    int fd = 2;
    int number = 20;
    char *s = malloc(sizeof(char) * 20);
    // int r = ft_read(fd, s, number);
    // printf("\n   *    ");
    // printf("%d **** ", r);
    int r1 = ft_read(fd, s, number);
    printf("%d", r1);
    s[r1] = 0;
    printf("%s", s);
    free(s);
}
