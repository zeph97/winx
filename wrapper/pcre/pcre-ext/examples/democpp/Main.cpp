/* -------------------------------------------------------------------------
// Module: Main.cpp
// Creator: xushiwei
// Email: xushiweizh@gmail.com
// Date: 2009-7-2 23:41:58
// -----------------------------------------------------------------------*/

#include <wrapper/pcrecpp.h>
#include <wrapper/pcrecpp.cpp>

// =========================================================================

int main(int argc, const char* argv[])
{
	int i;
	string s;
	pcrecpp::RE re("(\\w+):(\\d+)");
	re.FullMatch("ruby:1234", &s, &i);
	std::cout << s << "\n" << i << "\n";
	return 0;
}

// =========================================================================
