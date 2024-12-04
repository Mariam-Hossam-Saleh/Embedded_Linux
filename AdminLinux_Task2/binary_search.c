#include <stdio.h>
int binary_search(int *arr , int arr_length, int search_element)
{
	int index = -1 ,end = arr_length - 1, start = 0, mid ;
	while( end > start )
	{
		mid = (start + end)/2;
		if(arr[mid] == search_element)
		{
			index = mid;
			break;
		}
		else if(arr[mid] > search_element)
		{
			end = mid - 1 ;
		}
		else
		{
			start = mid + 1 ;
		}
	}
	return index;
}

int main(void)
{
	int arr[10] = {1,2,3,4,5,6,7,8,9,10};
	int index = binary_search( arr, 10, 11);
	if( index == -1 )
		printf("your element is not found!\n");
	else
        	printf("your search element is found at index : %d\n",index);
	return 0 ;
}
