<%@ Page Title="" Language="C#" MasterPageFile="~/Primary.Master" AutoEventWireup="true" CodeBehind="SubMasterForm1.aspx.cs" Inherits="WebApplication11.SubMasterForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src = "/Scripts/jquery-2.1.4.js" type = "text/javascript"> </script>


    <script type="text/javascript">
        $(document).ready(function () {
            //function abc()
            //{
            var id;
            id = '<%=ServerSideVariable %>';
            // "#label1" = id;
            //"#tb1" = id;
                        $("#container").html(id);
            //}
        })


            $(document).ready(function () {
                $("#Button1").click(function () {
                    $("#container2").load("/getemployeetable", function () {
                        $("#container2").css("font-family", "Arial");
                        $("#container2").css("font-size", "20px");
                        $("#container2 td").css("padding", "6px");
                        alert("Employee data loaded successfully!");
                    });
                });
            });

     $(document).ready(function () {
         $("#btnSetFont").click(function (evt) {
             var target = $("#txtTarget").val();
             var fontName = $("#txtFontName").val();
             var fontSize = $("#txtFontSize").val();
             $(target).css("font-family", fontName).css("font-size", fontSize);
             evt.preventDefault();
         });
     });


         function Check_Click(objRef)
         {
             //Get the Row based on checkbox
             var row = objRef.parentNode.parentNode;
             if(objRef.checked)
             {
                 //If checked change color to Aqua
                 row.style.backgroundColor = "aqua";
             }
             else
             {   
                 //If not checked change back to original color
                 if(row.rowIndex % 2 == 0)
                 {
                     //Alternating Row Color
                     row.style.backgroundColor = "#C2D69B";
                 }
                 else
                 {
                     row.style.backgroundColor = "white";
                 }
             }
   
             //Get the reference of GridView
             var GridView = row.parentNode;
   
             //Get all input elements in Gridview
             var inputList = GridView.getElementsByTagName("input");
   
             for (var i=0;i<inputList.length;i++)
             {
                 //The First element is the Header Checkbox
                 var headerCheckBox = inputList[0];
       
                 //Based on all or none checkboxes
                 //are checked check/uncheck Header Checkbox
                 var checked = true;
                 if(inputList[i].type == "checkbox" && inputList[i] != headerCheckBox)
                 {
                     if(!inputList[i].checked)
                     {
                         checked = false;
                         break;
                     }
                 }
             }
             headerCheckBox.checked = checked;
   
         }

</script>
    brier creek walmart phamacy



    <p class="lead">test testtt</p>
    <div class="container-fluid">
  <h1>Hello World!</h1>
  <p>Resize the browser window to see the effect.</p>
  <div class="row">
    <div class="col-sm-8" style="background-color:lavender;">.col-sm-8
      <div class="row">
        <div class="col-sm-6" style="background-color:lightcyan;">.col-sm-6</div>
        <div class="col-sm-6" style="background-color:lightgray;">.col-sm-6</div>
      </div>
    </div>
      <%--this next one is the entire block, --%>
    <div class="col-sm-4" style="background-color:lavenderblush;">.col-sm-4</div>
  </div>
</div>
    
   
        
    
    <body>
    <input type="button" id="Button1" value="Get Employee Data" />
    <br /><br />
    <div id="container2" name="container2">container 2 here!</div>
    

   
    <form runat="server">
        <%--this next line is to demonstate how to simplly use a simple serverside varible, 
            it came from c#--%>
        <div id="container" name="container">container here!'<%=ServerSideVariable %>'</div>

        <label id="label1">TEST</label> 
    
        <textbox id="tb1"></textbox>

        <%--this next section just has text boxes that the javascript reads in the user input
            The javascript then uses the user input to change text--%>
    <asp:Label ID="lblFontName" runat="server" Text="Font Name : "></asp:Label>
<asp:TextBox ID="txtFontName" runat="server" Columns="5"></asp:TextBox>
<asp:Label ID="lblFontSize" runat="server" Text="Font Size : "></asp:Label>
<asp:TextBox ID="txtFontSize" runat="server" Columns="5"></asp:TextBox>
<asp:Label ID="lblTarget" runat="server" Text="Apply Font to : "></asp:Label>
<asp:TextBox ID="txtTarget" runat="server" Columns="5"></asp:TextBox>
    <asp:Button ID="btnSetFont" runat="server" Text="Set Font" />

         <%--gridviewnow, --%>
<asp:GridView ID="GridView1" runat="server" SelectMethod="SelectEmployees" ItemType ="WebApplication11.Employee" OnRowDataBound="GridView1_RowDataBound">
<Columns>
<asp:TemplateField HeaderText="Employee Details">
<ItemTemplate>
    <asp:CheckBox ID="CB" runat="server" onclick ="Check_Click(this)" />
<%--thse 3 next lines are not really needed. They allow for the information to be stuffed into the first cell %>
<%--<div>#<%# Item.Employee_ID %></div>
<asp:Label ID="Label1" runat="server" Text="<%# Item.First_Name %>"></asp:Label>
<asp:Label ID="Label2" runat="server" Text="<%# Item.Last_Name %>"></asp:Label>
<p>
<%# Item.Notes %>
</p>--%>
</ItemTemplate>
</asp:TemplateField>
</Columns>
<RowStyle CssClass="Row" />
<AlternatingRowStyle CssClass="AlternateRow" />
</asp:GridView></form>
   </body>
</asp:Content>
