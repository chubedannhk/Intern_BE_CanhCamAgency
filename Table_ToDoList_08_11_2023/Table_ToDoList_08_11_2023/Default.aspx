<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Table_ToDoList_08_11_2023._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">DATA TABLE</h1>
        </section>

        <div class="row">
            <section class="col-md-12" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Table - ToDoList</h2>

                <asp:Table ID="idTableTDL" runat="server" BorderStyle="Solid" Width="100%" class="table table-bordered">
                    <asp:TableHeaderRow BackColor="Blue">
                        <asp:TableHeaderCell>Id</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Title</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Created</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Category</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Content</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Image</asp:TableHeaderCell>
                    </asp:TableHeaderRow>

                    <asp:TableRow>
                       
                        <asp:TableCell>1</asp:TableCell>
                        <asp:TableCell>Title 1</asp:TableCell>
                        <asp:TableCell>08/11/2023</asp:TableCell>
                        <asp:TableCell>category 1</asp:TableCell>
                        <asp:TableCell>content 1</asp:TableCell>
                        <asp:TableCell>no_img.png</asp:TableCell>
                    </asp:TableRow>

                </asp:Table>


            </section>


        </div>
    </main>

</asp:Content>
