<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kennisopdracht001.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <title>Kennis opdracht storeTransaction</title>
    <link rel="stylesheet" type="text/css" href="styles.css" media="screen" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <hgroup>
            <h1>Kennis opdracht storeTransaction</h1>
            <h2>Cart</h2>
        </hgroup>
        <p><strong>Product&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prijs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hoeveelheid&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Totaal</strong></p>
        Product 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; €4.49&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="prod1textBox" runat="server" Height="20px" Width="63px" OnTextChanged="prod1textBox_TextChanged">1</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="prod1Label" runat="server" Text="€4.49"></asp:Label>
        <br />
        Product 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; €3.25&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="prod2textBox" runat="server" Height="20px" Width="63px" OnTextChanged="prod2textBox_TextChanged">1</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="prod2Label" runat="server" Text="€3.25"></asp:Label>
        <br />
        Product 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; €2.99&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="prod3textBox" runat="server" Height="20px" Width="63px" OnTextChanged="prod3textBox_TextChanged">1</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="prod3Label" runat="server" Text="€2.99"></asp:Label>
        <br />
        Product 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; €8.95&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="prod4textBox" runat="server" Height="20px" Width="63px" OnTextChanged="prod4textBox_TextChanged">1</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="prod4Label" runat="server" Text="€8.95"></asp:Label>
        <br />
        </div>
        <br />
        <div>
            <asp:Button ID="UpdateCartButton" runat="server" Text="Update Cart" OnClick="UpdateCartButton_Click" />
            <br />
            <br />
        Subtotaal:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="subTotaalLabel" runat="server" Text="€19.68"></asp:Label>
            <br />
            <br />
            Verzending:&nbsp;&nbsp;&nbsp;&nbsp; Gratis verzending<br />
            <br />
            Totaal:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="totaalLabel" runat="server" Text="€19.68"></asp:Label>
            </div>
        <br />
        <div>

            <asp:CheckBox ID="MaakCO2okCheckBox" runat="server" Enabled="False" />
            <asp:Button CssClass="MaakCO2ok" ID="maakCO2okButton" runat="server" Text="Maak CO2ok voor €0.00" OnClick="maakCO2okButton_Click" BorderStyle="None" ForeColor="White" />
            <br />
            Bouw mee aan een betere toekomst  <asp:ImageButton ID="infoButton" runat="server" Height="25px" ImageUrl="~/info.png" Width="25px" />
            <br />
            <asp:Image ID="Image1" runat="server" Height="39px" ImageUrl="~/logo.png" Width="104px" />

        </div>
    
    </form>
</body>
</html>
