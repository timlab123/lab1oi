#include <stdio.h>

int sum(int n) {
	int s = 0;
	for (int i = 1; i < n; i++){
		if (n % i == 0){
			s += i;
		}
	}
	return s;
}

int find(int n, int m) {
	if (n > m)
	return 0;
	if ((n % 2 == 0) && (sum(n) % 2 == 0)){
		printf("%d ",n);
	}
	find(n + 1, m);
}
int main(int n, int m) {
	printf("Введите начало цепочки N: ");
	if (scanf("%d",&n) != 1) {
		printf("Ошибка, N должно быть числом\n");
		return 1;
	}
	if (n <= 0) {
		printf("Ошибка, число N должно быть натуральным\n");
		return 1;
	}
	printf("Введите начало цепочки M: ");
	if (scanf("%d",&m) != 1) {
		printf("Ошибка, M должно быть числом\n");
		return 1;
	}
	if (m <= 0) {
		printf("Ошибка, число M должно быть натуральным\n");
		return 1;
	}

	printf("Подходящие числа: ");
	find(n, m);
	return 0;
}
