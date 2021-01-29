<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User's Detail</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css">
</head>
<body>

	<table  id="datatable" class="table table-striped table-bordered" style="width:100%">
           
            <thead class="tabledata">
                  <tr>
                    <th>Id</th>
                    <th>FirstName</th>
                    <th>LastName</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Password</th>
                                        
                  </tr>
                  </thead>
            <tbody>
                  
                  <c:forEach var="data" items="${datalist}">
                <tr>
                    <td><c:out value="${data.id}" /></td>
                    <td><c:out value="${data.firstname}" /></td>
                    <td><c:out value="${data.lastname}" /></td>
                    <td><c:out value="${data.email}" /></td>
                    <td><c:out value="${data.phone}" /></td>
                    <td><c:out value="${data.password}" /></td>

                </tr>
            </c:forEach>
                  </tbody>
        </table>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>

<script>
  $(function () {
      $('#datatable').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>

</body>
</html>