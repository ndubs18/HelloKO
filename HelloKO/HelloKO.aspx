<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HelloKO.aspx.cs" Inherits="HelloKO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My First Knockout Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Movies Releasing Today</h1>
        <div>
        <h4>Movie Title: <span data-bind="text: MovieTitle"></span></h4>
        </div>

        <hr> 

        <h3> Enter a movie to add it to the headline.</h3>
        
        <div>
            <p> Movie: <asp:TextBox ID="textMovie" runat="server" data-bind="value: MovieTitle" placeholder ="Enter a movie"></asp:TextBox> </p>
        </div>
    </form>


    <script src="Scripts/knockout-3.4.2.js"></script>
    <script type="text/javascript">
        
        var movies = {
            MovieTitle: ko.observable("")

        };
        

        ko.applyBindings(movies);


         
    </script>

</body>
</html>
