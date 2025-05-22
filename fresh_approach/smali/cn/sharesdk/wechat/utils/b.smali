.class public Lcn/sharesdk/wechat/utils/b;
.super Lcn/sharesdk/wechat/utils/WechatResp;
.source "AuthResp.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/sharesdk/wechat/utils/WechatResp;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/WechatResp;->a(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_sendauth_resp_token"

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/b;->a:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_resp_state"

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/b;->b:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_resp_url"

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/b;->c:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_resp_lang"

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/b;->d:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_resp_country"

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/b;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/WechatResp;->b(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/b;->a:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_resp_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/b;->b:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_resp_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/b;->c:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_resp_url"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/b;->d:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_resp_lang"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/b;->e:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_resp_country"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
