<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SLOT_PRACTICE._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
        }
        .auto-style2 {
            color: #FFFFFF;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style3 {
            font-family: Arial, Helvetica, sans-serif;
        }
        </style>
</head>
<body style="text-align: center; background:url('cast_banner_lost_girl_s5.jpg')">
    <form id="form1" runat="server">
    <div style="color: #FFFFFF">
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
        <asp:Image ID="Image1" runat="server" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="10px" Height="150px" Width="150px" BackColor="White" />
        <asp:Image ID="Image2" runat="server" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="10px" Height="150px" Width="150px" BackColor="White" />
        <asp:Image ID="Image3" runat="server" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="10px" Height="150px" Width="150px" BackColor="White" />
        <br />
        <br />
        <br />
        <span class="auto-style3"><strong>Your Bet:</strong></span>&nbsp;
        <asp:TextBox ID="txtBet" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <asp:Button ID="leverButton" runat="server" Text="Pull Lever!!!" OnClick="leverButton_Click" />
        <br />
        <h2>
        <br class="auto-style1" />
            <strong>
        <asp:Label ID="cashLabel1" runat="server" CssClass="auto-style2"></asp:Label>
            </strong></h2>
        <h2>
            <asp:Label ID="resultLabel1" runat="server"></asp:Label>
            <strong>
        <br class="auto-style2" />
            </strong></h2>
        <h2>
            &nbsp;</h2>
        <h2>
            <span class="auto-style2"><strong>Rules:<br />
        1 Cherry - x2 Your Bet</strong></span><strong><br class="auto-style2" />
            </strong><span class="auto-style2"><strong>2 Cherries - x3 Your Bet</strong></span><strong><br class="auto-style2" />
            </strong><span class="auto-style2"><strong>3 Cherries - x4 Your Bet</strong></span><strong><br class="auto-style2" />
        <br class="auto-style2" />
            </strong><span class="auto-style2"><strong>3 7&#39;s - Jackpot - x100 Your Bet</strong></span><strong><br class="auto-style2" />
        <br class="auto-style2" />
            </strong><span class="auto-style2"><strong>HOWEVER</strong></span><strong><br class="auto-style2" />
        <br class="auto-style2" />
            </strong><span class="auto-style2"><strong>If there&#39;s even one Bar you win nothing.
    
    </strong></span></h2>
    
    </div>
    </form>
</body>
</html>
