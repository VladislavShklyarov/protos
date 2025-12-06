PROTO_DIR=proto
GEN_DIR = gen

.PHONY: generate_proto tidy clean

generate_proto:
	buf generate

tidy:
	cd $(PROTO_DIR) && go mod tidy

clean:
	rm -rf $(GEN_DIR)
