.class public Lcn/sharesdk/tencent/qq/d;
.super Lcn/sharesdk/framework/authorize/e;
.source "QQSSOProcessor.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/d;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/e;-><init>(Lcn/sharesdk/framework/authorize/d;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 162
    new-instance v0, Lcn/sharesdk/tencent/qq/a;

    invoke-direct {v0}, Lcn/sharesdk/tencent/qq/a;-><init>()V

    .line 163
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qq/a;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    .line 164
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/d;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/tencent/qq/a;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 35
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/d;->f:Ljava/lang/String;

    const-string v1, "com.tencent.qqlite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/d;->f:Ljava/lang/String;

    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/d;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 64
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/d;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 65
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcn/sharesdk/tencent/qq/d;->b()V

    :cond_1
    return-void

    .line 72
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/d;->e:Ljava/lang/String;

    const-string v3, "scope"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/d;->d:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pf"

    const-string v3, "openmobile_android"

    .line 75
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "need_pay"

    const-string v3, "1"

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_params"

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 78
    iget v1, p0, Lcn/sharesdk/tencent/qq/d;->b:I

    const-string v2, "key_request_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key_action"

    const-string v2, "action_login"

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/d;->a:Lcn/sharesdk/framework/authorize/d;

    iget v2, p0, Lcn/sharesdk/tencent/qq/d;->b:I

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/authorize/d;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/d;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 85
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 36
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcn/sharesdk/tencent/qq/d;->b()V

    .line 38
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/d;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 8

    const-string p1, "access_token"

    const-string v0, "pfkey"

    const-string v1, "expires_in"

    const-string v2, "pf"

    const-string v3, "pay_token"

    const-string v4, "ret"

    const-string v5, "msg"

    .line 93
    iget-object v6, p0, Lcn/sharesdk/tencent/qq/d;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v6}, Lcn/sharesdk/framework/authorize/d;->finish()V

    if-nez p2, :cond_1

    .line 95
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    :cond_0
    return-void

    :cond_1
    const-string p2, "response is empty"

    if-nez p3, :cond_3

    .line 102
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_2

    .line 103
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_2
    return-void

    .line 108
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_5

    .line 110
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_4

    .line 111
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    const-string v6, "key_response"

    .line 116
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 117
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_6

    .line 118
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_6
    return-void

    .line 123
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 124
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_8

    goto :goto_0

    .line 132
    :cond_8
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 134
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "open_id"

    const-string v3, "openid"

    .line 137
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p2, :cond_9

    .line 145
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    return-void

    .line 149
    :cond_9
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_a

    .line 150
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onComplete(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    .line 154
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p2, :cond_b

    .line 155
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p2, p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_b
    return-void

    .line 125
    :cond_c
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_d

    .line 126
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/d;->d:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcn/sharesdk/tencent/qq/d;->e:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcn/sharesdk/tencent/qq/d;->f:Ljava/lang/String;

    return-void
.end method
