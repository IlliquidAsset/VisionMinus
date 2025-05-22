.class public Lcn/sharesdk/wechat/utils/WechatHandlerActivity;
.super Landroid/app/Activity;
.source "WechatHandlerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x103000f

    .line 30
    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->setTheme(I)V

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    :try_start_0
    invoke-static {}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/wechat/utils/k;

    move-result-object p1

    .line 34
    invoke-virtual {p1, p0}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 36
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->finish()V

    return-void
.end method

.method public onGetMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .locals 0

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0, p1}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->setIntent(Landroid/content/Intent;)V

    .line 45
    :try_start_0
    invoke-static {}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/wechat/utils/k;

    move-result-object p1

    .line 46
    invoke-virtual {p1, p0}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 48
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->finish()V

    return-void
.end method

.method public onShowMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .locals 0

    return-void
.end method
