<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<link href="${root}/assets/global/plugins/bootstrap-summernote/summernote.css"
	rel="stylesheet">
<script src="${root}/assets/global/plugins/bootstrap-summernote/summernote.min.js"
	rel="stylesheet"></script>
<style>
.caption-subject {
	font-family: "Open Sans", sans-serif;
	font-weight: 300;
	font-size: 17px;
	color: floralwhite;
}

/*For  Upload Question and  Online MCA test*/
.box {
	margin: 0 0 20px 0;
	padding: 10px 30px 15px 15px;
}

.box.box-upload {
	background-color: #eef7ea;
	color: #3c763d, 80%;
	-moz-border-bottom-colors: none;
	-moz-border-left-colors: none;
	-moz-border-right-colors: none;
	-moz-border-top-colors: none;
	border-radius: 5px !important;
	border-color: #2c3e50;
	border-image: none;
	border-style: solid;
	border-width: 3px 3px 3px 3px;
}

.box-title {
	color: #fff;
	font-family: "Open Sans", sans-serif;
	font-weight: 300;
	text-shadow: none !important;
	display: inline;
	line-height: 1;
	text-align: center;
	vertical-align: middle;
	white-space: nowrap;
}

.box-title.box-title-sm {
	font-size: 12px;
	padding: 5px;
	float: left;
	margin-left: -13px;
	margin-top: -32px;
	z-index: 1000;
	border-radius: 5px !important;
	margin-top: -32px;
	z-index: 1000;
}

.box-stack {
	height: 2em;
	position: relative;
	vertical-align: middle;
	width: 2em;
	float: right;
	margin-right: -36px;
	margin-top: -8px;
	cursor: pointer;
}

.box-content {
	background-color: white;
	border: 0 none;
	box-shadow: none !important;
	border-radius: 5px !important;
	padding: 5px;
	min-height: 75px;
	margin: -8px -27px -12px -13px;
}

input.file {
	vertical-align: middle;
	font-family: Tahoma;
	font-size: 11px;
	font-weight: normal;
	color: #000000;
	width: 350px;
	text-align: left;
	border: 1px solid #cbcbcb;
	-moz-opacity: 0;
	filter: alpha(opacity :  0%);
	opacity: 0%;
	z-index: 2;
	text-align: left;
	border: 1px solid #cbcbcb;
	height: 50px;
}

.alert-info {
	background-color: #6db33f;
	border-color: #6db33f;
	color: white;
}

input.file {
	vertical-align: middle;
	font-family: Tahoma;
	font-size: 11px;
	font-weight: normal;
	color: #000000;
	width: 100%;
	text-align: left;
	border: 1px solid #dbdbdb;
	-moz-opacity: 0;
	filter: alpha(opacity : 0%);
	opacity: 0%;
	z-index: 2;
	text-align: left;
	height: 50px;
	border: 1px solid #dbdbdb;
	-moz-opacity: 0;
}

body {
  padding: 5px;
}
</style>

<c:set var="root" value="${pageContext.request.contextPath}" />
<div id="addAssessmentQuestionDivId"
	class="bootbox modal fade bootbox-alert in" tabindex="-1"
	role="addAssessmentQuestionDivId"
	style="display: none; padding-right: 16px;">

	<div class="modal-dialog" style="width: 1000px;">
		<div class="modal-content">
			<div class="modal-header bg-green">
				<button type="button" class="bootbox-close-button close"
					data-dismiss="modal" aria-hidden="true" style="margin-top: -10px;">Ã—</button>
				<div class="portlet-title">
					<div class="caption">
						<span class="caption-subject"><b>Create Question</b></span> <span
							style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							Assessment :- &nbsp;${assessment.name} : &nbsp;&nbsp;&nbsp;Course
							:- &nbsp;${assessment.course.courseName} &nbsp;/ &nbsp; Chapter
							:- &nbsp;&nbsp;${assessment.chapter.chapterName} </span>
					</div>

				</div>
			</div>
			<div class="modal-body">
				<form:form method="POST" modelAttribute="assessmentQuestionForm"
					commandName="assessmentQuestionForm" id="assessmentQuestionForm"
					name="assessmentQuestionForm"
					action="${root}/a878938a9edee32ea63b2c52be55f3f7">
					<div class="bootbox-body">
						<form:errors path="*" cssClass="errorblock" element="div" />
						<div class="form-body"
							style="height: 479px; overflow-x: hidden; overflow-y: auto;">
							<!-- Question Name and Explainations Start -->
							<div class="row">
								<div class="col-md-2">
									<div class="form-group">
										<form:input path="assessmentId" class="form-control"
											type="hidden" id="assessmentId" value="${assessment.assessmentId}" />
										<label class="control-label" id="fileSizeSpan">Question</label>
									</div>
								</div>
								<div class="col-md-8">
									<div class="form-group">
									
										<form:textarea path="textQuestion" id="textQuestionId"
											class="form-control"
											onkeyup="setReadOnlyImageField(this, '${questionId}Q');"
											onkeydown="setReadOnlyImageField(this, '${questionId}Q');"
											placeholder="Question"
											style="height: 50px; resize: none; overflow: auto;" />
									</div>
								</div>
								<div class="col-md-2">
								</div>
								<%-- <div class="col-md-6">
									<div class="form-group">
										<div class="box box-upload">
											<i class="fa fa-times-circle fa-lg"
												onclick="deleteAutoUploadImageInServer('${questionId}Q');"
												title="Remove Explanation" id="delImage${questionId}Q"
												style="color: red; font-size: 22px; float: right; margin-right: -20px; cursor: pointer;"></i>
											<div id="${questionId}Q" contenteditable="true"
												class="box-content"></div>

										</div>
									</div>
								</div> --%>
								</div>
								<div class="row">
								<div class="col-md-2">
									<div class="form-group">
										<label class="control-label" id="fileSizeSpan">Explanation</label>
									</div>
								</div>
								<div class="col-md-8">
									<div class="form-group">
										<form:textarea path="textExplanation"
											placeholder="Explanation" id="textExplanationId"
											onkeyup="setReadOnlyImageField(this, '${questionId}E');"
											onkeydown="setReadOnlyImageField(this, '${questionId}E');"
											class="form-control"
											style="height: 50px; resize: none; overflow: auto;" />
									</div>
								</div>
								<div class="col-md-2">
								</div>
								<%-- <div class="col-md-6">
									<div class="form-group">
										<div class="box box-upload">
											<i class="fa fa-times-circle fa-lg"
												onclick="deleteAutoUploadImageInServer('${questionId}E');"
												title="Remove Explanation" id="delImage${questionId}E"
												style="color: red; font-size: 22px; float: right; margin-right: -20px; cursor: pointer;"></i>
											<div id="${questionId}E" contenteditable="true"
												class="box-content"></div>
										</div>
									</div>
								</div> --%>


							</div>
							<!-- Question Name and Explainations End -->

							<!-- Answers add or Answer's images paste Start -->
							<table class="table" style="margin-bottom: 0px;"
								id="tblRequest${questionNo}">
								<thead>
									<tr>
										<td class="col-md-1" align="center"><label
											class="control-label" id="fileSizeSpan"><strong>Correct
													Answer</strong></label></td>
										<td class="col-md-10" align="center"><label
											class="control-label" id="fileSizeSpan"><strong>Answer
													</strong></label></td>

										<%-- <td class="col-md-5" align="center"><label
											class="control-label" id="fileSizeSpan"><strong>Answer
													Image</strong></label></td> --%>
										<td class="col-md-1" align="center" id="addFiles"><a
											href="javascript:void(0)" onclick="addUploadRow()"><i
												class="fa fa-plus-circle fa-lg"
												style="align: center; color: green; font-size: 22px;"
												title="Add files"></i></a></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="col-md-1" align="center"><input
											type="checkbox" path="correctAnswer1"
											id="checkBoxcorrectAns1" onclick="setCorrectAnswer($(this));" /></td>
										<td class="col-md-10" align="center"><form:textarea
												path="textAnswer1" id="textAnswer1ID"
												onkeyup="setReadOnlyImageField(this, '${questionId}A1');"
												onkeydown="setReadOnlyImageField(this, '${questionId}A1');"
												class="form-control" placeholder="Answer 1"
												style="height: 50px; resize: none; overflow: auto;" /></td>

										<%-- <td class="col-md-5" align="center">
											<div class="box box-upload">
												<i class="fa fa-times-circle fa-lg"
													onclick="deleteAutoUploadImageInServer('${questionId}A1');"
													title="Remove Explanation" id="delImage${questionId}A1"
													style="color: red; font-size: 22px; float: right; margin-right: -20px; cursor: pointer;"></i>

												<div id="${questionId}A1" contenteditable="true"
													class="box-content"></div>
											</div>
										</td> --%>
										<td class="col-md-1" align="center"><a
											onclick="deleteRequestUpload${questionNo}(this)"
											href="javascript:void(0)" id="btnDelImgUpload${questionNo}">
												<i class="fa fa-times-circle fa-lg" title="Remove file"
												style="color: red; font-size: 22px;"></i>
										</a></td>
									</tr>
								</tbody>
							</table>
							<!-- Answers add or Answer's images paste End -->
						</div>

					</div>
				</form:form>
				<div class="modal-footer">
					<button type="button" class="btn default" data-dismiss="modal"
						onclick="onCloseAndReload()">Close</button>
					<button type="button" class="btn blue"
						onclick="onsubmitCalled('true');">Save &amp; Continue</button>
					<button type="button" class="btn blue"
						onclick="onsubmitCalled('false');" name="createQuestionContinue">Save</button>
				</div>
			</div>

		</div>
	</div>
</div>





<script type="text/javascript">

//$(document).ready(function() {
	
	//	loadTinyMCE();

	//	$("#delImage" + quesId + "Q").hide();
	//	$("#delImage" + quesId + "E").hide();
	//	$("#delImage" + quesId + "A1").hide();

	//	$("#delImageQ").hide();
	//	$("#delImageE").hide();
	//	$("#delImageA1").hide();

	//	$("#addFiles").show();
	//	$("#btnDelImgUpload").show();

//	});

var reqCnt = 6;
	var fileCnt = 5;
	var ansCnt = 2;
	var quesId = "${assessmentQuestionId}";

    jQuery(document).ready(function() {
    	
    	$('#textQuestionId').summernote({
    		height :200,
    		resize:false
    	});
    	
    	$("#delImage" + quesId + "Q").hide();
    	$("#delImage" + quesId + "E").hide();
    	$("#delImage" + quesId + "A1").hide();

    	$("#delImageQ").hide();
    	$("#delImageE").hide();
    	$("#delImageA1").hide();

    	$("#addFiles").show();
    	$("#btnDelImgUpload").show();
    });


	function setCorrectAnswer(id) {
		if (id.is(':checked')) {
			alert("Well");
			return true;
		} else
			return false;

	}
	
	
	

	$("#assessmentForm").submit(function(e) {

		// for stopping the default action of element
		e.preventDefault();

		var data = {};

		data["assessmentName"] = $("#assessmentNameId").val();
		data["courseGroupId"] = $("#courseGroupId").val();
		data["courseId"] = $("#courseId").val();
		data["chapterId"] = $("#chapterId").val();

		var formData = new FormData();
		formData.append("assessmentForm", JSON.stringify(data));

		$.ajax({
			type : "POST",
			enctype : 'multipart/form-data',
			url : "${root}/cb0c3a5e0a43e8308a00a2f307df8683",
			processData : false, //prevent jQuery from automatically transforming the data into a query string
			contentType : false,
			cache : false,
			timeout : 600000,
			data : formData,
			success : function(data) {
				$("#addAssessmentDivId").modal('hide');
				assessmentQuestionTable.ajax.reload();
			}
		});
	});

	
	

	window.onload = function() {
		onLoadAll();
	};

	function onLoadAll() {
		document.getElementById(quesId + "Q").focus();
		document.getElementById(quesId + "Q").addEventListener("paste",
				handlePaste);
		document.getElementById(quesId + "E").addEventListener("paste",
				handlePaste);
		document.getElementById(quesId + "A1").addEventListener("paste",
				handlePaste);
	}

	function handlePaste(e) {
		$("#" + e.target.id + " div").html('');

		for (var i = 0; i < e.clipboardData.items.length; i++) {
			var item = e.clipboardData.items[i];
			console.log("Item: " + item.type);

			if (e.clipboardData.items[i].kind == "file"
					&& e.clipboardData.items[i].type == "image/png") {
				// get the blob
				var imageFile = e.clipboardData.items[i].getAsFile();

				// read the blob as a data URL
				var fileReader = new FileReader();
				fileReader.onloadend = function(e) {
					// create an image
					var image = document.createElement("IMG");
					image.src = this.result;

					// insert the image
					var range = window.getSelection().getRangeAt(0);
					range.insertNode(image);
					range.collapse(false);

					// set the selection to after the image
					var selection = window.getSelection();
					selection.removeAllRanges();
					selection.addRange(range);
				};
				fileReader.readAsDataURL(imageFile);

				uploadFile(imageFile, e.target);

				// prevent the default paste action
				e.preventDefault();

				// only paste 1 image at a time
				return true;
			}
		}
	}

	function uploadFile(file, elt) {
		var xhr = new XMLHttpRequest();
		xhr.upload.onprogress = function(e) {
			var percentComplete = (e.loaded / e.total) * 100;
			console.log("Uploaded percentComplete " + percentComplete + " %");
		};

		xhr.onload = function() {
			if (xhr.status == 200) {
				var count = $("#" + elt.id + " img").length;
				if (count > 0) {
					$("#" + elt.id + " img").attr("class", "img-responsive");
					$("#" + elt.id + " img").attr("style", "width:auto;");
				}
				$("#" + elt.id).attr("contentEditable", false);
				$("#delImage" + elt.id).show();

				var lastChar = elt.id.substr(elt.id.length - 1);
				if (lastChar == "Q") {
					$("#oeQuestion1").val("");
				} else if (lastChar == "E") {
					$("#oeExplanation").val("");
				} else {
					$("#textAnswer" + lastChar).val("");
				}
			} else {
				alert("Error! Upload failed");
			}
		};

		xhr.onerror = function() {
			alert("Error! Upload failed. Can not connect to server.");
		};

		xhr.open("POST", '/selfguru/createOnlineExamQuestionByAjax.do?id='
				+ elt.id, true);
		xhr.setRequestHeader("Content-Type", file.type);
		xhr.send(file);
	}

	function deleteAutoUploadImageInServer(id) {
		alert("deleteAutoUploadImageInServer " + id);

		$("#" + id).empty();
		$("#delImage" + id).hide();

	}

	function addUploadRow() {
		try {

			if (fileCnt == 0 || fileCnt < 8) {
				var tableObj = document
						.getElementById("tblRequest${questionNo}");

				var tablerows = tableObj.rows.length;

				var newRow = tableObj.insertRow(tablerows);

				oCell = newRow.insertCell(0);
				var ansImageId = quesId + "A" + ansCnt;

				var strHtml0 = "<input type=\'checkbox\' name=\'correctAnswer"
						+ ansCnt + "\' id=\'checkBoxcorrectAns" + ansCnt
						+ "\' onclick='\setCorrectAnswer($(this));'\ />";

				oCell.align = "center";
				oCell.innerHTML = strHtml0;

				oCell = newRow.insertCell(1);

				var strHtml1 = "<textarea name=\'textAnswer" + ansCnt
						+ "'id=\'textAnswer" + ansCnt + "ID\' ";

				strHtml1 += " onkeyup=\"setReadOnlyImageField(this, \'"
						+ ansImageId + "\');\"";
				strHtml1 += " onkeydown=\"setReadOnlyImageField(this, \'"
						+ ansImageId + "\');\"";
				strHtml1 += " class=\"form-control\" placeholder=\"Answer ${questionNo}"
						+ ansCnt + "\"";
				strHtml1 += " style=\"height: 50px;resize:none;\" /></textarea>";

				oCell.align = "center";
				oCell.innerHTML = strHtml1;

				var ansDelIconId = "delImage" + quesId + "A" + ansCnt;

				oCell = newRow.insertCell(2);
				var strHtml2 = "<div class=\'box box-upload\'> <i class=\'fa fa-times-circle fa-lg\' onclick=\"deleteAutoUploadImageInServer(\'"
						+ ansImageId + "\');\"";
				strHtml2 += " title=\'Remove Answer "
						+ ansCnt
						+ "\' id=\'"
						+ ansDelIconId
						+ "\' style=\'color: red; font-size: 22px; float: right; margin-right: -20px; cursor:pointer;\'></i>";
				strHtml2 += " <div id=\'"+ansImageId+"\' contenteditable=\'true\' class=\'box-content\'></div></div>";

				oCell.align = "center";
				oCell.innerHTML = strHtml2;

				oCell = newRow.insertCell(3);
				var strHtml3 = "<a onclick=\"deleteRequestUpload${questionNo}(this)\" href=\"javascript:void(0)\" id=\"btnDelImgUpload${questionNo}\"> ";
				strHtml3 += " <i class=\"fa fa-times-circle fa-lg\" title=\"Remove file\" style=\"color: red; font-size: 22px;\"></i> </a>"

				oCell.align = "center";
				oCell.valign = "middle";
				oCell.innerHTML = strHtml3;

				document.getElementById(quesId + "A" + ansCnt)
						.addEventListener("paste", handlePaste);

				$("#" + ansDelIconId).hide();

				fileCnt++;
				ansCnt++;
				reqCnt++;
			}
		} catch (e) {

		}
	}

	function checkDocumentType(str, count) {
		var ext = str.value.split('.').pop().toLowerCase();
		if ($.inArray(ext, [ 'jpg', 'jpeg', 'gif', 'tiff', 'png' ]) == -1) {
			u = document.getElementById('fileinputs${questionNo}' + count);
			u.innerHTML = "<input type=\'file\' name=\'uploadFiles\' id=\'"
					+ str.id
					+ "\' size='40' class='file' "
					+ "onkeypress='return false;' onkeydown='return false;' onchange='return checkDocumentType${questionNo}("
					+ str.id + "," + count + ");'/>";
			alert('Invalid File Format!\n\nPlease select valid file format( jpg /jpeg / gif / tiff / png ).');
			return false;
		}
		return true;
	}

	function deleteRequestUpload(src) {
		var tableObj = document.getElementById("tblRequest${questionNo}");
		var tablerows = tableObj.rows.length;

		var oRow = src.parentNode.parentNode;
		// once the row reference is obtained, delete it passing in its rowIndex

		if (oRow.rowIndex > 1) {
			document.getElementById("tblRequest${questionNo}").deleteRow(
					oRow.rowIndex);
			fileCnt--;
			reqCnt--;
			ansCnt--;
		}

	}

	function deleteAutoUploadImageInServer(id) {

		$("#" + id).empty();
		$("#delImage" + id).hide();

	}

	function setReadOnlyImageField(object, id) {
		if (allTrim(object.value) != '') {
			deleteAutoUploadImageInServer(id);
		}
	}

	function onsubmitCalled(isNext) {
		alert("well");
	//	var question=tinymce.get('textQuestionId').getContent();
		
	//	alert("Question "+question);
	//	alert("status " + isNext);
		var data = {};

		data["assessmentId"] = $("#assessmentId").val();
		data["textQuestion"] = $("#textQuestionId").val();
	//   data["textQuestion"] =tinymce.get('textQuestionId').getContent();
	//	data["textExplanation"] = tinymce.get('textExplanationId').getContent();
///		data["textAnswer1"] =  tinymce.get('textAnswer1ID').getContent();
		data["textAnswer2"] = $("#textAnswer2ID").val();
		data["textAnswer3"] = $("#textAnswer3ID").val();
		data["textAnswer4"] = $("#textAnswer4ID").val();
		data["correctAnswer1"] = $("#checkBoxcorrectAns1").val();
		data["correctAnswer2"] = $("#checkBoxcorrectAns2").val();
		data["correctAnswer3"] = $("#checkBoxcorrectAns3").val();
		data["correctAnswer4"] = $("#checkBoxcorrectAns4").val();

	alert($("#checkBoxcorrectAns4").val());	
		var formData = new FormData();
		formData.append("assessmentQuestionForm", JSON.stringify(data));

		$.ajax({
			type : "POST",
			enctype : 'multipart/form-data',
			url : "${root}/fb145feeb82b758b81870c5fd6db7f38",
			processData : false, //prevent jQuery from automatically transforming the data into a query string
			contentType : false,
			cache : false,
			timeout : 600000,
			data : formData,
			success : function(data) {

			}
		});

	}

	function oncheck(data) {
		alert(data);
	}
</script>

