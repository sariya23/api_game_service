gen_game:
	mkdir -p gen/game && \
	protoc -I ./proto proto/game/game.proto \
		--go_out ./gen \
		--go_opt paths=source_relative \
		--go-grpc_out ./gen \
		--go-grpc_opt paths=source_relative \
		--grpc-gateway_out ./gen \
		--grpc-gateway_opt paths=source_relative \
		--openapiv2_out ./swagger \
		--validate_out="lang=go,paths=source_relative:./gen"

gen_admin:
	mkdir -p gen/admin && \
	protoc -I ./proto proto/admin/admin.proto \
		--go_out ./gen \
		--go_opt paths=source_relative \
		--go-grpc_out ./gen \
		--go-grpc_opt paths=source_relative \
		--grpc-gateway_out ./gen \
		--grpc-gateway_opt paths=source_relative \
		--openapiv2_out ./swagger


gen_common:
	mkdir -p gen/admin && \
	protoc -I ./proto proto/common/enums.proto \
		--go_out ./gen \
		--go_opt paths=source_relative \
		--go-grpc_out ./gen \
		--go-grpc_opt paths=source_relative \
		--grpc-gateway_out ./gen \
		--grpc-gateway_opt paths=source_relative \
		--openapiv2_out ./swagger

clean:
	rm -rf gen/*