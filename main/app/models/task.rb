# frozen_string_literal:true

require Rails.root.join('app/gen/api/todo/todo_pb')
require Rails.root.join('app/gen/api/todo/todo_services_pb')

class Task
  include ActiveModel::Model

  class << self
    def create_todo_task(title)
      req = Todo::CreateTaskRequest.new({
        title: title
      })

      puts '===========レスポンスを送った==============='
      res = stub.create_todo(req)
      puts '===========レスポンスが返ってきた==========='
      puts res.task_id
    end

    def config_dsn
      "127.0.0.1:50051"
    end

    def stub
      Todo::TodoService::Stub.new(config_dsn, :this_channel_is_insecure)
    end
  end
end