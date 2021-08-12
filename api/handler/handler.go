package handler

import (
	"context"
	"fmt"

	"todo.proto/gen/api"
)
type TodoHnadler struct {}

func NewTodoHandler() *TodoHnadler {
	return &TodoHnadler{}
}

func (h *TodoHnadler) CreateTodo(
	ctx context.Context,
	req *api.CreateTaskRequest,
) (*api.CreateTaskResponse, error) {
	fmt.Println("====以下の内容を受け取りました。====")
	fmt.Println(string(req.Title))
  fmt.Println("===============================")

	return &api.CreateTaskResponse{
		TaskId: 1,
	}, nil
}