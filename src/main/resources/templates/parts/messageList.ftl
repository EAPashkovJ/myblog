<#include "security.ftl">
<#--card-columns-->
<div class="card-columns">
<#--    <div class="h-auto p-3">-->
    <#list messages as message>
        <div class="card-header">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br/>
                <i>#${message.tag}</i>
            </div>
<#--            card-footer text-muted-->
            <div class="card-body">
                <a href="/user-messages/${message.author.id}?">${message.authorName}</a>
                <#if message.author.id == currentUserId>
                    <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                        Edit
                    </a>
                    <a class="btn btn-warning" href="/del-user-messages/${message.author.id}?message=${message.id}">Delete</a>
                <#else>-1
                </#if>
            </div>
<#--            </div>-->
    <#else>
        No message
    </#list>

</div>
</div>