.class public Lcn/sharesdk/tencent/qzone/c;
.super Lcn/sharesdk/framework/authorize/e;
.source "QZoneSSOProcessor.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/d;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/e;-><init>(Lcn/sharesdk/framework/authorize/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "com.tencent.mobileqq"

    .line 30
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/c;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 40
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/c;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 41
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Lcn/sharesdk/tencent/qzone/TencentSSOClientNotInstalledException;

    invoke-direct {v1}, Lcn/sharesdk/tencent/qzone/TencentSSOClientNotInstalledException;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 47
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.tencent.open.agent.AgentActivity"

    .line 48
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/c;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 51
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/c;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 52
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Lcn/sharesdk/tencent/qzone/TencentSSOClientNotInstalledException;

    invoke-direct {v1}, Lcn/sharesdk/tencent/qzone/TencentSSOClientNotInstalledException;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_2
    return-void

    .line 58
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/c;->e:Ljava/lang/String;

    const-string v3, "scope"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/c;->d:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pf"

    const-string v3, "openmobile_android"

    .line 61
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "need_pay"

    const-string v3, "1"

    .line 62
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_params"

    .line 63
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 64
    iget v0, p0, Lcn/sharesdk/tencent/qzone/c;->b:I

    const-string v2, "key_request_code"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "key_action"

    const-string v2, "action_login"

    .line 65
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/c;->a:Lcn/sharesdk/framework/authorize/d;

    iget v2, p0, Lcn/sharesdk/tencent/qzone/c;->b:I

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/authorize/d;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 70
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/c;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 71
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_4

    .line 72
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :catchall_1
    nop

    .line 32
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/c;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 33
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_5

    .line 34
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Lcn/sharesdk/tencent/qzone/TencentSSOClientNotInstalledException;

    invoke-direct {v1}, Lcn/sharesdk/tencent/qzone/TencentSSOClientNotInstalledException;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 8

    const-string p1, "access_token"

    const-string v0, "msg"

    const-string v1, "pfkey"

    const-string v2, "expires_in"

    const-string v3, "pf"

    const-string v4, "pay_token"

    const-string v5, "ret"

    .line 79
    iget-object v6, p0, Lcn/sharesdk/tencent/qzone/c;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v6}, Lcn/sharesdk/framework/authorize/d;->finish()V

    if-nez p2, :cond_1

    .line 81
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    :cond_0
    return-void

    :cond_1
    const-string p2, "response is empty"

    if-nez p3, :cond_3

    .line 88
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_2

    .line 89
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_2
    return-void

    .line 94
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_5

    .line 96
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_4

    .line 97
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    const-string v6, "key_response"

    .line 102
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 103
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_6

    .line 104
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_6
    return-void

    .line 109
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 110
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_8

    goto :goto_0

    .line 118
    :cond_8
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 120
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "open_id"

    const-string v4, "openid"

    .line 123
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_9

    .line 130
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 133
    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p2, :cond_a

    .line 134
    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p2, p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_a
    return-void

    .line 111
    :cond_b
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_c

    .line 112
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/c;->d:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcn/sharesdk/tencent/qzone/c;->e:Ljava/lang/String;

    return-void
.end method
