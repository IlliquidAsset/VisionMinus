.class Lcn/sharesdk/framework/f$4;
.super Ljava/lang/Thread;
.source "PlatformImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcn/sharesdk/framework/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/f;ILjava/lang/Object;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    iput p2, p0, Lcn/sharesdk/framework/f$4;->a:I

    iput-object p3, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 347
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/c;->a()Lcn/sharesdk/framework/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    iget-object v1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v1

    iget v2, p0, Lcn/sharesdk/framework/f$4;->a:I

    invoke-static {v0, v1, v2}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V

    goto :goto_0

    .line 349
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    iget-object v1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v1

    iget v2, p0, Lcn/sharesdk/framework/f$4;->a:I

    invoke-static {v0, v1, v2}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iget v1, p0, Lcn/sharesdk/framework/f$4;->a:I

    iget-object v2, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/Platform;->checkAuthorize(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    iget v1, p0, Lcn/sharesdk/framework/f$4;->a:I

    iget-object v2, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/f;->b(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 357
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
