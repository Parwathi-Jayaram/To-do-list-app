class ToDo{
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
   required this.id,
    required this.todoText,
    this.isDone=false,
});

  static List<ToDo> todoList(){
    return [
      ToDo(id: '01', todoText: 'Gym Session', isDone:true),
      ToDo(id: '02', todoText: 'Assignments', isDone:true),
      ToDo(id: '03', todoText: 'Study Session', ),
      ToDo(id: '04', todoText: 'Lab Manual', isDone:true),
      ToDo(id: '05', todoText: 'Leet Code', ),
      ToDo(id: '06', todoText: 'Grocery Shopping',),
      ToDo(id: '07', todoText: 'Checking Mails', isDone:true),
    ];
  }
}