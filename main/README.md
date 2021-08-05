# README
Todoアプリのメインサーバー

## 運用
protoで実装したメソッドの反映
```
bundle exec grpc_tools_ruby_protoc -I ../proto --ruby_out=app/gen/api/todo --grpc_out=app/gen/api/todo ../proto/todo.proto
```