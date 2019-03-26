#include<iostream>
#include<string>
#define A 100
#define C(x,y) (x*y)
using namespace std;
class Dog1 {
private:
	int a, b,c;
	char m[20];
public:
	friend class Pig;
	Dog1();
	void Hao1();
	void Hao2();
};
Dog1::Dog1() {
	int a = 5;
	int b = 2;
	char m[20]= "nksnb";
}
void Dog1::Hao1() {
	c = a * b;
	cout << "  " << c << endl;
}
void Dog1::Hao2() {
	double d;
	d = c * A*3.14;
	cout << "  " << d << endl;
}
/*class Pig {
public:
	int x;
	float y;
	Dog1 *o;
	//o = &Dog1;
	Pig() {
		x = x;
		y = y;
	};
	void BBB() {
		x = o.Hao1() * 2;
		y = C(2.77, o.Hao2());
		cout << "x: " << x << "   " << "y: " << y << endl;
	}
};*/
void main() {
	Dog1 Q;
	//Pig P;
	Q.Hao1();
	Q.Hao2();
	//P.BBB();
	system("pause");
}
