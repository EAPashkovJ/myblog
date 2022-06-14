<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row ">
            <label class="col-sm-3 col-form-label"></label>
            <div class="col-md-6 col-md-offset-4">
                <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       placeholder="User name"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label"></label>
            <div class="col-md-6 col-md-offset-4">
                <input type="password" name="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       placeholder="Password"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-3 col-form-label"></label>
                <div class="col-md-6 col-md-offset-4">
                    <input type="password" name="password2"
                           class="form-control ${(password2Error??)?string('is-invalid', '')}"
                           placeholder="Retype password"/>
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-3 col-form-label"></label>
                <div class="col-md-6 col-md-offset-4">
                    <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                           class="form-control ${(emailError??)?string('is-invalid', '')}"
                           placeholder="some@some.com"/>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${emailError}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-3 col-form-label"></label>
                <div class="col-md-6 col-md-offset-4">
                    <div class="g-recaptcha" data-sitekey="6Lf5iJgfAAAAAJVevwe0Ff6P0b7yGtkgk4pqdaoW"></div>
                    <#if captchaError??>
                        <div class="alert alert-danger" role="alert">
                            ${captchaError}
                        </div>
                    </#if>
                </div>
            </div>
        </#if>

        <div class="d-grid gap-2 col-6 mx-auto">
            <label class="col-md-3 col-md-offset-4"></label>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="btn btn-outline-info btn-lg"
                    type="submit">
                <#if isRegisterForm>
                    Create
                <#else>
                    Sign In
                </#if>
            </button>


<#--            <div class="col-md-3 col-md-offset-4">-->
<#--                <input type="hidden" name="_csrf" value="${_csrf.token}"/>-->
<#--                <#if !isRegisterForm>-->
<#--                    <a class="btn btn-outline-primary" role="buttom" href="/registration">Add new user</a>-->
<#--                </#if>-->
<#--            </div>-->
        </div>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-outline-success" type="submit">Sign Out</button>
    </form>
</#macro>