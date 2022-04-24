<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="mb-3">ADD NEW USER</div>
    ${message!}
    <@l.login path="/registration" isRegisterForm=true />
</@c.page>