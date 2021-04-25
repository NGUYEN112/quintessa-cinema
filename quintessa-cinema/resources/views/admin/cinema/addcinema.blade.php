<form method="POST" class="form-horizontal" action="">
	@csrf
	<div class="form-group row">
		<label class="col-md-3 form-control-label">Tên rạp</label>
		<div class="col-md-9">
			<input id="inputHorizontalSuccess" name="cinema_name" type="text" placeholder="Tiêu đề" class="form-control form-control-success">
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-3 form-control-label">Thông tin rạp</label>
		<div class="col-md-9">
			<textarea class="form-control " name="infomation" rows="5" id="ttrap"></textarea>
		</div>
	</div>
	<div class="form-group row">
		<div class="col-md-9 m-auto">
			<!-- <input type="submit" value="ADD" class="btn btn-primary"> -->
		</div>
	</div>
</form>