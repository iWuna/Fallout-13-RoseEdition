//#define LOWMEMORYMODE //uncomment this to load centcom and runtime station and thats it.

#include "map_files\generic\CentCom.dmm"
#define FORCE_MAP "_maps/oregon.json"

#ifndef LOWMEMORYMODE
	#ifdef ALL_MAPS
		#include "map_files\Oregon\oregon_wasteland-redux.dmm"

		#ifdef TRAVISBUILDING
			#include "templates.dm"
		#endif
	#endif
#endif
