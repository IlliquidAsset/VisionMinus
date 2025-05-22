.class public Lcn/sharesdk/line/LineHandlerActivity;
.super Landroid/app/Activity;
.source "LineHandlerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x103000f

    .line 17
    invoke-virtual {p0, v0}, Lcn/sharesdk/line/LineHandlerActivity;->setTheme(I)V

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    :try_start_0
    invoke-static {}, Lcn/sharesdk/line/c;->a()Lcn/sharesdk/line/c;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lcn/sharesdk/line/LineHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/line/LineHandlerActivity;Landroid/net/Uri;)V

    .line 25
    invoke-virtual {p0}, Lcn/sharesdk/line/LineHandlerActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 27
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method
