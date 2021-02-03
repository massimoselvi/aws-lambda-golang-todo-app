package main

import (
	handlers "github.com/massimoselvi/aws-lambda-golang-todo-app/handlers"
)

func main() {
	lambda.Start(handlers.UpdateHandler)
}
