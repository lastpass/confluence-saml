<%--
  -- saml_login - redirection to idp
  --
  -- Licensed under the Apache License, Version 2.0 (the "License"); you may not
  -- use this file except in compliance with the License. You may obtain a copy
  -- of the License at
  --
  --     http://www.apache.org/licenses/LICENSE-2.0
  --
  -- Unless required by applicable law or agreed to in writing, software
  -- distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
  -- WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
  -- License for the specific language governing permissions and limitations
  -- under the License.
  --
  -- Copyright (c) 2015 LastPass, Inc.
  --
  --%>
<%@ page import="com.lastpass.confluence.SAMLAuthenticator" %>
<%
    // This page is accessed to initiate SAML login when getUser() in the
    // authenticator returns null and there is no SAMLResponse being processed.
    // Confluence will go here when we click on a login link (based on seraph config).
    //
    // We generate an authnrequest and then redirect to the IdP.
    try {
        String url = new SAMLAuthenticator().getRedirectUrl(request.getParameter("os_destination"));
        response.sendRedirect(response.encodeRedirectURL(url));
    } catch (Throwable t) {
        out.println("Could not initialize Confluence SAML plugin: " + t);
    }
%>
