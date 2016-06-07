package com.xiaochunjia.data.common;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class CountListener implements HttpSessionListener {

	public void sessionCreated(HttpSessionEvent arg0) {
		SessionUtils.sessionIn(arg0.getSession().hashCode());
	}

	public void sessionDestroyed(HttpSessionEvent arg0) {
		SessionUtils.sessionOut(arg0.getSession().hashCode());
	}
}
