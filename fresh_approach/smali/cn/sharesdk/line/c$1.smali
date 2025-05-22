.class Lcn/sharesdk/line/c$1;
.super Ljava/lang/Object;
.source "LineImpl.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/SSOListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/line/c;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic b:Lcn/sharesdk/line/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/line/c;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcn/sharesdk/line/c$1;->b:Lcn/sharesdk/line/c;

    iput-object p2, p0, Lcn/sharesdk/line/c$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcn/sharesdk/line/c$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/sharesdk/line/c$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcn/sharesdk/line/c$1;->b:Lcn/sharesdk/line/c;

    iget-object v0, p0, Lcn/sharesdk/line/c$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-virtual {p1, v0}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method
