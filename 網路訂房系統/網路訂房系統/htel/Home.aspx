<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="htel.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-family: 華康龍門石碑;
        }
        .style2
        {
            font-size: large;
            font-family: 華康龍門石碑;
        }
        .style3
        {
            font-family: 華康行書體;
        }
    </style>
</head>
<body style="background-image: url('back_story.png')">
    <form id="form1" runat="server">
    <div style="height: 572px; text-align: center">
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <span class="style1"><span class="style3">歡迎來到和平飯店</span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
            class="style3"> </span>
        </span><span class="style2">
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx" 
            CssClass="style3">登入</asp:LinkButton>
        /<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/register.aspx" 
            CssClass="style3">註冊</asp:LinkButton>
        </span>
    
    </div>
    </form>
</body>
</html>
