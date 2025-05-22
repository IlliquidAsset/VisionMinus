.class public Lcn/sharesdk/line/d;
.super Lcn/sharesdk/framework/authorize/e;
.source "LineSSOProcessor.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/d;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/e;-><init>(Lcn/sharesdk/framework/authorize/d;)V

    return-void
.end method

.method private a(Lcn/sharesdk/line/utils/LineAuthenticationConfig;Ljava/lang/String;Lcn/sharesdk/line/utils/LineAuthenticationParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "response_type"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "code"

    const/4 v2, 0x1

    aput-object v0, p1, v2

    const-string v0, "client_id"

    const/4 v3, 0x2

    aput-object v0, p1, v3

    .line 125
    iget-object v0, p0, Lcn/sharesdk/line/d;->d:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v0, p1, v4

    const-string v0, "state"

    const/4 v5, 0x4

    aput-object v0, p1, v5

    const/4 v0, 0x5

    aput-object p4, p1, v0

    const/4 p4, 0x6

    const-string v0, "otpId"

    aput-object v0, p1, p4

    const/4 p4, 0x7

    aput-object p2, p1, p4

    const/16 p2, 0x8

    const-string p4, "redirect_uri"

    aput-object p4, p1, p2

    const/16 p2, 0x9

    aput-object p6, p1, p2

    const/16 p2, 0xa

    const-string p4, "sdk_ver"

    aput-object p4, p1, p2

    const/16 p2, 0xb

    const-string p4, "5.0.0"

    aput-object p4, p1, p2

    const/16 p2, 0xc

    const-string p4, "scope"

    aput-object p4, p1, p2

    .line 132
    invoke-virtual {p3}, Lcn/sharesdk/line/utils/LineAuthenticationParams;->a()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcn/sharesdk/line/utils/e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xd

    aput-object p2, p1, p3

    .line 125
    invoke-static {p1}, Lcn/sharesdk/line/utils/g;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 135
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "nonce"

    if-nez p2, :cond_0

    .line 136
    invoke-interface {p1, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 140
    invoke-interface {p1, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p2, "/oauth2/v2.1/authorize/consent"

    .line 143
    invoke-static {p2, p1}, Lcn/sharesdk/line/utils/g;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/String;

    const-string p3, "returnUri"

    aput-object p3, p2, v1

    aput-object p1, p2, v2

    const-string p1, "loginChannelId"

    aput-object p1, p2, v3

    .line 146
    iget-object p1, p0, Lcn/sharesdk/line/d;->d:Ljava/lang/String;

    aput-object p1, p2, v4

    invoke-static {p2}, Lcn/sharesdk/line/utils/g;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "https://access.line.me/oauth2/v2.1/login"

    .line 150
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2, p1}, Lcn/sharesdk/line/utils/g;->a(Landroid/net/Uri;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcn/sharesdk/line/d;)Lcn/sharesdk/framework/authorize/SSOListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/sharesdk/line/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object p0
.end method

.method private a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .locals 0

    .line 215
    new-instance p1, Lcn/sharesdk/line/d$2;

    invoke-direct {p1, p0}, Lcn/sharesdk/line/d$2;-><init>(Lcn/sharesdk/line/d;)V

    .line 245
    invoke-virtual {p1}, Lcn/sharesdk/line/d$2;->start()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/line/d;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/sharesdk/line/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    new-instance v0, Lcn/sharesdk/line/d$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/line/d$1;-><init>(Lcn/sharesdk/line/d;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcn/sharesdk/line/d$1;->start()V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/line/d;)Lcn/sharesdk/framework/authorize/SSOListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/sharesdk/line/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object p0
.end method

.method private b()Lcn/sharesdk/line/utils/LineAuthenticationParams;
    .locals 2

    .line 156
    new-instance v0, Lcn/sharesdk/line/utils/LineAuthenticationParams$b;

    invoke-direct {v0}, Lcn/sharesdk/line/utils/LineAuthenticationParams$b;-><init>()V

    .line 157
    invoke-direct {p0}, Lcn/sharesdk/line/d;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/line/utils/LineAuthenticationParams$b;->a(Ljava/util/List;)Lcn/sharesdk/line/utils/LineAuthenticationParams$b;

    move-result-object v0

    .line 158
    invoke-direct {p0}, Lcn/sharesdk/line/d;->e()Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/line/utils/LineAuthenticationParams$b;->a(Lcn/sharesdk/line/utils/LineAuthenticationParams$a;)Lcn/sharesdk/line/utils/LineAuthenticationParams$b;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcn/sharesdk/line/utils/LineAuthenticationParams$b;->a()Lcn/sharesdk/line/utils/LineAuthenticationParams;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    const/16 v0, 0x8

    .line 99
    invoke-static {v0}, Lcn/sharesdk/line/utils/f;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-static {v0}, Lcn/sharesdk/line/utils/f;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcn/sharesdk/line/d;->c()Lcn/sharesdk/line/utils/LineAuthenticationConfig;

    move-result-object v2

    .line 106
    invoke-direct {p0}, Lcn/sharesdk/line/d;->b()Lcn/sharesdk/line/utils/LineAuthenticationParams;

    move-result-object v4

    iget-object v7, p0, Lcn/sharesdk/line/d;->e:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    .line 105
    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/line/d;->a(Lcn/sharesdk/line/utils/LineAuthenticationConfig;Ljava/lang/String;Lcn/sharesdk/line/utils/LineAuthenticationParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "jp.naver.line.android"

    .line 108
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object p1, p0, Lcn/sharesdk/line/d;->a:Lcn/sharesdk/framework/authorize/d;

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/authorize/d;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 4

    if-eqz p1, :cond_4

    .line 180
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 185
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 186
    iget-object v0, p0, Lcn/sharesdk/line/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 187
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :try_start_0
    const-string v2, "status"

    .line 190
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "requestToken"

    .line 197
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcn/sharesdk/line/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/line/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    goto :goto_0

    .line 200
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/line/d;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/d;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object p1

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcn/sharesdk/line/d;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 192
    iget-object v0, p0, Lcn/sharesdk/line/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 193
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcn/sharesdk/line/d;)Lcn/sharesdk/framework/authorize/SSOListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/sharesdk/line/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object p0
.end method

.method private c()Lcn/sharesdk/line/utils/LineAuthenticationConfig;
    .locals 2

    .line 163
    iget-object v0, p0, Lcn/sharesdk/line/d;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/sharesdk/line/utils/b;->a(Ljava/lang/String;Z)Lcn/sharesdk/line/utils/LineAuthenticationConfig;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/sharesdk/line/utils/e;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    sget-object v1, Lcn/sharesdk/line/utils/e;->a:Lcn/sharesdk/line/utils/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v1, Lcn/sharesdk/line/utils/e;->e:Lcn/sharesdk/line/utils/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private e()Lcn/sharesdk/line/utils/LineAuthenticationParams$a;
    .locals 1

    .line 176
    sget-object v0, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;->a:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcn/sharesdk/line/d;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/line/d;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcn/sharesdk/line/d;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/line/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcn/sharesdk/line/d;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    return-void

    .line 86
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/line/d;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/sharesdk/line/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/line/d;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 88
    :try_start_1
    iget-object v1, p0, Lcn/sharesdk/line/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcn/sharesdk/line/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 91
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 93
    iget-object v1, p0, Lcn/sharesdk/line/d;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/d;->finish()V

    throw v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/e;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/sharesdk/line/d;->d:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcn/sharesdk/line/d;->e:Ljava/lang/String;

    return-void
.end method
