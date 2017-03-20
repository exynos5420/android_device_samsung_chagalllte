/*
   Copyright (c) 2013, The Linux Foundation. All rights reserved.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>

#include "vendor_init.h"
#include "property_service.h"
#include "util.h"

#define DEVICE_NAME "chagall"

static void set_device(const char *radio,
		       const char *region,
		       const char *model)
{
	char device[16], name[16];

	sprintf(device, "%s%s", DEVICE_NAME, radio);
	sprintf(name, "%s%s", device, region);

	property_set("ro.product.name", name);
	property_set("ro.product.device", device);
	property_set("ro.product.model", model);
}

void vendor_load_properties()
{
	char bootloader[PROP_VALUE_MAX];

	property_get("ro.bootloader", bootloader);
	if (strstr(bootloader, "T805C")) {
		/* Open China */
		set_device("lte", "tdzc", "SM-T805C");
		property_set("ro.build.description", "chagallltetdzc-user 6.0.1 MMB29K T805CZCU1CQB3 release-keys");
		property_set("ro.build.fingerprint", "samsung/chagallltetdzc/chagalllte:6.0.1/MMB29K/T805CZCU1CQB3:user/release-keys");
	} else if (strstr(bootloader, "T805M")) {
		/* South Americas */
		set_device("lte", "ub", "SM-T805M");
		property_set("ro.build.description", "chagalllteub-user 6.0.1 MMB29K T805MUBU1CPI1 release-keys");
		property_set("ro.build.fingerprint", "samsung/chagalllteub/chagalllte:6.0.1/MMB29K/T805MUBU1CPI1:user/release-keys");
	} else if (strstr(bootloader, "T805W")) {
		/* Canada */
		set_device("lte", "can", "SM-T805W");
		property_set("ro.build.description", "chagallltevl-user 5.0.2 LRX22G T805WVLU1BOD7 release-keys");
		property_set("ro.build.fingerprint", "samsung/chagallltevl/chagallltecan:5.0.2/LRX22G/T805WVLU1BOD7:user/release-keys");
	} else if (strstr(bootloader, "T805Y")) {
		/* Oceanic */
		set_device("lte", "do", "SM-T805Y");
		property_set("ro.build.description", "chagallltedo-user 6.0.1 MMB29K T805YDOU1CPK1 release-keys");
		property_set("ro.build.fingerprint", "samsung/chagallltedo/chagalllte:6.0.1/MMB29K/T805YDOU1CPK1:user/release-keys");
	} else if (strstr(bootloader, "T807T")) {
		/* T-Mobile */
		set_device("lte", "tmo", "SM-T807T");
		property_set("ro.build.description", "chagallltetmo-user 5.0.2 LRX22G T807TUVS1BPL2 release-keys");
		property_set("ro.build.fingerprint", "samsung/chagallltetmo/chagallltetmo:5.0.2/LRX22G/T807TUVS1BPL2:user/release-keys");
	} else {
		/* all other variants become International LTE */
		set_device("lte", "xx", "SM-T805");
		property_set("ro.build.description", "chagallltexx-user 6.0.1 MMB29K T805XXU1CPH5 release-keys");
		property_set("ro.build.fingerprint", "samsung/chagallltexx/chagalllte:6.0.1/MMB29K/T805XXU1CPH5:user/release-keys");
	}
}