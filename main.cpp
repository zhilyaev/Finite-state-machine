#include <iostream>;
#include <clocale>;
#include <cstring>;
using namespace std;
int dec(char a)
{
	return int(a)-48;
}
bool lex(char *str)
{
	int i,state=0;
	int table[7][2]={{1,2},{1,3},{4,2},{5,2},{1,6},{1,6},{5,2}};
	for (i=0; i<strlen(str); i++)
	{
		state=table[state][dec(str[i])];
		if (state<0)  break;
	}
	if (state>4) return true;
	else return false;
}
void main()
{

	char str[100];
	cout<<"Input: ";
	cin>>str;
	bool p=lex(str);
	if (p) cout<< "String is true"<<endl;
	else cout<< "String is false"<<endl;

	system("pause");
}
