@extends('root.general')

@section('content') 
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->

        <!-- /.row -->
        <!-- Main row -->

        <div class="row">
                    <section class="col-lg-6 connectedSortable">
            <!-- Custom tabs (Charts with tabs)-->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="fas fa-chart-pie mr-1"></i>
                 Добавить
                </h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-primary btn-sm" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content p-0">
<div id="success_message"></div>


<form class="m-form m-form--fit m-form--label-align-right m-form--group-seperator-dashed" id="a_all" action="" method="post">
                <div class="m-portlet__body">   
                    <div class="form-group m-form__group row">

                        <label class="col-lg-2 col-form-label">Название:</label>
                        <div class="col-lg-4">
                            <input type="text"   value="" class="form-control m-input cl1" name="noj1" id="a1" placeholder="Название">
                            <span class="m-form__help"></span>
                        </div>
                                                    <label class="col-lg-2 col-form-label">Длительность:</label>
                        <div class="col-lg-4">
       <input type="text" class="form-control m-input cl1" name="noj2" id="a4" placeholder="Длительность">
                            <span class="m-form__help"></span>
                        </div>

                            
                 
                    </div>                  
                                            





    
                    </div>  

                <div class="m-portlet__foot m-portlet__no-border m-portlet__foot--fit">
                    <div class="m-form__actions m-form__actions--solid">
                        <div class="row">
                            <div class="col-lg-5"></div>
                            <div class="col-lg-7">
     
        <input type="button" id="btnk1" class="btn btn-brand btn-danger" value="Отправить">
                                </div>
                        </div>
                    </div>
                </div>
            </form>

                </div>
              </div>
            </div>

          </section>
                   <section class="col-lg-6 connectedSortable">
                                           <div class="card">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="fas fa-chart-pie mr-1"></i>
                  Список песен
                </h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-primary btn-sm" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content p-0">

<div class="card-toolbar">
<!--            <div class="dropdown dropdown-inline float-right mb-2 mr-2 show">
                        <button type="button" class="btn btn-light-primary font-weight-bolder dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        <span class="svg-icon svg-icon-md">
       
                          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                              <rect x="0" y="0" width="24" height="24"></rect>
                              <path d="M3,16 L5,16 C5.55228475,16 6,15.5522847 6,15 C6,14.4477153 5.55228475,14 5,14 L3,14 L3,12 L5,12 C5.55228475,12 6,11.5522847 6,11 C6,10.4477153 5.55228475,10 5,10 L3,10 L3,8 L5,8 C5.55228475,8 6,7.55228475 6,7 C6,6.44771525 5.55228475,6 5,6 L3,6 L3,4 C3,3.44771525 3.44771525,3 4,3 L10,3 C10.5522847,3 11,3.44771525 11,4 L11,19 C11,19.5522847 10.5522847,20 10,20 L4,20 C3.44771525,20 3,19.5522847 3,19 L3,16 Z" fill="#000000" opacity="0.3"></path>
                              <path d="M16,3 L19,3 C20.1045695,3 21,3.8954305 21,5 L21,15.2485298 C21,15.7329761 20.8241635,16.200956 20.5051534,16.565539 L17.8762883,19.5699562 C17.6944473,19.7777745 17.378566,19.7988332 17.1707477,19.6169922 C17.1540423,19.602375 17.1383289,19.5866616 17.1237117,19.5699562 L14.4948466,16.565539 C14.1758365,16.200956 14,15.7329761 14,15.2485298 L14,5 C14,3.8954305 14.8954305,3 16,3 Z" fill="#000000"></path>
                            </g>
                          </svg>
                       
                        </span>Export</button>
                     
                        <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right show" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(-62px, 39px, 0px);" x-placement="bottom-end">
                     
                          <ul class="navi flex-column navi-hover py-2">
                            <li class="navi-header font-weight-bolder text-uppercase font-size-sm text-primary pb-2">Choose an option:</li>
                            <li class="navi-item">
                              <a href="#" class="navi-link" onclick="$('#example').DataTable().buttons(0,4).trigger();">
                                <span class="navi-icon">
                                  <i class="la la-print"></i>
                                </span>
                                <span class="navi-text">Print</span>
                              </a>
                            </li>
                            <li class="navi-item">
                              <a href="#" class="navi-link" onclick="$('#example').DataTable().buttons(0,3).trigger();">
                                <span class="navi-icon">
                                  <i class="la la-copy"></i>
                                </span>
                                <span class="navi-text">Copy</span>
                              </a>
                            </li>
                            <li class="navi-item">
                              <a href="#" class="navi-link" onclick="$('#example').DataTable().buttons(0,2).trigger();">
                                <span class="navi-icon">
                                  <i class="la la-file-excel-o"></i>
                                </span>
                                <span class="navi-text">Excel</span>
                              </a>
                            </li>
                            <li class="navi-item">
                              <a href="#" class="navi-link" onclick="$('#example').DataTable().buttons(0,1).trigger();">
                                <span class="navi-icon">
                                  <i class="la la-file-text-o"></i>
                                </span>
                                <span class="navi-text">CSV</span>
                              </a>
                            </li>
                            <li class="navi-item">
                              <a href="#" class="navi-link" onclick="$('#example').DataTable().buttons(0,0).trigger();">
                                <span class="navi-icon">
                                  <i class="la la-file-pdf-o"></i>
                                </span>
                                <span class="navi-text">PDF</span>
                              </a>
                            </li>
                          </ul>
                        
                        </div>
                                            </div> -->
                      </div>
<!-- <a href="javascript:;" class="msgbox basic">Open</a> -->

<script>
   funcinit('listdata',["Название","Длительность","РEД."]);</script>

                </div>
              </div>
            </div> 
                   </section>
                               

 <section class="col-lg-6 connectedSortable"></section>      
 <section class="col-lg-6 connectedSortable"></section>
 <section class="col-lg-12 connectedSortable"></section>   
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>

    <!-- /.content -->
  <script>
   $(window).on('load', function() {
$(".msgbox.basic").msgbox({
content: '<form class="m-form m-form--fit m-form--label-align-right m-form--group-seperator-dashed" id="a_all" action="" method="post"> <div class="m-portlet__body"> <div class="form-group m-form__group row"> <label class="col-lg-2 col-form-label">Название:</label> <div class="col-lg-4"> <input type="text" oninput="valid(this,1)" value="" class="form-control m-input cl1" name="noj1" id="a1" placeholder="Название"> <span class="m-form__help"></span> </div><label class="col-lg-2 col-form-label">Длительность:</label> <div class="col-lg-4"> <input type="text" class="form-control m-input cl1" name="noj4" id="a4" placeholder="Длительность"> <span class="m-form__help"></span> </div></div></div><div class="m-portlet__foot m-portlet__no-border m-portlet__foot--fit"> <div class="m-form__actions m-form__actions--solid"> <div class="row"> <div class="col-lg-5"></div><div class="col-lg-7"> <input type="button" id="nbtnk22" class="btn btn-brand btn-danger" value="Отправить"> </div></div></div></div></form>'
});
   
  }); 


function valid(a,int) {

if(int==1){

   if(a.value.length<2){
$('#'+a.id).val(a.value.replace(/[^1-9]/g, '').replace(/(\..*)\./g, '$1'));

  } else{
  $('#'+a.id).val(a.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1'));
}}
else if(int==0){

      if(a.value.length<2){
$('#'+a.id).val(a.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1'));
  }
 else if(a.value.length>1){
  $('#'+a.id).val(a.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1'));
}
}
}



 function editer1(argument) {


$( ".msgbox.basic" ).click();
console.log(argument);

 }


$(document).on('click','#btnk1',function(e) {
      

    var data = $("#a_all").serialize();
    $.ajax({
         data: data,
         type: "post",
                headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
       },
         url: "/submitlist",
    success: function(data){
                   
         $('#example').DataTable().ajax.reload();  

console.log(data);   
         $('#success_message').fadeIn().html(data.message);
    },
    error: function (err) {
        if (err.status == 422) { // when status code is 422, it's a validation issue
            console.log(err.responseJSON);
            $('#success_message').fadeIn().html(err.responseJSON.message);
            $( ".m-form__help" ).remove();
            // you can loop through the errors object and show it to the user
            console.warn(err.responseJSON.errors);
            // display errors on each form field
            $.each(err.responseJSON.errors, function (i, error) {
                var el = $(document).find('[name="'+i+'"]');
                el.after($('<span class="m-form__help" style="color:red">'+error[0]+'</span>'));
            });
        }
    }
  });

  });


</script>

      @endsection


