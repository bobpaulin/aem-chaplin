<%@page session="false" 
            import="org.apache.sling.api.resource.ValueMap,
                    com.day.cq.wcm.api.WCMMode,
                    org.apache.commons.lang.StringUtils"
%><%@include file="/libs/foundation/global.jsp" %><%
%><div class="col2">
    
</div>
<div><%=currentNode.getIndex()%></div>
<script>
  require(['views/test-component-view'], function(TestComponentView) {
    new TestComponentView({container:'.col2'});
  });
</script>