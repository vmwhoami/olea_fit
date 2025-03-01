import { defineStore } from 'pinia'

export const useTodoListStore = defineStore('todoList', {
  // state
  // getters
  // action

  state: () => ({
    todoList: [],
    id: 0
  }),

  actions: {
    addTodo(item) {
      this.todoList.push({ item: item, id: this.id++, completed: false })
    },

    delete(todoItemId) {
        this.todoList = this.todoList.filter((oject)=>{
            return oject.id !== todoItemId.id
        })
    }
  }
})
