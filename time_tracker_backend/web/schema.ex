defmodule TimeTrackerBackend.Schema do
  use Absinthe.Schema
  import_types TimeTrackerBackend.Schema.Types

  query do
    field :users, list_of(:user) do
      resolve &TimeTrackerBackend.UserReolver.all/2
    end
  end
end