.class public Lcn/sharesdk/tencent/qq/ReceiveActivity;
.super Landroid/app/Activity;
.source "ReceiveActivity.java"


# static fields
.field private static listener:Lcn/sharesdk/framework/PlatformActionListener;

.field private static uriScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 24
    sput-object p0, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method public static setUriScheme(Ljava/lang/String;)V
    .locals 0

    .line 20
    sput-object p0, Lcn/sharesdk/tencent/qq/ReceiveActivity;->uriScheme:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x9

    const/4 v0, 0x0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/ReceiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/ReceiveActivity;->finish()V

    if-eqz v2, :cond_4

    .line 33
    sget-object v3, Lcn/sharesdk/tencent/qq/ReceiveActivity;->uriScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    .line 36
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "shareToQQ"

    .line 37
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "shareToQzone"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const-string v3, "complete"

    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "response"

    if-eqz v3, :cond_1

    .line 39
    :try_start_1
    sget-object v2, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_3

    .line 40
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 42
    sget-object v2, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v2, v0, p1, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_0

    :cond_1
    const-string v3, "error"

    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    sget-object v2, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_3

    .line 46
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, v0, p1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 51
    :cond_2
    sget-object v1, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_3

    .line 52
    sget-object v1, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, v0, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 57
    :cond_3
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_4

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    const-class v2, Lcom/mob/tools/MobUIShell;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v1}, Lcn/sharesdk/tencent/qq/ReceiveActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 65
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 66
    sget-object v2, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_4

    .line 67
    invoke-interface {v2, v0, p1, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method
