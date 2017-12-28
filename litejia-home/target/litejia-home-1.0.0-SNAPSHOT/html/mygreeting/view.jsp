<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page import="javax.portlet.PortletPreferences" %>
<portlet:defineObjects />
<%
PortletPreferences prefs = renderRequest.getPreferences();
String greeting = (String)prefs.getValue(
"greeting", "Hello! Welcome to our portal.");
%>
<p><%= greeting %></p>
<portlet:renderURL var="editGreetingURL">
<portlet:param name="mvcPath" value="/html/mygreeting/edit.jsp" />
</portlet:renderURL>
<p><a href="<%= editGreetingURL %>">Edit greeting</a></p>
