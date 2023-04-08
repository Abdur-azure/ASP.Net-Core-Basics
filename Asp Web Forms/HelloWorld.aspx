<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelloWorld.aspx.cs" Inherits="Asp_Web_Forms.HelloWorld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hello World!</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            This is my Hello World page!
        </div>
        <br />
        <div>
            <asp:Label runat="server" Font-Bold="true" Text="Employee" /><br />
            <asp:Label runat="server" Text="Last Name" /><br />
            <asp:Label runat="server" Text="First Name" /><br />
            <asp:Label runat="server" Text="Middle Initial" /><br />
        </div>
        <br />
        <div>
            <asp:Label runat="server" Font-Bold="true" Text="Product Description" /><br />
            <asp:TextBox runat="server" Columns="50" Rows="5" TextMode="MultiLine" Wrap="true" />
        </div>
        <br />
        <div>
            <asp:Label runat="server" Font-Bold="true" Text="Email Address" /><br />
            <asp:TextBox runat="server" ID="txtEmailAddress" /><br />
            <asp:Button runat="server" ID="btnSave" OnClick="btnSave_Click" Text="Save" />
            <asp:Label runat="server" ID="lblMessage" />
        </div>
        <br />
        <div>
            <asp:Label runat="server" Font-Bold="true" Text="View Buttons" /><br />
            <asp:Button runat="server" CommandArgument="A" CommandName="View" OnCommand="Button_Command" Text="A" />
            <asp:Button runat="server" CommandArgument="B" CommandName="View" OnCommand="Button_Command" Text="B" />
            <asp:Button runat="server" CommandArgument="C" CommandName="View" OnCommand="Button_Command" Text="C" />
            <asp:Button runat="server" CommandArgument="D" CommandName="View" OnCommand="Button_Command" Text="D" />
            <asp:Button runat="server" CommandArgument="E" CommandName="View" OnCommand="Button_Command" Text="E" />
            <asp:Button runat="server" CommandName="Cancel" OnCommand="Button_Command" Text="Cancel" /><br />
            <asp:Label runat="server" ID="lblMessageViewButtons" /><br />
        </div>
        <br />
        <div>
            <asp:Label runat="server" Font-Bold="true" Text="Employee" /><br />
            <asp:Table runat="server" GridLines="Horizontal">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Last Name" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtTableLastName" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="First Name" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtTableFirstName" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Middle Initial" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtTableMiddleInitial" Width="20px"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table><br />
            <asp:Button runat="server" ID="btnTableSave" OnClick="btnTableSave_Click" Text="Save" />
        </div>
    </form>
</body>
</html>
