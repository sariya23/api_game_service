gen_game:
	mkdir -p gen/game && \
	protoc -I ./proto proto/game/game.proto \
		--go_out ./gen \
		--go_opt paths=source_relative \
		--go-grpc_out ./gen \
		--go-grpc_opt paths=source_relative \
		--grpc-gateway_out ./gen \
		--grpc-gateway_opt paths=source_relative \
		--openapiv2_out ./swagger

clean:
	rm -rf gen/*