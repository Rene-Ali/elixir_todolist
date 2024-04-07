defmodule Todos do
  # todo - complete later
  def create_todos do
    # old code - not so nice
    # number_of_tasks = IO.gets("Enter the number of todos you want to add: ")
    # {number_of_tasks, _q} = Integer.parse(number_of_tasks)
    # number_of_tasks
    # cool code - pipe operator
    # The pipe operator |> passes the result of an expression as
    # the first parameter of another expression.
    {number_of_tasks, _} =
      IO.gets("Enter the number of todos you want to add: ") |> Integer.parse()

      for _ <- 1..number_of_tasks do
        task = IO.gets("Enter Task: ")
        String.trim(task)
      end
  end

  def temp_todos do
    ["eat apple", "read book", "elixir series", "exercise"]
  end

  def contains?(tasks, task) do
    Enum.member?(tasks, task)
  end

  def keyword_search(tasks, word) do
    for task <- tasks, String.contains?(task, word) do
      task
    end
  end

  def random_task(tasks) do
    Enum.take_random(tasks, 2)

  end
end
