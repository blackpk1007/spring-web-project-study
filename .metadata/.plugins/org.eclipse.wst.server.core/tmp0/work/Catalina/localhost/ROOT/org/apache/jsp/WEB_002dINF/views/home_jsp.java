/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.58
 * Generated at: 2021-03-18 10:24:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("jar:file:/C:/Spring/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Mypage/WEB-INF/lib/spring-security-taglibs-5.0.6.RELEASE.jar!/META-INF/security.tld", Long.valueOf(1528824936000L));
    _jspx_dependants.put("jar:file:/C:/Spring/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Mypage/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/spring-security-taglibs-5.0.6.RELEASE.jar", Long.valueOf(1615985119421L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1615985128205L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<style type=\"text/css\">\n");
      out.write("html{\n");
      out.write("\twidth: 99%; \n");
      out.write("\theight: 98%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body{\n");
      out.write("\twidth: 100%; \n");
      out.write("\theight: 100%;\n");
      out.write("}\n");
      out.write("div.background{\n");
      out.write("\twidth: 100%; \n");
      out.write("\theight: 100%;\n");
      out.write("}\n");
      out.write("div.top-center{\n");
      out.write("\tmargin-left:100px;\n");
      out.write("\tmargin-right:100px;\n");
      out.write("\tmargin-bottom:100px;\n");
      out.write("\tmargin-top:50px;\n");
      out.write("}\n");
      out.write("h1.top-center{\n");
      out.write("\ttext-decoration:none;\n");
      out.write("\tcolor:#000000;\n");
      out.write("\tfont-size:300%;\n");
      out.write("\tfont-family: monospace;\n");
      out.write("\tfont-weight: 900;\n");
      out.write("}\n");
      out.write("ul.top-right{\n");
      out.write("\tlist-style-type:none;\n");
      out.write("\ttext-align: right;\n");
      out.write("}\n");
      out.write("li.top-right{\n");
      out.write("\tdisplay:inline;\n");
      out.write("\tmargin-left:20px;\n");
      out.write("\tpadding:0px;\n");
      out.write("}\n");
      out.write("a.top-right{\n");
      out.write("\ttext-decoration:none;\n");
      out.write("\tcolor:#000000;\n");
      out.write("\tfont-size:100%;\n");
      out.write("\tfont-family: monospace;\n");
      out.write("\tfont-weight: 700;\n");
      out.write("}\n");
      out.write("\n");
      out.write("h1{\n");
      out.write("\ttext-align:center;\n");
      out.write("\tfont-family: courier;\n");
      out.write("}\n");
      out.write("ul.middle-center{\n");
      out.write("\tlist-style-type:none;\n");
      out.write("\ttext-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li.middle-center{\n");
      out.write("\tmargin-left:50px;\n");
      out.write("\tmargin-right:50px;\n");
      out.write("\tdisplay:inline;\n");
      out.write("\tpadding:0px;\n");
      out.write("}\n");
      out.write("a.middle-center{\n");
      out.write("\ttext-decoration:none;\n");
      out.write("\tcolor:#000000;\n");
      out.write("\tfont-size:150%;\n");
      out.write("\tfont-family: monospace;\n");
      out.write("\tfont-weight: 900;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>Home</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"background\" class=\"background\">\n");
      out.write("\t<div>\n");
      out.write("\t\t<ul class=\"top-right\">\n");
      out.write("\t\t\t<li class=\"top-right\"><a href=\"\" class=\"top-right\">login</a></li>\n");
      out.write("\t\t\t<li class=\"top-right\"><a href=\"\" class=\"top-right\">review</a></li>\n");
      out.write("\t\t\t<li></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t<div class=\"top-center\">\n");
      out.write("\t\t<h1 class=\"top-center\">\n");
      out.write("\t\t\tRag Mall  \n");
      out.write("\t\t</h1>\n");
      out.write("\t</div>\n");
      out.write("\t<div>\n");
      out.write("\t\t<ul class=\"middle-center\">\n");
      out.write("\t\t\t<li class=\"middle-center\"><a href=\"\" class=\"middle-center\">top</a></li>\n");
      out.write("\t\t\t<li class=\"middle-center\"><a href=\"\" class=\"middle-center\">pants</a></li>\n");
      out.write("\t\t\t<li class=\"middle-center\"><a href=\"\" class=\"middle-center\">shoes</a></li>\n");
      out.write("\t\t\t<li class=\"middle-center\"><a href=\"\" class=\"middle-center\">hat</a></li>\n");
      out.write("\t\t\t<li class=\"middle-center\"><a href=\"\" class=\"middle-center\">acc</a></li>\t\t\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("   ");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}