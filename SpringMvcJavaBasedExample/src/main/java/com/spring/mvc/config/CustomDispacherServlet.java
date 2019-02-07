package com.spring.mvc.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;
/*load DispacherServlet and initialize 
InterResuorecViewResolver on app 
start upp (when loading on container)
*/

@Configuration
public class CustomDispacherServlet implements WebApplicationInitializer {

	public void onStartup(ServletContext servletContext) throws ServletException {
		System.out.println("************ Loading Dispatcher Servlet On startup *************");
		AnnotationConfigWebApplicationContext dispatcherServletContext = new AnnotationConfigWebApplicationContext();
		dispatcherServletContext.register(CustomDispatcherConfig.class);
//		dispatcherServletContext.register(WebMvcConfig.class);
		DispatcherServlet dispatcherServlet = new DispatcherServlet(dispatcherServletContext);

		// Create a servlet dynamically.
		ServletRegistration.Dynamic dispatcher = servletContext.addServlet("DispatcherServlet", dispatcherServlet);

		dispatcher.setLoadOnStartup(1);

		// Add servlet mapping url. All url end with ./ will be processed by
		// this servlet.
		dispatcher.addMapping("/");
	}

}
