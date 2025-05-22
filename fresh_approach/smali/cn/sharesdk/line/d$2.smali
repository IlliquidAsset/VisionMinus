.class Lcn/sharesdk/line/d$2;
.super Ljava/lang/Thread;
.source "LineSSOProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/line/d;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/line/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/line/d;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcn/sharesdk/line/d$2;->a:Lcn/sharesdk/line/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 218
    :try_start_0
    invoke-static {}, Lcn/sharesdk/line/c;->a()Lcn/sharesdk/line/c;

    .line 228
    iget-object v0, p0, Lcn/sharesdk/line/d$2;->a:Lcn/sharesdk/line/d;

    invoke-static {v0}, Lcn/sharesdk/line/d;->a(Lcn/sharesdk/line/d;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize token is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 241
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 242
    iget-object v1, p0, Lcn/sharesdk/line/d$2;->a:Lcn/sharesdk/line/d;

    invoke-static {v1}, Lcn/sharesdk/line/d;->c(Lcn/sharesdk/line/d;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    return-void
.end method
