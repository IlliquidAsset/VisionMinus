.class Lcn/sharesdk/twitter/c$1;
.super Ljava/lang/Object;
.source "TwitterHelper.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/SSOListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic b:Lcn/sharesdk/twitter/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/twitter/c;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcn/sharesdk/twitter/c$1;->b:Lcn/sharesdk/twitter/c;

    iput-object p2, p0, Lcn/sharesdk/twitter/c$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 157
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/twitter/c$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/twitter/c$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 151
    invoke-virtual {p0, p1}, Lcn/sharesdk/twitter/c$1;->onFailed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcn/sharesdk/twitter/c$1;->b:Lcn/sharesdk/twitter/c;

    iget-object v0, p0, Lcn/sharesdk/twitter/c$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-static {p1, v0}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/twitter/c;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method
