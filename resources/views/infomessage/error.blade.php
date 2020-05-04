@if (count($errors) > 0)
    <div class="alert">
        <ul>
          @foreach($errors->all() as $error)
            <strong>Error:</strong>{{ $error }}
          @endforeach
        </ul>
    </div>
@endif