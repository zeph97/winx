/* -------------------------------------------------------------------------
// WINX: a C++ template GUI library - MOST SIMPLE BUT EFFECTIVE
// 
// This file is a part of the WINX Library.
// The use and distribution terms for this software are covered by the
// Common Public License 1.0 (http://opensource.org/licenses/cpl.php)
// which can be found in the file CPL.txt at this distribution. By using
// this software in any fashion, you are agreeing to be bound by the terms
// of this license. You must not remove this notice, or any other, from
// this software.
// 
// Module: wrapper/pcre.h
// Creator: xushiwei
// Email: xushiweizh@gmail.com
// Date: 2009-7-2 23:57:09
// 
// $Id: pcre.h,v 2009-7-2 23:57:09 xushiwei Exp $
// -----------------------------------------------------------------------*/
#ifndef WRAPPER_PCRE_H
#define WRAPPER_PCRE_H

#ifndef WRAPPER_PCREAPI_H
#include "pcreapi.h"
#endif

#ifndef STDEXT_TEXT_BASICSTRING_H
#include "../../../stdext/include/stdext/text/BasicString.h"
#endif

#ifndef PCRE_CALL
#define PCRE_CALL	winx_call
#endif

// -------------------------------------------------------------------------
// class PCRE

class PCRE
{
public:
	struct Error
	{
		const char* message;
		int offset;
	};

	typedef NS_STDEXT::String String;

private:
	pcre* m_re;
	Error m_error;

public:
	PCRE(const char* pattern, int options = 0) {
		m_re = pcre_compile(pattern, options, &m_error.message, &m_error.offset, NULL);
	}
	~PCRE()
	{
		if (m_re)
			pcre_free(m_re);
	}

	bool PCRE_CALL good() const {
		return m_re != NULL;
	}

	const Error& PCRE_CALL error() const {
		return m_error;
	}

	int PCRE_CALL match(
		const String& subject, String submatches[], int max_count, int options = 0) const
	{
		WINX_ASSERT(good());
		WINX_ASSERT(sizeof(String) >= sizeof(int)*2);

		int* offsets = (int*)(submatches + max_count) - (max_count << 1);
		const int n = pcre_exec(
			m_re, NULL, subject.data(), (int)subject.size(), 0,
			options, offsets, (max_count << 1));
		for (int i = 0; i < n; ++i)
		{
			submatches[i] = String(
				subject.begin() + offsets[(i << 1)],
				subject.begin() + offsets[(i << 1) + 1]);
		}
		return n;
	}
};

// -------------------------------------------------------------------------

#endif /* WRAPPER_PCRE_H */
