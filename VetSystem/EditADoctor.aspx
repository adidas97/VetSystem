<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditADoctor.aspx.cs" Inherits="VetSystem.EditADoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Name:<asp:Label ID="LabelName" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
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
        
        <br />
        <asp:Button ID="ButtonEdit" runat="server" OnClick="ButtonEdit_Click" Text="Edit" />
    </form>
</body>
</html>
