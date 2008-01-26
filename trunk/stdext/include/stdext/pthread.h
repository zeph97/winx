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
// Module: stdext/pthread.h
// Creator: xushiwei
// Email: xushiweizh@gmail.com
// Date: 2003-10-5 13:20:48
// 
// $Id: $
// -----------------------------------------------------------------------*/
#ifndef __STDEXT_PTHREAD_H__
#define __STDEXT_PTHREAD_H__

// -------------------------------------------------------------------------
// pthread.h

#if defined(_WIN32)
	#if !defined( PTHREAD_H )
	#include "../../../pthreads-w32/include/pthread.h"
	#endif
#else
	#ifndef _PTHREAD_H
	#include <pthread.h>
	#endif
#endif

// -------------------------------------------------------------------------
// $Log: $

#endif /* __STDEXT_PTHREAD_H__ */
