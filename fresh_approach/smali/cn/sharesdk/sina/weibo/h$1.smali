.class Lcn/sharesdk/sina/weibo/h$1;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/SSOListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic b:Lcn/sharesdk/sina/weibo/h;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/h;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/h$1;->b:Lcn/sharesdk/sina/weibo/h;

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/h$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 137
    invoke-static {}, Lcn/sharesdk/sina/weibo/c;->a()Lcn/sharesdk/sina/weibo/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/c;->a(I)V

    .line 138
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/h$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 2

    .line 124
    invoke-static {}, Lcn/sharesdk/sina/weibo/c;->a()Lcn/sharesdk/sina/weibo/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/c;->a(I)V

    :try_start_0
    const-string v0, "expires_in"

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/h$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p1

    .line 129
    invoke-virtual {p0, p1}, Lcn/sharesdk/sina/weibo/h$1;->onFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    .line 115
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 119
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/h$1;->b:Lcn/sharesdk/sina/weibo/h;

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/h$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-static {p1, v0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/sina/weibo/h;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method
