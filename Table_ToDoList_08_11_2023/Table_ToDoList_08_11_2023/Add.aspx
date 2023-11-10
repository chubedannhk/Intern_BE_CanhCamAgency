<%@ Page Title="Add" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="Table_ToDoList_08_11_2023.Add" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="This is a label inside the placeholder." />
        </asp:PlaceHolder>
        <br />
        <!-- hiện thịnội dung tĩnh cho trang web -->
        <asp:Literal ID="Literal1" runat="server">This is some static text.</asp:Literal>

        <br />
        <<asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
            <asp:ListItem Text="Item 1" Value="1" />
            <asp:ListItem Text="Item 2" Value="2" />
            <asp:ListItem Text="Item 3" Value="3" />
        </asp:ListBox>

        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Homege</asp:LinkButton>
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" />
        <br />

        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" />
        <asp:Button ID="btnViewImage" runat="server" Text="Xem ảnh" OnClientClick="return showImage();" />

        <script type="text/javascript">
            function showImage() {
                var fileUpload = document.getElementById('<%= FileUpload1.ClientID %>');
                var image = document.getElementById('<%= Image1.ClientID %>');

                if (fileUpload.files && fileUpload.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        image.src = e.target.result;
                    };
                    reader.readAsDataURL(fileUpload.files[0]);
                }
                return false; // Ngăn chặn việc tải lại trang sau khi nhấn nút "Xem ảnh"
            }
        </script>


        <br />

        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="Option 1" Value="1" />
            <asp:ListItem Text="Option 2" Value="2" />
            <asp:ListItem Text="Option 3" Value="3" />
        </asp:DropDownList>
        <br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <asp:BulletedList ID="BulletedList1" runat="server">
            <asp:ListItem>Item 1</asp:ListItem>
            <asp:ListItem>Item 2</asp:ListItem>
            <asp:ListItem>Item 3</asp:ListItem>
        </asp:BulletedList>

    </main>
</asp:Content>
