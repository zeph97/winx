/* -------------------------------------------------------------------------
// Module: Main.cpp
// Creator: xushiwei
// Email: xushiweizh@gmail.com
// Date: 2009-7-2 23:41:58
// -----------------------------------------------------------------------*/

#include <iostream>
#include <wrapper/pcre.h>
#include <wrapper/pcrecpp.h>
#include <wrapper/pcrecpp.cpp>

// =========================================================================

void test_pcrecpp()
{
	int i;
	string s;
	pcrecpp::RE re("(\\w+):(\\d+)");
	if (re.FullMatch("ruby:1234", &s, &i))
		std::cout << s << "\n" << i << "\n";
}

void test_pcre()
{
	PCRE::String s[5];
	const FastPCRE re("^(\\w+):(\\d+)$");
	const int n = re.match(NS_STDEXT::g_str("ruby:1234"), s, countof(s));
	std::cout << "n = " << n << "\n";
	for (int i = 0; i < n; ++i)
		std::cout << s[i] << "\n";
}

int main(int argc, const char* argv[])
{
	test_pcrecpp();
	test_pcre();
	return 0;
}

// =========================================================================
