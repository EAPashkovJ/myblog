<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <h3 class="text-center">Registration form</h3>

    ${message!}
    <@l.login path="/registration" isRegisterForm=true />

    <#include "parts/footer.ftl">

</@c.page>