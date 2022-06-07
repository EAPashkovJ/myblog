<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">My Blog</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
<#--                       01/06/22                     Delete in refactoring-->
<#--            <li class="nav-item">-->
<#--                <a class="nav-link" href="/">Home</a>-->
<#--            </li>-->
            <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/main">Messages</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/user-messages/${currentUserId}">My messages</a>
            </li>
            </#if>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">User list</a>
                </li>
            </#if>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/user/profile">Profile</a>
                </li>
            </#if>
        </ul>
        <#if Session??>
        <div class="navbar-text btn-sm">${name}</div>
        <@l.logout />
        </#if>
    </div>
    </div>


</nav>
