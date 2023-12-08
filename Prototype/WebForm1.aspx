<%@ Page Title="" Language="C#" MasterPageFile="~/Hope/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prototype.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">




    <div>
        <canvas id="myPieChart" runat="server" width="400" height="200"></canvas>
    </div>
    <script>
        function initializeChart(chartData) {
            // Parse JSON data
            var data = JSON.parse(chartData);

            // Create arrays for labels and data
            var labels = data.map(item => item.Category);
            var values = data.map(item => item.Value);

            // Get the canvas element
            var ctx = document.getElementById('<%= myPieChart.ClientID %>').getContext('2d');

            // Create a pie chart
            var myPieChart = new Chart(ctx, {
                type: 'pie',
                data: {
                    labels: labels,
                    datasets: [{
                        data: values,
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.5)',
                            'rgba(54, 162, 235, 0.5)',
                            'rgba(255, 206, 86, 0.5)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)'
                        ],
                        borderWidth: 1
                    }]
                }
            });
        }
    </script>



</asp:Content>
