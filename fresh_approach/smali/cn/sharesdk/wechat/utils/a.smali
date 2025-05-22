.class public Lcn/sharesdk/wechat/utils/a;
.super Lcn/sharesdk/wechat/utils/l;
.source "AuthReq.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/os/Bundle;)V

    .line 23
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/a;->a:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_req_scope"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/a;->b:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_req_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)Z
    .locals 4

    .line 28
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/a;->a:Ljava/lang/String;

    const-string v0, "MicroMsg.SDK.SendAuth.Req"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/sharesdk/wechat/utils/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x400

    if-le p1, v3, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v3, :cond_1

    .line 33
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, state is invalid"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v2

    :cond_1
    return v1

    .line 29
    :cond_2
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, scope is invalid"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v2
.end method
