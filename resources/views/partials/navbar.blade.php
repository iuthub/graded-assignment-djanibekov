@if(!Auth::check())
		<div class="navitem">
			 @error('email')
	            <span class="invalid-feedback" role="alert">
	                <strong>{{ $message }}</strong>
	            </span>
	         @enderror
	    	 
	    	 <input id="email" form="loginForm" placeholder="Email" type="email" name="email" value="{{ old('email') }}" 
	    	 required autocomplete="email" autofocus>
	            
	    </div>	

	    <div class="navitem">
	    	@error('password')
	            <span class="invalid-feedback" role="alert">
	                <strong>{{ $message }}</strong>
	            </span>
	        @enderror
	    	
	    	<input id="password" type="password" name="password" form="loginForm" placeholder="Password" 
	    	required autocomplete="current-password">
	    </div>

		<div class="navitem">
			<form id="loginForm" method="POST" action="{{ route('login') }}">
				@csrf
				<input type="submit" value="Login"/>	
			</form>		
		</div>
		<div class="navitem">
			 <a href="{{ route('register') }}" class="btn">Register</a>
		</div>
@else
		<div id="user name" class="navitemin"
		style="color: black; font-size: 2em; text-align: center;"
		>
			Welcome {{Auth::user()->name}}!
		</div>

        <div class="navitem">
        	<form id="logoutForm" method="POST" action="{{ route('logout') }}">
				@csrf
				<input id="logoutSubmit" type="submit" value="Logout" 
				style= "display: block; width: 20em;  height: 2em; margin-left: 41.5%; background-color: #39ace7; color: white; padding-bottom: 2%; margin-top: 0.2%;"
				/>	
			</form>	
        </div>
        <br/>
@endif