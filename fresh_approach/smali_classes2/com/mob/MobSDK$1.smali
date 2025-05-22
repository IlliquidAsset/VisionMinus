.class final Lcom/mob/MobSDK$1;
.super Ljava/lang/Thread;
.source "MobSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobSDK;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 298
    :try_start_0
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->collect()V

    .line 301
    invoke-static {}, Lcom/mob/MobSDK;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/authorize/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 309
    invoke-static {v0}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    .line 311
    invoke-static {}, Lcom/mob/MobSDK;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 313
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
