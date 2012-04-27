<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="duclApp._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td valign="top">
                <h2>
                    Delaware United Cricket League
                </h2>
                <p style="font-size: 20px">
                    <b>2012 Season Prize Money : Winner - $2,000 and Runner Up - $1,000</b></p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;DUCL is initiated by people from various walks of life and
                    business with a common passionate goal of creating a platform for cricket lovers
                    to come together and show case their cricket skills and develop communal network.
                    This league aspires to recreate sporting enthusiasm, competitiveness, and another
                    chance to relive our days of friendships and memories of joy that was possible only
                    through cricket and the shared passion for the game.
                </p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;The vision of DUCL is to develop a forum for the flock of
                    same feather. We are a family put together by all the teams, sponsers and fans.
                    Effort of all the organizers and teams is reason why our family is growing and will
                    continue to grow.
                </p>
                <p>
                    <strong>2011 Winners were Boozers</strong></p>
                <div class="Module">
                </div>
            </td>
            <td valign="top" style="padding-left: 5px">
                <div class="Module">
                    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
                        <ajaxToolkit:TabPanel runat="server" HeaderText="Fixtures" ID="TabPanel1">
                            <ContentTemplate>
                                <asp:ListView ID="lvFixtures" runat="server">
                                    <LayoutTemplate>
                                        <table border="0" cellpadding="1">
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                        <hr />
                                        <asp:HyperLink ID="hpFixtures" runat="server" SkinID="SmallHyperLink" Text="Complete Fixtures"
                                            NavigateUrl="~/MenuPages/Schedule.aspx"></asp:HyperLink>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblGame" SkinID="BoldDataLabel"><%#Eval("Game") %></asp:Label><br />
                                                <asp:Label runat="server" ID="lblDatestamp" SkinID="SmallDataLabel"><%#Eval("Datestamp") %></asp:Label>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:Label runat="server" ID="lblNoFixtures" Text="No Fixtures"></asp:Label>
                                    </EmptyDataTemplate>
                                </asp:ListView>
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                        <ajaxToolkit:TabPanel runat="server" HeaderText="Results" ID="TabPanel2">
                        </ajaxToolkit:TabPanel>
                    </ajaxToolkit:TabContainer>
                </div>
                <div class="Module">
                    <script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>
                    <script>
                        new TWTR.Widget({
                            version: 2,
                            type: 'profile',
                            rpp: 4,
                            interval: 30000,
                            width: 260,
                            height: 300,
                            theme: {
                                shell: {
                                    background: '#333333',
                                    color: '#ffffff'
                                },
                                tweets: {
                                    background: '#000000',
                                    color: '#ffffff',
                                    links: '#0099ff'
                                }
                            },
                            features: {
                                scrollbar: false,
                                loop: false,
                                live: false,
                                behavior: 'all'
                            }
                        }).render().setUser('ducl1').start();
                    </script>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
