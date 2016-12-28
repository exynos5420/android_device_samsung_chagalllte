#define LOG_TAG "libshim"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <pthread.h>

#include <utils/Log.h>

#include <hardware/power.h>
#include <hardware/hardware.h>

// Android N exports
// android::SensorManager::getSensorList(android::Sensor const* const**) const
extern "C" void _ZNK7android13SensorManager13getSensorListEPPKPKNS_6SensorE();
extern "C" void _ZNK7android13SensorManager13getSensorListEPPKPKNS_6SensorE(){}