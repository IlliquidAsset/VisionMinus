.class final Lcom/mob/MobSDK$2;
.super Ljava/lang/Object;
.source "MobSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobSDK;->getPrivacyPolicyAsync(ILjava/util/Locale;Lcom/mob/PrivacyPolicy$OnPolicyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/Locale;

.field final synthetic c:Lcom/mob/PrivacyPolicy$OnPolicyListener;


# direct methods
.method constructor <init>(ILjava/util/Locale;Lcom/mob/PrivacyPolicy$OnPolicyListener;)V
    .locals 0

    .line 587
    iput p1, p0, Lcom/mob/MobSDK$2;->a:I

    iput-object p2, p0, Lcom/mob/MobSDK$2;->b:Ljava/util/Locale;

    iput-object p3, p0, Lcom/mob/MobSDK$2;->c:Lcom/mob/PrivacyPolicy$OnPolicyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 592
    :try_start_0
    iget v2, p0, Lcom/mob/MobSDK$2;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 595
    :cond_0
    new-instance v2, Lcom/mob/commons/h;

    invoke-direct {v2}, Lcom/mob/commons/h;-><init>()V

    iget-object v3, p0, Lcom/mob/MobSDK$2;->b:Ljava/util/Locale;

    invoke-virtual {v2, v0, v3}, Lcom/mob/commons/h;->a(ILjava/util/Locale;)Lcom/mob/PrivacyPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 597
    :try_start_1
    new-instance v2, Lcom/mob/MobSDK$2$1;

    invoke-direct {v2, p0, v0}, Lcom/mob/MobSDK$2$1;-><init>(Lcom/mob/MobSDK$2;Lcom/mob/PrivacyPolicy;)V

    invoke-static {v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 606
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 607
    iget-object v2, p0, Lcom/mob/MobSDK$2;->c:Lcom/mob/PrivacyPolicy$OnPolicyListener;

    invoke-interface {v2, v0}, Lcom/mob/PrivacyPolicy$OnPolicyListener;->onComplete(Lcom/mob/PrivacyPolicy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 611
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 612
    new-instance v2, Lcom/mob/MobSDK$2$2;

    invoke-direct {v2, p0, v0}, Lcom/mob/MobSDK$2$2;-><init>(Lcom/mob/MobSDK$2;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    .line 621
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 622
    iget-object v1, p0, Lcom/mob/MobSDK$2;->c:Lcom/mob/PrivacyPolicy$OnPolicyListener;

    invoke-interface {v1, v0}, Lcom/mob/PrivacyPolicy$OnPolicyListener;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
