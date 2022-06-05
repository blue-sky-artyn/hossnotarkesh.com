<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test1.aspx.cs" Inherits="test1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
     window.onload=function()
     {
        document.getElementById("InserMore").attachEvent("onclick",InsertRow)
     }
     function InsertRow()
     {
        var varnames = document.getElementsByTagName("input")
        var LenItem = varnames.length+1
        var vtep = document.createElement("input")
        vtep.type="Text"
        vtep.id= "varBox"+LenItem
        
        document.body.appendChild(vtep);
     }
     function saveItems()
     {
        var lastitem="";
        var varnames = document.body.getElementsByTagName("input")
        for(var o=0;o<varnames.length;o++)
        {
            if(varnames[o].id.indexOf("varBox")>-1)
            {
               lastitem+=varnames[o].value+"|"
            }
        }
        if(lastitem.length>0)
        {
           lastitem=lastitem.substring(0,lastitem.length-1)
          document.getElementById("HiddenField1").value=lastitem
        }
        return true
     }
    </script>
</head>
<body>
    <form id="form1" runat="server">
       <div>
   <asp:HiddenField ID="HiddenField1" runat="server" /> 
    <a href="#" id="InserMore">Click for more</a>
     <asp:Button ID="Button1" runat="server" Text="Save" 
            OnClientClick="javascript:return saveItems()" onclick="Button1_Click"/>
    </div>
    </form>
</body>
</html>
