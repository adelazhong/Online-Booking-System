<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="htel.register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            height: 337px;
            font-family: 華康龍門石碑;
            font-size: medium;
        }
        .style6
        {
            text-align: center;
            font-family: 華康行書體;
            font-size: xx-large;
            height: 36px;
        }
        .style7
        {
            font-family: 華康行書體;
            font-size: medium;
            margin-bottom: 6px;
        }
        .style13
        {
            width: 171px;
            height: 37px;
            font-family: 華康行書體;
        }
        .style14
        {
            width: 364px;
            height: 37px;
        }
        .style15
        {
            width: 171px;
            height: 6px;
        }
        .style16
        {
            width: 364px;
            height: 6px;
        }
        .style19
        {
            font-family: 華康行書體;
        }
        .style20
        {
            height: 337px;
            font-family: 華康龍門石碑;
            font-size: medium;
            width: 520px;
        }
        .style21
        {
            width: 171px;
            font-family: 華康行書體;
            height: 44px;
        }
        .style22
        {
            width: 364px;
            height: 44px;
        }
        .style27
        {
            width: 171px;
            height: 32px;
            font-family: 華康行書體;
        }
        .style28
        {
            width: 364px;
            height: 32px;
        }
    </style>
</head>
<body style="background-image: url('back_story.png')">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style6" colspan="2">
                    注冊</td>
            </tr>
            <tr>
                <td class="style20" 
                    
                    
                    style="mso-bidi-font-size: 10.0pt; mso-ascii-font-family: 細明體; mso-hansi-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-ansi-language: EN-US; mso-fareast-language: ZH-TW; mso-bidi-language: AR-SA; ">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        InsertCommand="INSERT INTO users(phone, deposit, password, name) VALUES (@phone, @deposit, @password, @name)" 
                        SelectCommand="SELECT [name], [deposit] FROM [users] WHERE ([name] = @name)">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox2" Name="password" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox3" Name="phone" PropertyName="Text" />
                            <asp:Parameter DefaultValue="500" Name="deposit" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        DataSourceID="SqlDataSource1" Height="50px" Visible="False" Width="125px" 
                        CssClass="style19">
                        <Fields>
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="deposit" HeaderText="deposit" 
                                SortExpression="deposit" />
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td class="style3" 
                    
                    
                    style="mso-bidi-font-size: 10.0pt; mso-ascii-font-family: 細明體; mso-hansi-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-ansi-language: EN-US; mso-fareast-language: ZH-TW; mso-bidi-language: AR-SA; ">
                    <div align="center">
                        <table align="center" cellpadding="0" cellspacing="0" 
                            
                            style="width: 15%; font-family: 華康龍門石碑; font-size: medium; height: 308px; margin-left: 0px;">
                            <tr>
                                <td bgcolor="White" class="style13">
                    帳號</td>
                                <td bgcolor="White" class="style14">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="style7" Height="22px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="White" class="style27">
                    密碼</td>
                                <td bgcolor="White" class="style28">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="style7"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="White" class="style13">
                    電話</td>
                                <td bgcolor="White" class="style14">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="style7"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="White" class="style15">
                    <asp:Button ID="Button3" runat="server" PostBackUrl="~/Home.aspx" 
                        style="font-family: 華康行書體(P); font-size: medium" Text="返回首頁" Height="29px" 
                                        onclick="Button3_Click" CssClass="style19" />
                                </td>
                                <td align="center" bgcolor="White" class="style16">
                    <asp:Button ID="Button1" runat="server" CssClass="style7" 
                        onclick="Button1_Click" Text="確認註冊" Height="29px" />
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="White" class="style21">
                    <asp:Button ID="Button2" runat="server" CssClass="style7" 
                        PostBackUrl="~/hotel.aspx" Text="進入網站" Visible="False" />
                                </td>
                                <td bgcolor="White" class="style22">
                    <asp:Label ID="Label1" runat="server" CssClass="style7" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                            </table>
                    </div>
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
