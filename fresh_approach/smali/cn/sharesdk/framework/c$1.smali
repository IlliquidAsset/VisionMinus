.class Lcn/sharesdk/framework/c$1;
.super Ljava/lang/Thread;
.source "ForbSwitchFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/c;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/sharesdk/framework/c$1;->a:Lcn/sharesdk/framework/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 29
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/c$1;->a:Lcn/sharesdk/framework/c;

    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/sharesdk/framework/c;->a(Lcn/sharesdk/framework/c;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 31
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
