<%@ taglib uri="/struts-tags" prefix="s" %>
from value stack : <s:property value="t" /><br />
from action context : <s:property value="#parameters.t" />
<s:debug></s:debug>