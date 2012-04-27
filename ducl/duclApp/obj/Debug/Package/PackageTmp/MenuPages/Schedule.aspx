<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Schedule.aspx.cs" Inherits="duclApp.MenuPages.Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Select Team :
                </td>
                <td>
                    <asp:DropDownList ID="ddlTeam" runat="server" AutoPostBack="true" AppendDataBoundItems="True"
                        DataTextField="TeamName" DataValueField="TeamId" OnSelectedIndexChanged="ddlTeam_SelectedIndexChanged"
                        Width="200px">
                        <asp:ListItem Value="-1" Text="<All Teams>"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <asp:GridView ID="gvSchedule" runat="server" AutoGenerateColumns="False" CellPadding="4"
            CssClass="mGrid">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Datestamp" HeaderText="Date Time" ReadOnly="True" SortExpression="Datestamp" />
                <asp:BoundField DataField="Game" HeaderText="Match" ReadOnly="True" SortExpression="Game" />
                <asp:BoundField DataField="HomeTeamName" HeaderText="Home Team" ReadOnly="True" SortExpression="HomeTeamName" />
                <asp:BoundField DataField="Umpiring" HeaderText="Umpiring" ReadOnly="True" SortExpression="Umpiring" />
                <asp:BoundField DataField="Winner" HeaderText="Results" ReadOnly="True" SortExpression="Winner" />
            </Columns>
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:GridView>
    </div>
</asp:Content>
