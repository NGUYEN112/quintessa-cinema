<div class="avatar-form">
    <img src="{{asset('/storage/' .auth()->user()->avatar)}}" class="img-fluid rounded-circle shadow" alt="" width="200" height="320">
    <div class="change-avatar">
        <form method="POST" class="change-avatar-form">
            @csrf
            <label for="avatar"><i class="fas fa-camera"></i></label>
            <input type="file" name="avatar" class="form-control-file" hidden id="avatar">
            <button class="btn btn-outline-primary" onclick="changeAvatar()">Thay đổi</button>
        </form>
    </div>
</div>