<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<#----------------------Main page ----------------------------------------------------->

    <div class="bg-text">
    <h1>Welcome!</h1> <br>
    <p class="positioned" style="font-size: 14pt">
        This web application show my development skills. You can leave feedback and wishes in Message blog.
    </p>

    <#if !Session.SPRING_SECURITY_CONTEXT??>
        <div class="d-grid gap-2 col-6 mx-auto">
            <a class="btn btn-outline-info btn-lg" href="/registration">
                Registration
            </a>
            <a class="btn btn-outline-info btn-lg" href="/login">
                Login
            </a>
        </div>

    <#else>
    </#if>


</@c.page>