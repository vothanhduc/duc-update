@extends('admin.layout')
@section('admin_content')
<section id="main-content">
	<section class="wrapper">
		<div class="form-w3layouts">
            <!-- page start-->
            
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Chủ Đề
                            <span class="tools pull-right">
                                <a style="float:right; margin-top: 13px" href="{{Route('cd1')}}" class="btn btn-primary"> Quay lại</a>
                             </span>
                        </header>
                        <div class="panel-body">
                            <div class=" form">
                                <form class="cmxform form-horizontal "  method="POST"  action="{{Route('cd5',['id' => $chude->id])}}" enctype="multipart/form-data" novalidate="novalidate"> {{ csrf_field() }}

                                    

                                    

                                    <div class="form-group ">
                                        <label for="ccomment" class="control-label col-lg-3">Tên Chủ Đề</label>
                                        <div class="col-lg-6">
                                            <input type="text" name="ten"  value="{{$chude->ten_chu_de}}" class="form-control">
                                        </div>
                                    </div>



                                    

                                   


                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                            <button class="btn btn-primary" type="submit">Save</button>
                                            <button class="btn btn-default" type="button">Cancel</button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </section>
                </div>
            </div>

            
            <!-- page end-->
        </div>
</section>

@endsection