<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="partial/header.jsp" />
<div class="container">
	<h2>JavaEE FAQs</h2>
	<div class="well">
		<form method="POST" action="${pageContext.request.contextPath}/Faqs">
			<div class="form-group">
				<label for="search">Search</label>
				<input type="number" name="search" id="search" />
				<input type="submit" value="Search" />
			</div>
		</form>
	</div>
	<table class="table-striped table-hover table-responsive">
		<thead>
			<tr>
				<td>Topic ID</td>
				<td>Question ID</td>
				<td>Question</td>
				<td>Answer</td>
			</tr>
		</thead>
		<c:forEach var="f" items="${faqs}">
			<tr>
				<td><p>${ f.getTopicId() }</p></td>
				<td><p>${ f.getQuestionId() }</p></td>
				<td><p>${ f.getQuestion() }</p></td>
				<td><p>${ f.getAnswer() }</p></td>
			</tr>
		</c:forEach>
	</table>

</div>

<jsp:include page="partial/footer.jsp" />