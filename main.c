#include <stdio.h>

int ft_strlen(const char *s);

int main() {
    printf("length: %d ; expect 4\n", ft_strlen("test"));
    printf("length: %d ;  expect 0\n", ft_strlen(""));
    printf("length: %d ; expect 11\n", ft_strlen("hello world"));
    printf("length: %d ; expect 3\n", ft_strlen("bla"));
    //printf("length: %d ; expect 0\n", ft_strlen(NULL));

    return 0;
}