<%@page session="false" 
            import="org.apache.sling.api.resource.ValueMap,
                    com.day.cq.wcm.api.WCMMode,
                    org.apache.commons.lang.StringUtils"
%><%@include file="/libs/foundation/global.jsp" %><%
%><div class="col<%=currentNode.getName()%>">
    
</div>
<script>
  require(['views/comment-component-view'], function(CommentComponentView) {
    new CommentComponentView({container:'.col<%=currentNode.getName()%>'});
  });
</script>