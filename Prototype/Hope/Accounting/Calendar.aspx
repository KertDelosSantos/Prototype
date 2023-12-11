﻿<%@ Page Title="Calendar" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="Prototype.Hope.Accounting.Calendar" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <link href="../../Assets/StyleSheet2.css" rel="stylesheet" />
    <div class="container-fluid" style="background-color: ghostwhite">
        <div class="row">
            <div class="col-8">
                <div class="calendar-container" style="height: 720px; gap: 20px; display: flex; flex-direction: column; border-width: 0px;">
                    <div class="calendar-header" style="border-radius: 10px; border: solid; border-width: 1px; display:flex; align-items: center;">
                        <div style="padding-right: 50px">
                            <asp:LinkButton ID="btnBack" runat="server" OnClientClick="window.location.href='Dashboard.aspx'; return false;">
<img src="../../Library/Images/left-arrow.png"   height="50" alt="Back" />
                            </asp:LinkButton>
                        </div>
                        <h2>Calendar</h2>
                    </div>
                    <div style="text-align: center; cursor: default">
                        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" Width="100%" Height="645px" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black" NextPrevFormat="ShortMonth" BorderWidth="1px" DayNameFormat="Full" ShowGridLines="True" BackColor="GhostWhite">
                            <DayHeaderStyle Font-Bold="True" Font-Size="20pt" ForeColor="black" Height="12pt" BorderStyle="Solid" BorderWidth="1px" BackColor="#CEE7FF" />
                            <DayStyle BackColor="GhostWhite" BorderStyle="Solid" BorderWidth="1px" Font-Size="15pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="15pt" ForeColor="black" />
                            <OtherMonthDayStyle ForeColor="black" />
                            <TitleStyle BackColor="GhostWhite" BorderStyle="Solid" Font-Bold="True" Font-Size="20pt" ForeColor="black" Height="20pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="Black" />
                        </asp:Calendar>
                    </div>
                </div>
            </div>
            <div class="col-4" style="background-color: ghostwhite">
                <div style="padding: 20px">
                    <div class="col">
                        <h3>Upcoming</h3>
                    </div>
                    <div class="col">
                        <h5>Today</h5>

                        <div class="col" style="margin: 10px">
                            <div class="p-3 border bg-light" style="border-radius: 20px">
                                <a class="inner-div" href="#">
                                    <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                                        <h5></h5>
                                        <h4>####</h4>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col" style="margin: 10px">
                            <div class="p-3 border bg-light" style="border-radius: 20px">
                                <a class="inner-div" href="#">
                                    <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                                        <h5></h5>
                                        <h4>####</h4>
                                    </div>
                                </a>
                            </div>
                        </div>

                    </div>
                    <div class="col">
                        <h5>Tomorrow</h5>

                        <div class="col" style="margin: 10px">
                            <div class="p-3 border bg-light" style="border-radius: 20px">
                                <a class="inner-div" href="#">
                                    <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                                        <h5></h5>
                                        <h4>####</h4>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col" style="margin: 10px">
                            <div class="p-3 border bg-light" style="border-radius: 20px">
                                <a class="inner-div" href="#">
                                    <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                                        <h5></h5>
                                        <h4>####</h4>
                                    </div>
                                </a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
