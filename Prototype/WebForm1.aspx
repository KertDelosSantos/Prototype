<%@ Page Title="" Language="C#" MasterPageFile="~/Hope/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prototype.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


<div class="mb-3">
            <img src="" runat="server" id="userimage" style="height: 200px; border: solid 2px gray;" class="rounded-circle avatar-lg img-thumbnail" alt="user-profile-image" />
            <asp:FileUpload ID="profileinput" runat="server" CssClass="profileinput" Accept=".png, .jpg, .jpeg" Required="true" />
            <div class="invalid-feedback">Please choose a valid image</div>
            <asp:Button ID="uploadButton" runat="server" Text="Upload Image" OnClick="UploadImage" />
       


        <script>
            $(document).ready(function () {
                // Add change event listener to the file input
                $("#profileinput").change(function () {
                    // Get the selected file
                    var file = this.files[0];
                    if (file) {
                        // Read the file as a data URL
                        var reader = new FileReader();

                        reader.onload = function (e) {
                            // Set the image source to the data URL
                            $("#userimage").attr("src", e.target.result);
                        };
                        reader.readAsDataURL(file);
                    }
                });
            });

            function uploadImage() {
                // Handle image upload logic here
                // You can use Ajax to send the image file to the server
                // Update the server and database logic accordingly
            }
        </script>
</div>


</asp:Content>
