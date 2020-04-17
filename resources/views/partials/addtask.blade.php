<form action="{{ route('task.store')}}" method = "post">
           {{csrf_field()}}
    <div id="myDIV" class="header">
        <h2>My To Do List</h2>
            <input type="text" name="newTask" placeholder="Title...">
            <button type="submit" class="addBtn">Add</button>
               
            @include('infomessage.error')
            @include('infomessage.success')
                                
    </div>
</form>