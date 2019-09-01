<%--
  Created by IntelliJ IDEA.
  User: mir00r
  Date: 2019-09-01
  Time: 16:15
--%>

<g:each in="${contactDetails}" var="details">
    <g:render template="form" model="[details: details]"/>
</g:each>
<g:render template="form"/>