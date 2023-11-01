#include "lists.h"

/**
 * check_cycle - check a singly-linked list contains a cycle
 * @list: A singly-linked list
 *
 * Return: 0, If there is no cycle and 1 if otherwise
 */
int check_cycle(listint_t *list)
{
	listint_t *slow = list;
	listint_t *fast = list;

	if (!list)
		return (0);

	while (slow && fast && fast->next)
	{
		slow = slow->next;
		fast = fast->next->next;
		if (slow == fast)
			return (1);
	}

	return (0);
}
