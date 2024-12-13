#include <stdio.h>
#include <fcntl.h>
 
int main(int argc, char * argv[])
{
	int fd = open("/sys/class/leds/input4::capslock/brightness",O_RDWR);
	if(argv[1] != NULL)
		dprintf(fd, "%s\n", argv[1]);
	return 0;
}
