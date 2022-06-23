<#include "security.ftl">


<#list messages as message>

<#--    <div class="card mb-3">-->
<#--        <div class="card-body">-->
<#--            <h5 class="card-title"><i>${message.tag}</i></h5>-->
<#--            <p class="card-text"><span>${message.text}</span><br/></p>-->
<#--        </div>-->
<#--        <#if message.filename??>-->
<#--            <img src="/img/${message.filename}" class="rounded float-top" alt="Card image cap">-->
<#--        </#if>-->
<#--        <a href="/user-messages/${message.author.id}">${message.authorName}</a>-->
<#--        <#if message.author.id == currentUserId>-->
<#--            <div class="btn-group" role="group" aria-label="l">-->
<#--                <a class="btn btn-outline-info btn-block"-->
<#--                   href="/user-messages/${message.author.id}?message=${message.id}">-->
<#--                    Edit-->
<#--                </a>-->
<#--                <a class="btn btn-outline-info btn-block"-->
<#--                   href="/del-user-messages/${message.author.id}?message=${message.id}">-->
<#--                    Delete-->
<#--                </a>-->
<#--            </div>-->
<#--        </#if>-->

<#--    </div>-->

<#--<#else>-->
<#--    No message-->

    <div class="jumbotron">
        <h1 class="display-3">${message.tag}</h1>
        <p class="lead">

        </p>
        <hr class="my-2">
        <p>${message.text}</p>
        <p class="lead">
            <a class="btn btn-primary btn-lg" href="/" role="button">Some action</a>
        </p>
        <#if message.author.id == currentUserId>
        <div class="float-lg-left">
            <div class="btn-group" role="group" aria-label="l">
                <a class="btn btn-outline-info"
                   href="/user-messages/${message.author.id}?message=${message.id}">
                    Edit
                </a>
                <a class="btn btn-outline-info "
                   href="/del-user-messages/${message.author.id}?message=${message.id}">
                    Delete
                </a>

            </div>
        </div>

        </#if>

    </div>


<#else>
    No message
    </div>
</#list>

