<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ page import="javax.portlet.PortletPreferences" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<portlet:defineObjects />
<%
PortletPreferences prefs = renderRequest.getPreferences();
String greeting = renderRequest.getParameter("greeting");
if (greeting != null) {
prefs.setValue("greeting", greeting);
prefs.store();
%>
<p>Greeting saved successfully!</p>
<%
}
%>
<%
greeting = (String)prefs.getValue(
"greeting", "Hello! Welcome to our portal.");
%>
<%-- <portlet:renderURL var="editGreetingURL">
<portlet:param name="mvcPath" value="/html/mygreeting/edit.jsp" />
</portlet:renderURL> --%>
12SVNのアクセス権は明日中嶋さんに依頼お願いします。哈哈
<portlet:actionURL var="editGreetingURL">
<portlet:param name="mvcPath" value="/html/mygreeting/edit.jsp" />
</portlet:actionURL>
<aui:form action="<%= editGreetingURL %>" method="post">
<aui:input name="greeting" type="text" value="<%=greeting %>" />
<aui:button type="submit" />
</aui:form>
<portlet:renderURL var="viewGreetingURL">
<portlet:param name="mvcPath" value="/html/mygreeting/view.jsp" />
</portlet:renderURL>
<p><a href="<%= viewGreetingURL %>">&larr; Back</a></p>