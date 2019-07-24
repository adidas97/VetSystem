<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddADoctor.aspx.cs" Inherits="VetSystem.AddADoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        Name:<asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
        <br />
        <br />
        <p>
            Email:<asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Phone:<asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        Passwort:<asp:TextBox ID="TextBoxPasswort" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button" runat="server" OnClick="Button_Click" Text="Add" />
        <br />
    </form>
</body>
</html>
