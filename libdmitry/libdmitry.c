#define LOG_TAG "libdmitry"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <pthread.h>

#include <utils/Log.h>

#include <hardware/power.h>
#include <hardware/hardware.h>

// Android N exports
void _ZNK7android13SensorManager13getSensorListEPPKPKNS_6SensorE();

long (*SSL_CTX_ctrl)(void *ctx, int cmd, long larg, void *parg);

void _ZNK7android13SensorManager13getSensorListEPPKPKNS_6SensorE() {}