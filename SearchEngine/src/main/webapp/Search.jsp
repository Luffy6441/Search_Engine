<%@page import = "java.util.ArrayList"%>
<%@page import = "com.Accio.SearchResult"%>

<html>
<head>
<link rel = "Stylesheet" type = "text/css" href = "Styles.css">
</head>
<body>
    <h1> Doodle </h1>
    <form>
            <input type = "text" name = "keyword"> </input><br>
                <br> <button type = "submit" onclick = "form.action = 'Search';" > Search </button>
                <button type = "submit" onclick = "form.action = 'History';" > History </button>
    </form>
    <table border = 2 class = "resultTable">
        <tr>
        <th> Title </th>
        <th> Link </th>
        </tr>
        <%
            ArrayList <SearchResult> results = (ArrayList <SearchResult>)request.getAttribute("results");
            for(SearchResult result : results){
        %>
        <tr>
            <td> <%out.print(result.getTitle());%> </td>
            <td> <a href = "<%out.print(result.getLink());%>"> <%out.print(result.getLink());%> </a> </td>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>