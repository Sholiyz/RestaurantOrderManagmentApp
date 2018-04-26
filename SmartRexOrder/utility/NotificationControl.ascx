<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NotificationControl.ascx.cs" Inherits="utility_NotificationControl" %>
<div class="alert alert-primary alert-dismissible fade show" id="notediv" runat="server" visible="false">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <strong><%=noteheader %></strong> <%=notemessage %>
    <div class="form-actions text-center" runat="server" id="confirmdiv" visible="false">
        <br />
        <br />
        <asp:Button runat="server" ID="Okbutton" CssClass="btn btn-success" Text="Continue" OnClientClick="OkConfirm()" /><%--OnClick="Okbutton_Click" --%>
        <asp:Button runat="server" ID="Cancelbutton" CssClass="btn btn-danger" Text="Cancel"  OnClientClick="CancelConfirm()" /><%--OnClick="Cancelbutton_Click"--%>
    </div>
      <script type = "text/javascript">
        function OkConfirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            confirm_value.value = "Yes";
          
            document.forms[0].appendChild(confirm_value);
        }
        function CancelConfirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            confirm_value.value = "No";
            
            document.forms[0].appendChild(confirm_value);
        }
    </script>
</div>
