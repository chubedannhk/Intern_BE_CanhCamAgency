<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CanhCam.Data.Index" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtContent" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtImages" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <telerik:RadGrid ID="RadGrid1" runat="server" AllowPaging="True" AllowSorting="true" AllowFilteringByColumn="true" OnNeedDataSource="RadGrid1_NeedDataSource">
            <MasterTableView AutoGenerateColumns="False" DataKeyNames="Id">
                <Columns>
                    <%--  Id--%>
                    <telerik:GridBoundColumn DataField="Id" HeaderText="Id" DataType="System.Int32" ReadOnly="True" UniqueName="Id"></telerik:GridBoundColumn>
                    <%--Title--%>
                    <telerik:GridBoundColumn DataField="Title" FilterControlAltText="Filter Name column" SortExpression="Title" HeaderText="Title Name">
                    </telerik:GridBoundColumn>
                    <%-- Category--%>
                    <telerik:GridBoundColumn DataField="Category" FilterControlAltText="Filter Category column" SortExpression="Category" HeaderText="Category Name">
                    </telerik:GridBoundColumn>
                    <%--Created--%>
                    <telerik:GridBoundColumn DataField="Created" FilterControlAltText="Filter Created column" SortExpression="Created" HeaderText="Created">
                    </telerik:GridBoundColumn>
                    <%--Content--%>
                    <telerik:GridBoundColumn DataField="Content" FilterControlAltText="Filter Content column" SortExpression="Content" HeaderText="Content">
                    </telerik:GridBoundColumn>
                    <%-- Images--%>
                    <telerik:GridBoundColumn DataField="Images" FilterControlAltText="Filter Images column" SortExpression="Images" HeaderText="Images">
                    </telerik:GridBoundColumn>

                </Columns>
            </MasterTableView>
        </telerik:RadGrid>
    </form>
</body>
</html>
