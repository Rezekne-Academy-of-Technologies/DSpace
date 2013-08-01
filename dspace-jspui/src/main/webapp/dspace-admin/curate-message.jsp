<%
    if (result != null)
    {
        String type   = result.getType();
        boolean isSuccess = result.isSuccess();
        String resultClass = (isSuccess ? "success" : "failure");
%>
    <div class="notice <%= resultClass %>">
      <h1 class="task-name">
        <fmt:message key="jsp.dspace-admin.curate.task.name">
          <fmt:param value="<%= result.getTask() %>"/>
        </fmt:message>
      </h1>
<%
        if ("perform".equals(type))
        {
            if (isSuccess)
            {
%>
      <p class="task-result"><fmt:message key="jsp.dspace-admin.curate.perform.success"/></p>
      <div class="task-message">
        <fmt:message key="jsp.dspace-admin.curate.perform.message.success">
          <fmt:param value="<%= result.getStatus() %>"/>
          <fmt:param value="<%= result.getResult() %>"/>
        </fmt:message>
      </div>
<%
            }
            else
            {
%>
      <p class="task-result"><fmt:message key="jsp.dspace-admin.curate.perform.failure"/></p>
      <div class="task-message">
        <fmt:message key="jsp.dspace-admin.curate.perform.message.success">
          <fmt:param value="<%= result.getResult() %>"/>
        </fmt:message>
      </div>
<%
            }
        }
        else
        {
            if (isSuccess)
            {
%>
      <p class="task-result"><fmt:message key="jsp.dspace-admin.curate.queue.success"/></p>
      <div class="task-message">
        <fmt:message key="jsp.dspace-admin.curate.queue.message.success">
          <fmt:param value="<%= result.getHandle() %>"/>
          <fmt:param value="<%= TASK_QUEUE_NAME %>"/>
        </fmt:message>
      </div>
<%
            }
            else
            {
%>
      <p class="task-result"><fmt:message key="jsp.dspace-admin.curate.queue.failure"/></p>
      <div class="task-message">
        <fmt:message key="jsp.dspace-admin.curate.queue.message.failure">
          <fmt:param value="<%= result.getHandle() %>"/>
          <fmt:param value="<%= TASK_QUEUE_NAME %>"/>
        </fmt:message>
      </div>
<%
            }
        }
%>
    </div>
<%
    }
%>
