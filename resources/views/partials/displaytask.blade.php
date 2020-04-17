@if (count($storedTasks) > 0)       
    <ul id="myUL">
        @foreach($storedTasks as $storedTask)
        @if(!Gate::denies('storedTask-checking', $storedTask))
        <li>
            <div class="task">
                {{$storedTask->name}}
            </div>
            <div class="action">
                <a href="{{route('task.edit', ['task'=>$storedTask->id])}}"><i class="fa fa-edit"></i></a>
            </div>
            <div class="action">
                <form action="{{ route('task.destroy', ['task'=>$storedTask->id]) }}" method='POST'>
                      {{ csrf_field() }}
                      <input type="hidden" name='_method' value='DELETE'>
                      <a onclick="this.parentNode.submit();"><i class="fa fa-trash-alt"></i></a>
                </form>
            </div>
          </li>
          @endif
        @endforeach
    </ul>
@endif