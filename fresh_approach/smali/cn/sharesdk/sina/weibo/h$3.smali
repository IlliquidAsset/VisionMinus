.class Lcn/sharesdk/sina/weibo/h$3;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/h;->b(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic b:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic c:Lcn/sharesdk/sina/weibo/h;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/h;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/h$3;->c:Lcn/sharesdk/sina/weibo/h;

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/h$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iput-object p3, p0, Lcn/sharesdk/sina/weibo/h$3;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/h$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 391
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h$3;->c:Lcn/sharesdk/sina/weibo/h;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/h;->j(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4

    .line 366
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/h$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 368
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h$3;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    const-string v2, "ShareParams"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h$3;->c:Lcn/sharesdk/sina/weibo/h;

    invoke-static {v2}, Lcn/sharesdk/sina/weibo/h;->e(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "uid"

    .line 373
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_token"

    .line 374
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expire_in"

    .line 375
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 377
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h$3;->c:Lcn/sharesdk/sina/weibo/h;

    invoke-static {v2, v1}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/sina/weibo/h;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h$3;->c:Lcn/sharesdk/sina/weibo/h;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/h;->g(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h$3;->c:Lcn/sharesdk/sina/weibo/h;

    invoke-static {v2}, Lcn/sharesdk/sina/weibo/h;->f(Lcn/sharesdk/sina/weibo/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 380
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h$3;->c:Lcn/sharesdk/sina/weibo/h;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/h;->h(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 382
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 383
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/h$3;->c:Lcn/sharesdk/sina/weibo/h;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/h;->i(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 360
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/h$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h$3;->c:Lcn/sharesdk/sina/weibo/h;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/h;->d(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
