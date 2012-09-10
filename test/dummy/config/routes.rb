Dummy::Application.routes.draw do
  draw :external
  draw :external, namespace: false
end