#ifndef INIT_SEC_H
#define INIT_SEC_H

#include <string.h>

enum device_variant {
    VARIANT_N935F = 0,
    VARIANT_MAX
};

typedef struct {
    std::string model;
    std::string codename;
} variant;

static const variant international_models = {
    .model = "SM-N935F",
    .codename = "gracelte"
};

static const variant *all_variants[VARIANT_MAX] = {
    &international_models,
};

#endif // INIT_SEC_H
