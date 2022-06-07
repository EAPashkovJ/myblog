<#include "security.ftl">

<#list messages as message>
<div class="row">
    <div class="card w-75 " style="width: 18rem;">

        <#--        <div class="card text-left">-->
        <div class="card-header">
            <b>${message.tag}</b>
        </div>
        <div class="card-body">
            <span>${message.text}</span><br/>
            <#--            if file exist-->
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-bottom">
            </#if>
        </div>
        <#--            card-footer text-muted-->
        <div class="card">
            <a href="/user-messages/${message.author.id}?">${message.authorName}</a>
            <#if message.author.id == currentUserId>
                <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                    Edit
                </a>
                <a class="btn btn-warning"
                   href="/del-user-messages/${message.author.id}?message=${message.id}">Delete</a>
            <#else>-1
            </#if>
        </div>
        <#else>
            No message
        </#list>

    </div>
</div>

