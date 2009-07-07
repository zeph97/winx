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
// Module: wrapper/infozip.h
// Creator: xushiwei
// Email: xushiweizh@gmail.com
// Date: 2009-7-2 23:57:09
// 
// $Id: infozip.h,v 2009-7-2 23:57:09 xushiwei Exp $
// -----------------------------------------------------------------------*/
#ifndef WRAPPER_INFOZIP_H
#define WRAPPER_INFOZIP_H

// -------------------------------------------------------------------------

#ifndef __unzvers_h     /* don't include more than once */
#include "unzip/unzvers.h"
#endif

#ifndef __unzip_h
#include "unzip/unzip.h"
#endif

#ifndef __windll_h
#include "unzip/windll/windll.h"
#endif

// -------------------------------------------------------------------------
// Link unzip32.lib

#if !defined(Wrapper_Linked_unzip32)
#define Wrapper_Linked_unzip32
#pragma comment(lib, "unzip32")
#endif

// -------------------------------------------------------------------------

#endif /* WRAPPER_INFOZIP_H */
