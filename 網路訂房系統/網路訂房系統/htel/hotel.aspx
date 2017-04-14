<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hotel.aspx.cs" Inherits="htel.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style4
        {
            width: 264px;
            height: 157px;
            text-align: center;
        }
        .style9
        {
            height: 82px;
            font-family: 華康行書體;
            text-align: center;
        }
        .style18
        {
            height: 245px;
            font-family: 華康行書體;
        }
        .style19
        {
            font-family: 華康行書體;
            font-size: large;
            text-align: center;
        }
        .style20
        {
            height: 157px;
            width: 354px;
            text-align: center;
        }
        .style21
        {
            height: 140px;
            text-align: center;
        }
        .style23
        {
            height: 140px;
            width: 354px;
            text-align: center;
        }
        .style24
        {
            height: 140px;
        }
        .style25
        {
            height: 245px;
            text-align: left;
        }
        .style26
        {
            width: 292px;
            height: 245px;
            text-align: center;
            font-family: 華康龍門石碑;
            font-size: large;
        }
        .style27
        {
            width: 292px;
            height: 157px;
            text-align: center;
            font-family: 華康龍門石碑;
            font-size: large;
        }
        .style28
        {
            height: 157px;
        }
        .style29
        {
            width: 358px;
            height: 157px;
        }
        .style30
        {
            height: 140px;
            text-align: center;
            font-family: 華康龍門石碑;
            font-size: large;
            width: 292px;
        }
        .style31
        {
            height: 140px;
            font-family: 華康行書體;
        }
        .style32
        {
            font-family: 華康行書體;
        }
        .style33
        {
            height: 140px;
            width: 292px;
            text-align: center;
        }
        .style34
        {
            height: 118px;
            width: 292px;
            text-align: center;
        }
        .style35
        {
            height: 118px;
            text-align: center;
        }
        </style>
</head>
<body style="background-image: url('back_h.jpg')">
    <form id="form1" runat="server">
    <div>
    
    </div>
    
        <table style="width:100%;">
            <tr>
                <td class="style9" colspan="7">
                    <asp:Label ID="Label15" runat="server" 
                        style=" font-size: xx-large"></asp:Label>
                    <asp:Label ID="Label1" runat="server" 
                        style=" font-size: xx-large" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style27">
                    <asp:Label ID="Label18" runat="server" Text="步驟一:選房型" CssClass="style32"></asp:Label>
                </td>
                <td class="style29" colspan="3">
                    <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" 
                        CssClass="style32" ImageUrl="~/back.jpg" />
                </td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="price" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        style="font-family: 華康行書體(P); font-size: large" CssClass="style32" 
                        BackColor="#FFFFCC">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT name, price, id_room FROM room" 
                        
                        InsertCommand="INSERT INTO [order] (date, userpwd) VALUES (GETDATE(), @userpwd)">
                        <InsertParameters>
                            <asp:SessionParameter Name="userpwd" SessionField="pass" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style20">
                    <asp:Label ID="Label2" runat="server" 
                        style="font-family: 華康行書體(P); font-size: large" CssClass="style32"></asp:Label>
                </td>
                <td class="style28">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="font-family: 華康行書體(P); font-size: large" Text="確定" 
                        CssClass="style32" BackColor="#FFFFCC" Width="125px" />
                </td>
            </tr>
            <tr>
                <td class="style26">
                    <asp:Label ID="Label11" runat="server" Text="步驟二:選日期" Visible="False" 
                        CssClass="style32"></asp:Label>
                </td>
                <td class="style25">
                    <asp:Label ID="Label10" runat="server" 
                        style="font-family: 華康行書體(P); font-size: large; text-align: center" 
                        Text="入住日期   " Visible="False" CssClass="style32"></asp:Label>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                        BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                        onselectionchanged="Calendar1_SelectionChanged" ShowGridLines="True" 
                        style="margin-left: 0px" Visible="False" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                            ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td class="style25" colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" CssClass="style19" Text="入住 " 
                        Visible="False"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style19" 
                        Visible="False" BackColor="#FFFFCC">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label4" runat="server" CssClass="style19" Text=" 晚" 
                        Visible="False"></asp:Label>
                </td>
                <td class="style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style30">
                    <asp:Label ID="Label12" runat="server" Text="步驟三:其他服務" Visible="False" 
                        CssClass="style32"></asp:Label>
                    </td>
                <td class="style21" colspan="2">
                    <asp:Label ID="Label8" runat="server" CssClass="style19" Text="加枕頭 " 
                        Visible="False"></asp:Label>
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="style19" 
                        Visible="False" BackColor="#FFFFCC">
                        <asp:ListItem>是</asp:ListItem>
                        <asp:ListItem>否</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style21" colspan="2">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        style="font-family: 華康行書體(P); font-size: large" Text="確定" Visible="False" 
                        CssClass="style32" BackColor="#FFFFCC" />
                </td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style24">
                    </td>
            </tr>
            <tr>
                <td class="style34">
                    <asp:Label ID="Label13" runat="server" Text="步驟四:確認訂單" Visible="False" 
                        style="font-family: 華康行書體(P); font-size: large" CssClass="style32"></asp:Label>
                    <br />
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        style="font-family: 華康行書體(P); font-size: medium" Text="確認訂單" 
                        Visible="False" CssClass="style32" BackColor="#FFFFCC" ForeColor="Red" />
                    </td>
                <td class="style35" colspan="6">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource2" style="font-family: 華康行書體(P); font-size: large" 
                        Visible="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
                        DataKeyNames="count" Width="871px" ondatabound="GridView1_DataBound" 
                        onrowdeleted="GridView1_RowDeleted" CssClass="style32">
                        <Columns>
                            <asp:TemplateField HeaderText="套房名稱" SortExpression="name">
                                <EditItemTemplate>
                                    <asp:Label ID="Label17" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="入住日期" SortExpression="datein">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("datein") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="入住天數" SortExpression="days">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList7" runat="server" 
                                        SelectedValue='<%# Bind("days") %>'>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("days") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="是否加枕頭" SortExpression="addz">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList6" runat="server" 
                                        SelectedValue='<%# Bind("addz") %>'>
                                        <asp:ListItem>是</asp:ListItem>
                                        <asp:ListItem>否</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("addz") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="單價" SortExpression="price">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="總價" SortExpression="totalPay">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("totalPay") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("totalPay") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        InsertCommand="INSERT INTO item(id_order, id_room, datein, addz, days) VALUES (@id_order, @id_room+1, @datein, @addz, @days)" 
                        
                        
                        SelectCommand="SELECT item.id_order, item.id_room, item.days, item.datein, item.addz, room.name, room.price, item.days * room.price AS totalPay, item.count FROM item INNER JOIN room ON item.id_room = room.id_room WHERE (item.id_order = @id_order)" 
                        DeleteCommand="DELETE FROM item WHERE (count = @count)" 
                        
                        UpdateCommand="UPDATE item SET days = @days, addz = @addz WHERE (count = @count)" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="count" 
                                PropertyName="SelectedDataKey" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:SessionParameter Name="id_order" SessionField="id_order" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="id_room" 
                                PropertyName="SelectedIndex" />
                            <asp:ControlParameter ControlID="Calendar1" Name="datein" 
                                PropertyName="SelectedDate" />
                            <asp:ControlParameter ControlID="DropDownList5" Name="addz" 
                                PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DropDownList2" Name="days" 
                                PropertyName="SelectedValue" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="id_order" SessionField="id_order" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="days" 
                                PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="GridView1" Name="addz" 
                                PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="GridView1" Name="count" 
                                PropertyName="SelectedDataKey" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        InsertCommand="INSERT INTO item(id_order, id_room, datein, addz, days) VALUES (@id_order, @id_room+1, @datein, @addz, @days)" 
                        
                        
                        SelectCommand="SELECT deposit, name FROM users WHERE (name = @name)" 
                        DeleteCommand="DELETE FROM item WHERE (count = @count)" 
                        UpdateCommand="UPDATE users SET deposit = @deposit WHERE (name = @name)" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="count" 
                                PropertyName="SelectedDataKey" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:SessionParameter Name="id_order" SessionField="id_order" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="id_room" 
                                PropertyName="SelectedIndex" />
                            <asp:ControlParameter ControlID="Calendar1" Name="datein" 
                                PropertyName="SelectedDate" />
                            <asp:ControlParameter ControlID="DropDownList5" Name="addz" 
                                PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DropDownList2" Name="days" 
                                PropertyName="SelectedValue" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="name" SessionField="name" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:SessionParameter Name="deposit" SessionField="money" />
                            <asp:SessionParameter Name="name" SessionField="name" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style33">
                    &nbsp;</td>
                <td class="style21" colspan="5">
                    &nbsp;</td>
                <td class="style31">
                    &nbsp;</td>
            </tr>
        </table>
    
    </form>
</body>
</html>
