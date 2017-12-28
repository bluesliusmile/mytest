package com.litejia.controller;

import java.io.IOException;

import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import com.liferay.portal.kernel.util.Validator;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class HomePortlet
 */
public class HomePortlet extends MVCPortlet {

	@Override
	public void doView(RenderRequest renderRequest, RenderResponse renderResponse)
			throws IOException, PortletException {
		// サポート初始化
		String mvcPath = renderRequest.getParameter("mvcPath");
		if (Validator.isNull(mvcPath)) {
			mvcPath = (String) renderRequest.getAttribute("mvcPath");
			if ("/inquiry_complete.jsp".equals(mvcPath)) {
				super.include(mvcPath, renderRequest, renderResponse);
				return;
			}
		}
		if ("".equals(mvcPath) || mvcPath == null) {
			mvcPath = "/inquiry.jsp";
		}
		super.include(mvcPath, renderRequest, renderResponse);
	}
	
}
