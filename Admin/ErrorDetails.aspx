<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Evoco.Master" CodeBehind="ErrorDetails.aspx.vb" Inherits="Evoco.ErrorDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
        AutoGenerateColumns="False" DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="DateTime" HeaderText="DateTime" 
                SortExpression="DateTime" />
            <asp:BoundField DataField="RawHTML" HeaderText="RawHTML" 
                SortExpression="RawHTML" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetLast1000" 
        TypeName="Evoco.DataSet1TableAdapters.LogHTMLTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DateTime" Type="DateTime" />
            <asp:Parameter Name="RawHTML" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DateTime" Type="DateTime" />
            <asp:Parameter Name="RawHTML" Type="String" />
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
