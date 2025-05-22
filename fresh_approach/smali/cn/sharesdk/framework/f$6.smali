.class Lcn/sharesdk/framework/f$6;
.super Ljava/lang/Thread;
.source "PlatformImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/f;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/framework/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/f;[Ljava/lang/String;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcn/sharesdk/framework/f$6;->b:Lcn/sharesdk/framework/f;

    iput-object p2, p0, Lcn/sharesdk/framework/f$6;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 383
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/c;->a()Lcn/sharesdk/framework/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/c;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcn/sharesdk/framework/f$6;->b:Lcn/sharesdk/framework/f;

    iget-object v2, p0, Lcn/sharesdk/framework/f$6;->b:Lcn/sharesdk/framework/f;

    invoke-static {v2}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V

    goto :goto_0

    .line 385
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    iget-object v0, p0, Lcn/sharesdk/framework/f$6;->b:Lcn/sharesdk/framework/f;

    iget-object v2, p0, Lcn/sharesdk/framework/f$6;->b:Lcn/sharesdk/framework/f;

    invoke-static {v2}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V

    goto :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/f$6;->b:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/f$6;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->doAuthorize([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 391
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
