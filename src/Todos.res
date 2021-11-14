type todo = {
    id: int,
    text: string,
}

type props = {
    todos: array<todo>,
}

let default = (props: props) => <ul> {
        props.todos
            -> Belt.Array.map(todo => <li>{todo.text -> React.string}</li>)
            -> React.array
    } </ul>

let getServerSideProps = _ctx => {
  Js.Promise.resolve({"props": {
      todos: [
          {
              id: 1,
              text: "first todo"
          },
          {
              id: 2,
              text: "second todo"
          },
          {
              id: 3,
              text: "third todo"
          },
      ]
  }})
}