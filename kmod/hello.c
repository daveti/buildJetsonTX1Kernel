/*
 * hello.c
 * Dec 30, 2018
 * root@davejingtian.org
 * http://davejingtian.org
 */
#include <linux/module.h>
#include <linux/kernel.h>


static int __init hello_init(void)
{
	pr_info("into %s\n", __func__);
	return 0;
}
static void __exit hello_exit(void)
{
	pr_info("exit hello module\n");
}

module_init(hello_init);
module_exit(hello_exit);

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("hello module");
MODULE_AUTHOR("daveti");
