@if (Session::has('success'))
    <div class="alert">
        <strong>Success:</strong> {{ Session::get('success') }}
    </div>
@endif