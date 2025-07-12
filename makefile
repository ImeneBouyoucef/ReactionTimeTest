SRC = getTime
OUT = getTime

all:
	emcc $(SRC).c -o $(OUT).js \
		-s MODULARIZE=1 \
		-s EXPORT_NAME="createModule" \
		-s EXPORTED_FUNCTIONS="['_current_time_ms']" \
		-s EXPORTED_RUNTIME_METHODS="['cwrap']"

clean:
	rm -f $(OUT).js $(OUT).wasm