.class Lcn/sharesdk/tencent/qzone/b$1;
.super Ljava/lang/Object;
.source "QZoneHelper.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/SSOListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic b:Lcn/sharesdk/tencent/qzone/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b$1;->b:Lcn/sharesdk/tencent/qzone/b;

    iput-object p2, p0, Lcn/sharesdk/tencent/qzone/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Unknown Throwable!"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
