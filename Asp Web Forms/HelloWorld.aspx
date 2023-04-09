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
            </asp:Table>
            <asp:Button runat="server" ID="btnTableSave" OnClick="btnTableSave_Click" Text="Save" />
        </div>
        <br />
        <div>
            <asp:Label runat="server" Font-Bold="true" Text="Order Date" /><br />
            <asp:Calendar runat="server" ID="calDate" FirstDayOfWeek="Sunday" NextMonthText="Next" OnSelectionChanged="calDate_SelectionChanged" PrevMonthText="Prev" />
            <asp:Label runat="server" ID="lblDate" />
            <br />
            <asp:Label runat="server" Font-Bold="true" Text="Filters" /><br />
            <asp:CheckBox runat="server" ID="chkA" Text="A" /><br />
            <asp:CheckBox runat="server" ID="chkB" Text="B" /><br />
            <asp:CheckBox runat="server" ID="chkC" Text="C" /><br />
            <asp:CheckBox runat="server" ID="chkD" Text="D" /><br />
            <asp:Button runat="server" ID="btnSetFilter" OnClick="btnSetFilter_Click" Text="Set Filter" />
            <asp:Label runat="server" ID="lblCheckBoxFiter" ForeColor="Green" />
            <br />
            <asp:Label runat="server" Font-Bold="true" Text="Shipper" /><br />
            <asp:RadioButton runat="server" ID="radUSPS" Checked="true" GroupName="Shipper" Text="USPS" /><br />
            <asp:RadioButton runat="server" ID="radUPS" GroupName="Shipper" Text="UPS" /><br />
            <asp:RadioButton runat="server" ID="radFedEx" GroupName="Shipper" Text="FedEx" /><br />
            <asp:Button runat="server" ID="btnSelectShipper" OnClick="btnSelectShipper_Click" Text="Select Shipper" />
            <asp:Label runat="server" ID="lblShipper" ForeColor="Green" />
            <br />
            <asp:Label runat="server" Font-Bold="true" Text="Product Image" /><br />
            <asp:Label runat="server" Text="Please select a product image and click Upload." /><br />
            <asp:FileUpload runat="server" ID="fiuImage" /><br />
            <asp:Button runat="server" ID="btnFileUpload" OnClick="btnFileUpload_Click" Text="Upload" />
            <asp:Label runat="server" ID="lblFileUploadMessage" />
            <br />
            <asp:HyperLink runat="server" NavigateUrl="https://github.com/Abdur-azure" Target="_blank" Text="Github" /><br />
            <asp:HyperLink runat="server" ImageHeight="35" ImageUrl="~/Images/github_logo.png" ImageWidth="100" NavigateUrl="https://github.com/Abdur-azure" Target="_blank" Text="Github" />
            <br />
            <asp:Label runat="server" Font-Bold="true" Text="Product" /><br />
            <asp:Image runat="server" AlternateText="Github Profile" ImageUrl="~/Images/github_logo.png" />
            <br />
            <asp:Label runat="server" Font-Bold="true" Text="Product" /><br />
            <asp:ImageButton runat="server" ID="btnDisplayDescription" ImageUrl="~/Images/github_logo.png" OnClick="btnDisplayDescription_Click" /><br />
            <asp:Label runat="server" ID="lblDescription" />
            <br />
            <asp:Label runat="server" Font-Bold="true" Text="Supplier" /><br />
            <asp:DropDownList  runat="server" ID="ddlSupplier" AutoPostBack="true" OnSelectedIndexChanged="ddlSupplier_SelectedIndexChanged">
                <asp:ListItem Text="A" Value="A" />
                <asp:ListItem Text="B" Value="B" />
                <asp:ListItem Text="C" Value="C" />
            </asp:DropDownList>
            <asp:Label runat="server" ID="lblSupplierIndex" />
            <asp:Label runat="server" ID="lblSupplierValue" />
            <asp:Label runat="server" ID="lblSupplierText" />
            <br />
            <asp:Label runat="server" Font-Bold="true" Text="Supplier" /><br />
            <asp:ListBox runat="server" ID="libSupplier" AutoPostBack="true" OnSelectedIndexChanged="libSupplier_SelectedIndexChanged">
                <asp:ListItem Text="A" Value="A" />
                <asp:ListItem Text="B" Value="B" />
                <asp:ListItem Text="C" Value="C" />
            </asp:ListBox>
            <asp:Label runat="server" ID="lblListSupplierIndex" />
            <asp:Label runat="server" ID="lblListSupplierValue" />
            <asp:Label runat="server" ID="lblListSupplierText" />
            <br />
            <asp:Label runat="server" Font-Bold="true" Text="Customer" /><br />
            <asp:Panel runat="server" ID="panBillingAddress" GroupingText="Billing Address" Visible="true">
                <asp:Label runat="server" Text="Address " /><br />
                <asp:TextBox runat="server" ID="txBillingAddress" /><br />
                <asp:Button runat="server" ID="btnSaveBillingAddress" OnClick="btnSaveBillingAddress_Click" Text="Save" />
            </asp:Panel>
            <asp:Panel runat="server" ID="panShippingAddress" GroupingText="Shipping Address" Visible="false">
                <asp:Label runat="server" Text="Address " /><br />
                <asp:TextBox runat="server" ID="txShippingAddress" /><br />
                <asp:Button runat="server" ID="btnSaveShippingAddress" OnClick="btnSaveShippingAddress_Click" Text="Save" />
            </asp:Panel>
            <asp:RadioButton runat="server" ID="radBillingAddress" AutoPostBack="true" Checked="true" GroupName="AddressGroup" OnCheckedChanged="radBillingAddress_CheckedChanged" Text="Billing Address" />
            <asp:RadioButton runat="server" ID="radShippingAddress" AutoPostBack="true" GroupName="AddressGroup" OnCheckedChanged="radShippingAddress_CheckedChanged" Text="Shipping Address" />
        </div>
    </form>
</body>
</html>
