#include <stdio.h>
#include <string.h>

size_t  ft_strlen(const char *s);
char    *ft_strcpy(char *dst, const char *src);
int     ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);

void test_strlen(void)
{
    printf("length: %zu ; expect 4\n", ft_strlen("test"));
    printf("length: %zu ;  expect 0\n", ft_strlen(""));
    printf("length: %zu ; expect 11\n", ft_strlen("hello world"));
    printf("length: %zu ; expect 3\n", ft_strlen("bla"));
}

void test_strcpy(void)
{
    char buf1[10] = {'\0', '\0','\0','\0','\0','\0','\0','\0','\0'};
    char buf2[10] = {'\0', '\0','\0','\0','\0','\0','\0','\0','\0'};

    printf("test %s\n", ft_strcpy(buf1, "test\0"));
    printf("poulet %s\n", ft_strcpy(buf1, "poulet\0"));
    printf("brbrbrbr %s\n", ft_strcpy(buf1, "brbrbrbr\0"));
    printf("%s\n", ft_strcpy(buf1, "\0"));

    printf("test %s\n", strcpy(buf2, "test\0"));
    printf("poulet %s\n", strcpy(buf2, "poulet\0"));
    printf("brbrbrbr %s\n", strcpy(buf2, "brbrbrbr\0"));
    printf("%s\n", strcpy(buf2, "\0"));
}

void test_strcmp(void)
{
    printf("test abc/abb %d %d\n", ft_strcmp("abc", "abb"), 'c' - 'b');
    printf("test abc/abd %d %d\n", ft_strcmp("abc", "abd"), 'c' - 'd');
    printf("test cdb/adb %d %d\n", ft_strcmp("cdb", "adb"), 'c' - 'a');
    printf("test aaa/aaa %d %d\n", ft_strcmp("aaa", "aaa"), 0);
    printf("test aaa/aa %d %d\n", ft_strcmp("aaa", "aa"), 'a' - '\0');
    printf("test /abc %d %d\n", ft_strcmp("abc", ""), 'a' - '\0');
    printf("test a/z %d %d\n", ft_strcmp("z", "a"), 'z' - 'a');
}

void test_write(void)
{
    printf("%zu %zd\n", ft_strlen("test 1"), ft_write(1, "test_1", ft_strlen("test 1")));
}

int main(void)
{
    test_strlen();
    test_strcpy();
    test_strcmp();
    test_write();
    return 0;
}