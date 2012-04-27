<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Teams.aspx.cs" Inherits="duclApp.MenuPages.Teams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%">
        <tr>
            <td align="center">
                <b>GROUP A</b>
            </td>
            <td align="center">
                <b>GROUP B</b>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvGroupA" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    CssClass="mGrid">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
                        <asp:BoundField DataField="TeamPOC" HeaderText="Point of Contact" SortExpression="TeamPOC" />
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:GridView>
            </td>
            <td>
                <asp:GridView ID="gvGroupB" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    CssClass="mGrid">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
                        <asp:BoundField DataField="TeamPOC" HeaderText="Point of Contact" SortExpression="TeamPOC" />
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
