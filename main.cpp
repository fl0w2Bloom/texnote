#include <iostream>
#include <Windows.h>
#include <string>
using namespace std;

int main(int argc, char** argv)
{
    system("chcp 65001 >nul");
    cout <<R"--(直接输入c可清除其他,会保留pdf文件)--"<< endl;
    string filename ;
    cin >>filename;
    if (filename=="c") {
         system("latexmk -pdfxe -quiet -c "s.c_str());
         exit(1);
    }
    filename = "note"s + ".tex"s;
    string order = "latexmk -pdfxe -quiet "s + filename;
    system(order.c_str());
    system("clear");
    return 0;
}
