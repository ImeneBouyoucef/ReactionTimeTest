#include <emscripten/emscripten.h>

double EMSCRIPTEN_KEEPALIVE current_time_ms() {
    return emscripten_get_now(); // returns time in milliseconds (double)
}
