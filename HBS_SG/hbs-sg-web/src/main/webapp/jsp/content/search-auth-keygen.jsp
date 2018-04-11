<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<script src="${root}/common/js/encdec.js" type="text/javascript"></script>
<script>
${displayOrderList}
var data = {};
var authKeyTable;
$(document).ready(function()
{
    authKeyTable = $('#authKeyTableId').DataTable(
    {
        "lengthMenu": [
            [10, 25, 50, 100],
            [10, 25, 50, 100]
        ],
        "processing": true,
        "serverSide": true,
        "jQueryUI": true,
        "pagingType": "full_numbers",
        "order": [1, 'desc'],
        "language":
        {
            "search": "",
            "lengthMenu": "_MENU_",
            "emptyTable": "<center>No Authentication Key Available.</center>"
        },
        "ajax":
        {
            "url": "${searchAuthKeyGenUrl}",
            "type": "POST"
        },
        "responsive": {
            "details": {
                "type": 'column',
                "target": 'tr'
            }
        },
      	dom: "<'row'<'col-md-6 col-sm-6'l><'col-md-6 col-sm-6'f<'create'>>r><'table-scrollable't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
		   initComplete: function(){
		      $("div.create")
		         .html(getGenerateKeyHTML());           
		   }, 
        "columns": ${columnsList},
        "columnDefs": ${columnDefsList},
    });
    $('div.dataTables_filter input').addClass('form-control');
    $('div.dataTables_length select').addClass('form-control');
    $('.dataTables_filter input').attr('placeholder', 'Search');
});

function onSelectAllCheckBox()
{
    var isChecked = $("#serialKeyColumnHeadId").is(":checked");
    if (isChecked)
    {
        $.each($("input[name='serialKey']"), function()
        {
            $(this).attr('checked', true);
        });
    }
    else
    {
        $.each($("input[name='serialKey']"), function()
        {
            $(this).attr('checked', false);
        });
    }
}

function getQuestions()
{
	 var data = {};
	    data["consumerExamId"] = 'CSREXM0001';
	    data["noOfQuestions"] = '150';
	    var encodedParams = Base64.encode(JSON.stringify(data));
	    $.ajax(
	    {
	        type: "POST",
	        url: '${root}/aaed4dd8b31f1bf88f5227090f1edc95?searchCriteria=' + encodedParams + '&uid=' + Math.random(),
	        success: function(data)
	        {
	        	alert(data);
	        }
	    });
}

function searchAndPrintSerialKeys()
{
    var serialKeyArr = [];
    $.each($("input[name='serialKey']:checked"), function()
    {
        serialKeyArr.push($(this).val());
    });
    if (serialKeyArr != null & serialKeyArr.length > 0)
    {
        onGenerateSaveToPdf(serialKeyArr, "PDF");
    }
    else
    {
        alert("Please Select Any One Resume!", function() {});
    }
}

function onGenerateSaveToPdf(serialKey, action)
{
    var data = {};
    data["serialKey"] = serialKey;
    data["action"] = action;
    var encodedParams = Base64.encode(JSON.stringify(data));
    $.ajax(
    {
        type: "POST",
        url: '${root}/f956d0bc033f6369bf2e443b6d2d2c27?searchCriteria=' + encodedParams + '&uid=' + Math.random(),
        success: function(url)
        {
        	if(url != "")
           		window.open(url);
        	else
        		alert("Not able to generate PDF contact support team.");
        }
    });
}
function getGenerateKeyHTML()
{

var GenerateKey ="<button type=\'button\' class=\'btn green btn-outline pull-right\' data-placement=\'bottom\' rel=\'tooltip\' data-toggle=\'modal\' data-target=\'#addAuthKeyGenId\'>Generate Key<i class=\'fa fa-plus\'></i></button>";	
return GenerateKey;
}
</script>
<!-- BEGIN CONTENT -->
<div id="page-content-generate-key">
	<!-- BEGIN PAGE HEADER-->
	<div class="page-bar">
		<ul class="page-breadcrumb">
			<li><i class="fa fa-home"></i> <a href="#">Home</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">Generate-Key</a></li>
		</ul>
	</div>
	<div class="page-content-body">
	<div class="col-md-12">
					<div class="btn-group pull-right">
						<button class="btn green  btn-outline dropdown-toggle"
							data-toggle="dropdown" aria-expanded="false">
							 <i class="fa fa-wrench" aria-hidden="true"></i>
						</button>
						<ul class="dropdown-menu pull-right">
							<li><a href="javascript:;"> <i class="fa fa-print"></i>
									Print
							</a></li>
							<li><a href="javascript:;"> <i class="fa fa-file-pdf-o"></i>
									Save as PDF
							</a></li>
							<li><a href="javascript:;"> <i
									class="fa fa-file-excel-o"></i> Export to Excel
							</a></li>
						</ul>
					</div>
				</div>
		
		<div id="authKeyTableId_wrapper" class="dataTables_wrapper no-footer">
			<div class="table-scrollable">
				<table
					class="table table-striped table-bordered table-hover table-checkable order-column dataTable no-footer"
					id="authKeyTableId" role="grid"
					aria-describedby="authKeyTableId_info">
				</table>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>
<!-- START AUTH KEY GENERATE -->
<!-- ----------------------------------------------------------- -->
<jsp:include page="add-auth-keygen.jsp" flush="true" />
<!-- ----------------------------------------------------------- -->
<!-- END AUTH KEY GENERATE -->