<%@ Page Title="首頁" Language="C#" 
    CodeBehind="Default.aspx.cs" Inherits="htel._Default" %>

<head>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-family: "Vladimir Script";
            font-size: xx-large;
            height: 119px;
        }
        .style4
        {
            width: 1021px;
            font-family: "Vladimir Script";
            font-size: x-large;
            text-align: right;
        }
        .style10
        {
            font-size: large;
        }
        .style13
        {
            height: 52px;
            width: 631px;
            font-family: 華康行書體;
        }
        .style16
        {
            width: 631px;
            height: 108px;
            font-family: 華康行書體;
        }
        .style17
        {
            width: 631px;
            height: 59px;
        }
        .style19
        {
            font-family: 華康行書體(P);
        }
        .style20
        {
            text-align: center;
            height: 304px;
        }
        .style22
        {
            height: 52px;
            width: 451px;
        }
        .style23
        {
            width: 451px;
            height: 108px;
        }
        .style24
        {
            width: 451px;
            height: 59px;
        }
        .style25
        {
            height: 242px;
        }
        .style26
        {
            width: 671px;
            font-family: "Vladimir Script";
            font-size: x-large;
            text-align: center;
        }
        .style27
        {
            width: 1265px;
            font-family: "Vladimir Script";
            font-size: x-large;
            text-align: center;
        }
        .style28
        {
            width: 1021px;
            font-family: "Vladimir Script";
            font-size: x-large;
            text-align: right;
            height: 304px;
        }
        .style29
        {
            font-family: 華康行書體;
        }
    </style>
</head>
<body style="background-image: url('back_story.png'); background-repeat: repeat">
    <form id="form1" runat="server">
    <table style="width:100%; height: 281px;" align="center">
        <tr>
            <td class="style1" colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style29">&nbsp;&nbsp;<asp:Label 
                    ID="Label1" runat="server" Text="&nbsp;登入"></asp:Label>
                </span><span class="style19">&nbsp;</span></td>
        </tr>
        <tr>
            <td class="style27" rowspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style28" colspan="2">
                <table bgcolor="White" cellspacing="5" 
                    
                    style="width: 45%; font-family: 華康龍門石碑; font-size: large; text-align: center; height: 300px;">
                    <tr>
                        <td class="style13">
                            用戶名</td>
                        <td class="style22">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style29"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            密碼</td>
                        <td class="style23">
                <asp:TextBox ID="TextBox2" runat="server" type="password" CssClass="style29"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                <asp:Button ID="Button2" runat="server" Height="31px" 
                    style="font-family: 華康行書體(P); font-size: medium;" Text="註冊" Width="59px" 
                                CssClass="style29" PostBackUrl="~/register.aspx" />
                        </td>
                        <td class="style24">
                <asp:Button ID="Button1" runat="server" Height="31px" onclick="Button1_Click" 
                    style="font-family: 華康行書體(P); text-align: right; font-size: medium;" Text="登入" 
                    Width="59px" CssClass="style29" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style20">
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    
                    style="font-family: 華康行書體; font-size: x-large; text-align: left;" Visible="False" 
                    PostBackUrl="~/hotel.aspx">進入旅館</asp:LinkButton>
            </td>
            <td class="style26">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataSourceID="SqlDataSource1" Height="50px" 
                    style="font-family: 'Vladimir Script'; font-size: large" Visible="False" 
                    Width="125px">
                    <EmptyDataTemplate>
                        <span class="style10">username or password error!</span>
                    </EmptyDataTemplate>
                    <Fields>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="deposit" HeaderText="deposit" 
                            SortExpression="deposit" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [name], [deposit] FROM [users] WHERE (([name] = @name) AND ([password] = @password))" 
                    onselecting="SqlDataSource1_Selecting">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="password" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style25">
                &nbsp;</td>
        </tr>
    </table>
    </form>


