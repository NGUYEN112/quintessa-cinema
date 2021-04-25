@extends('layouts.admin-layout')

@section('admin-content')
<div class="page-holder w-100 d-flex flex-wrap">
	<div class="container-fluid px-xl-5">
		<section class="py-5">
			<div class="row">
				<div class="col-lg-12 mb-4">
					<div class="card">
						<div class="card-header">
							<h6 class="text-uppercase mb-0">Quản Lý Rạp</h6>
							<a onclick="openAddForm()" title="Thêm mới" style="position: absolute;right: 35px;top: 22px;"><i class="fas fa-plus-square text-success" style="font-size: 24px"></i></a>
						</div>
						<div class="card-body">                           
							<table class="table table-hover card-text">
								<thead>
									<tr>
										<th>No.</th>
										<th>Tên rạp</th>
										{{-- <th>Thông tin</th> --}}
										<th>Chức năng</th>
									</tr>
								</thead>
								<tbody>
									@foreach ($cinemas as $key => $cinema)                     		
									<tr>
										<td>{{$key+1}}</td>
										<td>{{$cinema->cinema_name}}</td>
										{{-- <td>{{$cinema->infomation}}</td> --}}
										<td><a href=""><button style="background-color: #ffffff00;border: none" title="Sửa"><i class="fas fa-edit text-success"></i></button></a><br>
											<form action="{{route('admin.deletecinema' ,$cinema->id)}}" method="get" onsubmit="return confirm('Chắc chắn muốn xóa ?')">
												@csrf
												<button type="submit" style="background-color: #ffffff00;border: none" title="Xóa"><i class="fas fa-trash-alt text-danger"></i></button>
											</form></td>
										</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<footer class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 text-center text-md-left text-primary">
						<p class="mb-2 mb-md-0">QUINTESSA Cinema &copy; 2021</p>
					</div>
					<!-- <div class="col-md-6 text-center text-md-right text-gray-400">
						<p class="mb-0">Design by <a href="https://bootstrapious.com/admin-templates" class="external text-gray-400">Bootstrapious</a></p>
						Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)
					</div> -->
				</div>
			</div>
		</footer>
	</div>

	<!-- Model form -->
	<div class="modal fade" id="add-cinema-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
			<center>
				<h5 class="modal-title" id="exampleModalLabel">Thêm lịch chiếu</h5>
				</center>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body-add">
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="submitAddForm()">Thêm mới </button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
			</div>
		</div>
	</div>
</div>

	<script>
		function openAddForm() {
		$("#add-cinema-modal").modal();

		$.ajax({
			url: `{{route('admin.addcinema.page')}}`,
			success: function(xml) {
					$('.modal-body-add').html(xml);

				// Display Modal
				$('#add-cinema-modal').modal('show');
			}
		})
	}

	function submitAddForm() {
        const data = {
            _token: document.querySelector(`.form-horizontal [name="_token"]`).value,
            cinema_name: document.querySelector(`.form-horizontal [name="cinema_name"]`).value,
            infomation: document.querySelector(`.form-horizontal [name="infomation"]`).value,
        }

        $.ajax({
            url: `{{route('admin.addcinema')}}`,
            type: 'POST',
            data: data,
            success: function() {
                $("#add-cinema-modal").modal("hide");
            },
            error: function() {
                alert("Edit Failed")
            }
        })
    }
	</script>
@endsection