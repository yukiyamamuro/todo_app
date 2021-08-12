サーバーの起動
```
cd api
go run server/server.go
```


コード生成用プラグインを導入
```
go get -u github.com/golang/protobuf/protoc-gen-go
```

protoファイルの更新
```
cd //todo_appディレクトリへ移動
protoc -Iproto --go_out=plugins=grpc:api proto/todo.proto
```