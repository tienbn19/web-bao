<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<title>Add Bao</title>
<link rel="stylesheet" href="css/add_bao_style.css">
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>update Bao</h2>
		</div>
	</div>

	<div id="container">

		<form action="BaoController" method="GET">
			<!-- request -->
			<input type="hidden" name="command" value="UPDATE" /> <input
				type="hidden" name="id" value="${id}" />
			<table>
				<tbody>

					<tr>
						<td><label>Tieu De:</label></td>
						<td><input type="text" name="tieuDe"
							required/ value="${Bao.tieuDe}"></td>
					</tr>

					<tr>
						<td><label>The Loai:</label></td>
						<td><input type="text" name="theLoai"
							required/ value="${Bao.theLoai}"></td>
					</tr>

					<tr>
						<td><label>Image:</label></td>
						<td><input type="file" name="image" id="file-upload" required
							value="${Bao.image}" /></td>
					</tr>

					<tr>
						<td><label>Noi Dung 1</label></td>
						<td><textarea name="noiDung1" rows="4" cols="50" required
								value="${Bao.noiDung1}"></textarea></td>
					</tr>

					<tr>
						<td><label>Noi Dung 2</label></td>
						<td><textarea name="noiDung2" rows="4" cols="50" required
								value="${Bao.noiDung2}"></textarea></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				</tbody>
			</table>
			<p style="color: red">${msg}</p>
		</form>

		<div style="clear: both;"></div>

		<p>
			<a href="BaoController">Back to List</a>
		</p>
	</div>

	<script type="text/javascript">
    const validImageTypes = ['image/gif', 'image/jpeg', 'image/png']
    
    const fileUpload = document.querySelector("#file-upload");
    fileUpload.addEventListener("change", (e) => {
    	const { files } = e.target;
    	console.log(files[0])
    	file = files[0]
    	console.log(file['type'])
    	const fileType = file['type']
    	
    	  if (!validImageTypes.includes(fileType)) {
    	   	alert('sai dinh dang !')
    	    return
    	  }
    	const fileReader = new FileReader()
    	  fileReader.readAsDataURL(file)
    	  
    	  fileReader.onload = function() {
    	    const url = fileReader.result
    	    // Something like: data:image/png;base64,iVBORw...Ym57Ad6m6uHj96js
    	    console.log(url)
    	    
    	  }
    })
    </script>
</body>

</html>