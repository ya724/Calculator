#include<iostream>
using namespace std;
class Dog{
protected:
	int x;
public:
	Dog(int y) {
		x = y;
	}
	void Fa(Dog y) {
		int a;
		a=x + y.x;
		cout << a << endl;
	}
	
};
void main() {
	Dog aa(10);
	Dog aaa(20);
	 aa.Fa(aaa) ;
	 getchar();
}