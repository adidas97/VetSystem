<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="VetSystem.Doctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            width: 772px;
        }
    </style>
</head>
<body>
    <a href="AddADoctor.aspx" >Add a new doctor</a>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridViewDoctors" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" />
                <asp:TemplateField HeaderText="Option">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButtonDelete" runat="server" OnClick="LinkButtonDelete_Click" OnClientClick="return confirm('Are you sure?')"
                            >Delete</asp:LinkButton>
                        <asp:LinkButton ID="LinkButtonEdit" runat="server" 
                            ><a href="EditADoctor.aspx?Name=<%# Eval("Name") %>">Edit</a></asp:LinkButton>
                        <a href="javascript:__doPostBack('ctl06$LinkButton1','')"></a><asp:HiddenField ID="HiddenField1" runat="server"
                            Value='<%# Eval("Name") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:LinkButton ID="LinkButtonSorting" runat="server" OnClick="LinkButtonSorting_Click">Sorting by Name [A-Z]</asp:LinkButton>
        <p>
            <asp:LinkButton ID="LinkButtonSortingDesc" runat="server" OnClick="LinkButtonSortingDesc_Click">Sorting by Name [Z-A]</asp:LinkButton>
        </p>
        <asp:Label ID="FilterByName" runat="server" Text="Filter by name:"></asp:Label>
        <asp:TextBox ID="FilteringByName" runat="server" OnTextChanged="FilteringByName_TextChanged"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="[Press a enter after typing]"></asp:Label>
    </form>
</body>
</html>
