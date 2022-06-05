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
<#--<nav>-->
<#--    <header>-->
<#--        <div class="px-3 py-2 bg-dark text-white">-->
<#--            <div class="container">-->
<#--                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">-->
<#--                    <a href="/" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">-->
<#--                        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>-->
<#--                    </a>-->

<#--                    <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">-->
<#--                        <li>-->
<#--                                    <a href="/" class="nav-link text-secondary">-->
<#--                                        <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#arrow"></use></svg>-->
<#--                                        My blog-->
<#--                                    </a>-->
<#--                        </li>-->
<#--                        <#if user??>-->
<#--                                    <li>-->
<#--                                        <a href="/main" class="nav-link text-white">-->
<#--                                            <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#speedometer2"></use></svg>-->
<#--                                            Message-->
<#--                                        </a>-->
<#--                                    </li>-->
<#--                                    <li>-->
<#--                                        <a href="/user-messages/${currentUserId}" class="nav-link text-white">-->
<#--                                            <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#table"></use></svg>-->
<#--                                            My Messages-->
<#--                                        </a>-->
<#--                                    </li>-->
<#--                        </#if>-->
<#--                        <#if isAdmin>-->
<#--                        <li>-->
<#--                                        <a href="/user" class="nav-link text-white">-->
<#--                                            <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#grid"></use></svg>-->
<#--                                           Users list-->
<#--                                        </a>-->
<#--                        </li>-->
<#--                        </#if>-->
<#--                        <#if user??>-->
<#--                        <li>-->
<#--                            <a href="/user/profile" class="nav-link text-white">-->
<#--                                <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#people-circle"></use></svg>-->
<#--                                Profile-->
<#--                            </a>-->
<#--                        </li>-->

<#--                    </ul>-->
<#--                    </#if>-->
<#--                    <#if Session??>-->
<#--                        <div class="navbar-text btn-sm">${name}</div>-->
<#--                        <@l.logout />-->
<#--                    </#if>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--&lt;#&ndash;        <div class="px-3 py-2 border-bottom mb-3">&ndash;&gt;-->
<#--&lt;#&ndash;            <div class="container d-flex flex-wrap justify-content-center">&ndash;&gt;-->
<#--&lt;#&ndash;                <form class="col-12 col-lg-auto mb-2 mb-lg-0 me-lg-auto">&ndash;&gt;-->
<#--&lt;#&ndash;                    <input type="search" class="form-control" placeholder="Search..." aria-label="Search">&ndash;&gt;-->
<#--&lt;#&ndash;                </form>&ndash;&gt;-->

<#--            </div>-->
<#--        </div>-->
<#--    </header>-->
<#--</nav>-->
