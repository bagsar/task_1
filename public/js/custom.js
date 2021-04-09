

function funcinit(source,head) {
     var table = [];
   

table.push('<table id="example"   style="width: 100%;"  class="table table-striped table-bordered"><thead><tr>');

  head.forEach(function(element) {  
    table.push('<th>'+element+'</th>');  
}); 
table.push('</tr></thead><tbody>');
// for (var i = 0; i <=10; i++) {
//   table.push('<tr>');  
//      head.forEach(function(element) {  
//     table.push('<td></td>');  
// }); 
//      table.push('</tr>');   
// }

table.push('</tbody><tfoot><tr>');
  head.forEach(function(element) {  
    table.push('<th style="width: 300px;">'+element+'</th>');  
}); 
table.push('</tr></tfoot></table>');

document.write(table.join(''));

 $.ajaxSetup({
headers: {
'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
}
});  

 var table = $('#example').DataTable({

ajax: {    
       url: source,
       type: "POST",
       headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
       }
       
},
columnDefs : [
   { targets : [2],
     render : function(data, type, row) {
        return '<span class="dropdown show"><a href="#" class="btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" style="width: 100% " data-toggle="dropdown" aria-expanded="true"><img src="images/editing.png" style="margin-top: 4px; " width="20px"></a><div class="dropdown-menu dropdown-menu-right show" x-placement="top-end"  style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(-1961px, -1310px, 0px);"><a class="dropdown-item" id="'+data+'"   onclick="editer1(this.id);" href="#open-modal"><i class="la la-edit"></i>Редактировать</a></div></span>'
     }     
   }
],  
 keys: true,
  stateSave: true,
        select: {
            style: 'single'
        },
          dom: 'Bfrtip',  buttons: [ {
                extend: 'pdf',
                orientation: 'landscape',
                pageSize: 'LEGAL', 
                className: "buttonsToHide"
            },


            'csv', 'excel','copy',{
                extend: 'print',
                orientation: 'landscape', 
                className: "buttonsToHide",
                pageSize: 'LEGAL'
            },  ],'order': [[ 0, 'desc' ]],
    });

    $('#example tbody').on( 'click', 'tr', function () {
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    } );
     $('#example tfoot th').each( function () { 
        var title = $(this).text();
        $(this).append( '<p><input class="serch"  type=\'text\'  /></p>' );
    } );



    // Apply the search<i class="fa fa-search" aria-hidden="true" ></i>
    table.columns().every( function () {
        var that = this;

        $( 'input', this.footer() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }

 window.localStorage.clear();

        } );
    } );
}





// ---------------------------------------------------------------------

