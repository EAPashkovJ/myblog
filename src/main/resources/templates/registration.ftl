<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <h3 class="text-center">Registration form</h3>

<#--    <div class="col-md-2">ADD NEW USER</div>-->
    ${message!}
    <@l.login path="/registration" isRegisterForm=true />

    <#include "parts/footer.ftl">

</@c.page>