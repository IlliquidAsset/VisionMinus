.class Lcn/sharesdk/tencent/qzone/b$4;
.super Ljava/lang/Object;
.source "QZoneHelper.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/tencent/qzone/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/b;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b$4;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$4;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->g(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$4;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->g(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/b$4;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/b;->h(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 4

    .line 350
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$4;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->g(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$4;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->g(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/b$4;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/b;->i(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 354
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qqShareListener onComplete catch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 4

    .line 360
    :try_start_0
    iget-object v0, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 361
    iget-object p1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 362
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$4;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->g(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$4;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->g(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 367
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qqShareListener onError catch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method
