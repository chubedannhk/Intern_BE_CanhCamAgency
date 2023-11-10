<%@ Page Title="Edit" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Table_ToDoList_08_11_2023.Edit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <div class="container">


            <asp:HiddenField ID="idHidden" runat="server" />
            <div class="form-group">
                <asp:Label ID="lblTitle" runat="server" Text="Label">Title</asp:Label>

                <asp:TextBox ID="txtTitle" runat="server" class="form-control" ValidationGroup="MovieInfo"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ControlToValidate="txtTitle" ValidationGroup="MovieInfo" InitialValue="" ErrorMessage="The Title field is required." ForeColor="Red" Display="Dynamic" />

            </div>
            <div class="form-group">
                <asp:Label ID="lblDate" runat="server" Text="Label">Release Date</asp:Label>
                <asp:TextBox ID="txtDate" runat="server" class="form-control" TextMode="Date" ValidationGroup="MovieInfo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtDate" ValidationGroup="MovieInfo" InitialValue="" ErrorMessage="The Release Date is required." ForeColor="Red" Display="Dynamic" />

            </div>
            <div class="form-group">
                <asp:Label ID="lblGenre" runat="server" Text="Label">Genre</asp:Label>
                <asp:DropDownList ID="sltGenre" runat="server" class="form-control">
                    <asp:ListItem Text="Option 1" Value="1" />
                    <asp:ListItem Text="Option 2" Value="2" />
                    <asp:ListItem Text="Option 3" Value="3" />
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPrice" runat="server" Text="Label">Price</asp:Label>
                <asp:TextBox ID="txtPrice" runat="server" class="form-control" TextMode="Number" ValidationGroup="MovieInfo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPrice" runat="server" ControlToValidate="txtPrice" ValidationGroup="MovieInfo" InitialValue="" ErrorMessage="The Price field is required" ForeColor="Red" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revPrice" runat="server" ControlToValidate="txtPrice" ValidationGroup="MovieInfo"
                    ErrorMessage="Price must be a non-negative number." ForeColor="Red" Display="Dynamic"
                    ValidationExpression="^\d+(\.\d{1,2})?$" />
            </div>
            <div class="form-group">
                <asp:FileUpload ID="upfileImg" runat="server" class="btn btn-primary" />
            </div>
            <asp:Button ID="btnEdit" runat="server" Text="Save" class="btn btn-primary" ValidationGroup="MovieInfo" OnClick="btnEdit_Click" />

        </div>
    </main>
</asp:Content>
