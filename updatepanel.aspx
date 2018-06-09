<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updatepanel.aspx.cs" Inherits="updatepanel" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UpdatePanel</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
      
        <asp:UpdatePanel runat="server" id="UpdatePanel1" updatemode="Always">           
            <ContentTemplate>
                <asp:Label runat="server" id="DateTimeLabel2" />
                <asp:Button runat="server" id="UpdateButton2" onclick="UpdateButton_Click" text="Update" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>