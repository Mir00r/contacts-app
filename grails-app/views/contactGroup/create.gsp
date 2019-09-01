<%--
  Created by IntelliJ IDEA.
  User: mir00r
  Date: 2019-09-01
  Time: 14:36
--%>

<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="contact.group" args="['Create']"/>
    </div>

    <div class="card-body">
        <g:form controller="contactGroup" action="save">
            <g:render template="form"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="login" value="${g.message(code: "save")}"/>
                <g:link controller="contactGroup" action="index" class="btn btn-primary"><g:message
                        code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>