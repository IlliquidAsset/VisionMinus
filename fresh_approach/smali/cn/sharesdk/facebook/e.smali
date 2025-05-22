.class public Lcn/sharesdk/facebook/e;
.super Lcom/mob/tools/FakeActivity;
.source "InviteActivity.java"


# instance fields
.field private a:Lcn/sharesdk/framework/PlatformActionListener;

.field private b:Lcn/sharesdk/framework/Platform;

.field private c:Ljava/lang/String;

.field private d:Lcn/sharesdk/framework/Platform$ShareParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 6

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.facebook.katana"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    iget-object v2, p0, Lcn/sharesdk/facebook/e;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_link_url"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcn/sharesdk/facebook/e;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "preview_image_url"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const v3, 0x133c96b

    .line 66
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    const-string v4, "com.facebook.platform.action.request.APPINVITES_DIALOG"

    .line 67
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/facebook/e;->c:Ljava/lang/String;

    const-string v4, "com.facebook.platform.extra.APPLICATION_ID"

    .line 68
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "action_id"

    const-string v4, "cf61947c-a8fe-4fa3-aa7c-fbeb7f291352"

    .line 71
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcn/sharesdk/facebook/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v3

    const-string v5, "none"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "app_name"

    .line 75
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "com.facebook.platform.protocol.BRIDGE_ARGS"

    .line 77
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "com.facebook.platform.protocol.METHOD_ARGS"

    .line 78
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 27
    iput-object p2, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    .line 28
    iput-object p3, p0, Lcn/sharesdk/facebook/e;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/sharesdk/facebook/e;->c:Ljava/lang/String;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcn/sharesdk/facebook/e;->finish()V

    const/16 v0, 0x9

    if-eqz p3, :cond_7

    const-string p1, "com.facebook.platform.protocol.BRIDGE_ARGS"

    .line 85
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 87
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 88
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "error"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 93
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string p3, ""

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p1, "UserCanceled"

    .line 96
    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_2

    .line 97
    iget-object p1, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object p2, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {p1, p2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 99
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object p2, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    return-void

    :cond_4
    const-string p1, "com.facebook.platform.protocol.RESULT_ARGS"

    .line 105
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string p2, "didComplete"

    .line 107
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    :goto_1
    const-string p2, "completionGesture"

    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "cancel"

    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 111
    iget-object p1, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object p2, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {p1, p2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_9

    .line 114
    iget-object p1, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object p2, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_2

    :cond_7
    const p3, 0xface

    if-ne p1, p3, :cond_8

    if-nez p2, :cond_8

    .line 118
    iget-object p1, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object p2, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {p1, p2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_2

    .line 120
    :cond_8
    iget-object p1, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object p2, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    new-instance p3, Ljava/lang/Throwable;

    const-string v1, "share error!"

    invoke-direct {p3, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 36
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    .line 39
    :try_start_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/facebook/e;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    iget-object v1, p0, Lcn/sharesdk/facebook/e;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 47
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcn/sharesdk/facebook/e;->a()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcn/sharesdk/facebook/e;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcn/sharesdk/facebook/e;->a()Landroid/content/Intent;

    move-result-object v1

    const v2, 0xface

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 52
    invoke-virtual {p0}, Lcn/sharesdk/facebook/e;->finish()V

    .line 53
    iget-object v1, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method
