<%@page session="false"%>
<%@include file="/libs/foundation/global.jsp" %>
<%@page import="javax.jcr.Node" %>
<%@page import="javax.jcr.Property" %>
<%@page import="org.apache.sling.api.resource.Resource" %>
<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling/1.0"%>
<%@taglib prefix="webresource" uri="http://sling.apache.org/taglibs/sling/webresource/1.0.0"%>
<cq:defineObjects/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Chaplin Boilerplate Application</title>
  <style>body { font-family: sans-serif; }</style>
  <link rel="stylesheet" type="text/css" href="/etc/designs/chaplin/global/base/css/bootstrap.css"></link>
  <link rel="stylesheet" type="text/css" href="/etc/designs/chaplin/global/base/css/responsive.css"></link>
  <link rel="stylesheet" type="text/css" href="/etc/designs/chaplin/global/base/css/app.css"></link>
  <cq:include script="/libs/wcm/core/components/init/init.jsp"/>
  <script src="/etc/designs/chaplin/global/base/js/vendor/requirejs/require.js"></script>
  <script src="/etc/designs/chaplin/global/base/js/vendor/bootstrap/js/bootstrap.js"></script>
  <script>
  // Configure the AMD module loader
  requirejs.config({
    // The path where your JavaScripts are located
    baseUrl: '/etc/designs/chaplin/global/base/js/',
    // Specify the paths of vendor libraries
    paths: {
      jquery: 'vendor/jquery/jquery',
      underscore: 'vendor/lodash/dist/lodash',
      backbone: 'vendor/backbone/backbone',
      handlebars: 'vendor/handlebars/handlebars',
      text: 'vendor/requirejs-text/text',
      chaplin: 'vendor/chaplin/chaplin'
    },
    // Underscore and Backbone are not AMD-capable per default,
    // so we need to use the AMD wrapping of RequireJS
    shim: {
      underscore: {
        exports: '_'
      },
      backbone: {
        deps: ['underscore', 'jquery'],
        exports: 'Backbone'
      },
      handlebars: {
        exports: 'Handlebars'
      }
    }
    // For easier development, disable browser caching
    // Of course, this should be removed in a production environment
    //, urlArgs: 'bust=' +  (new Date()).getTime()
  });

  // Bootstrap the application
  require(['application', 'routes'], function(Application, routes) {
    new Application({routes: routes, controllerSuffix: '-controller',pushState: false, root: '<%=currentPage.getPath()%>'});
  });
  </script>
</head>
<body>
    <cq:includeClientLib categories="cq.foundation-main"/>
    <div id="main-page" class="row-fluid"></div>
    <div class="row-fluid">
        <cq:include path="par" resourceType="foundation/components/parsys"/>
    </div>
</body>
</html>
