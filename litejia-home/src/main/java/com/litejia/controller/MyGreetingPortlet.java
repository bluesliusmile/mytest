package com.litejia.controller;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.PortletPreferences;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class MyGreetingPortlet
 */
public class MyGreetingPortlet extends MVCPortlet {
 
	@Override
	public void doView(RenderRequest renderRequest, RenderResponse renderResponse)
			throws IOException, PortletException {
		super.doView(renderRequest, renderResponse);
	}
	@Override
	public void processAction(
		ActionRequest actionRequest, ActionResponse actionResponse)
		throws IOException, PortletException {
		PortletPreferences prefs = actionRequest.getPreferences();
		String greeting = actionRequest.getParameter("greeting");
		if (greeting != null) {
			prefs.setValue("greeting", greeting);
			prefs.store();
		}
		super.processAction(actionRequest, actionResponse);
	}
}
