.class public Lcn/sharesdk/loopshare/LoopShareActivity;
.super Landroid/app/Activity;
.source "LoopShareActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcn/sharesdk/loopshare/LoopShareActivity;->finish()V

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 20
    invoke-static {p1, p0}, Lcn/sharesdk/loopshare/MobLink;->updateNewIntent(Landroid/content/Intent;Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcn/sharesdk/loopshare/LoopShareActivity;->finish()V

    .line 28
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
