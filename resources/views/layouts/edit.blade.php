<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <script src="https://kit.fontawesome.com/8500f75e5b.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="{{ URL::to('css/styles.css')}}">
        
    </head>
    <body class="bodyEdit">
               <form action="{{route('task.update', [$taskToEdit->id])}}" method="post">
                  {{csrf_field()}}
                   <input type="hidden" name="_method" value="PUT">
                    <input type="text" name="updatedTask" value="{{$taskToEdit->name}}">
                    <button type="submit" value="Save" class="saveBtn">Save</button>
                    <a href="{{route('task.index')}}" class="button5">Back</a>
                </form>
                
                @include('infomessage.error')
                @include('infomessage.success')
        </form>
    
    </body>
</html>
