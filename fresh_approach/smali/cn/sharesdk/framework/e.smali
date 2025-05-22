.class public abstract Lcn/sharesdk/framework/e;
.super Ljava/lang/Object;
.source "PlatformHelper.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeHelper;


# instance fields
.field protected a:Lcn/sharesdk/framework/Platform;

.field private b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private c:Lcn/sharesdk/framework/authorize/SSOListener;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-void
.end method


# virtual methods
.method protected a(Lcn/sharesdk/framework/authorize/SSOListener;)V
    .locals 1

    .line 43
    iput-object p1, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    .line 44
    new-instance v0, Lcn/sharesdk/framework/authorize/d;

    invoke-direct {v0}, Lcn/sharesdk/framework/authorize/d;-><init>()V

    .line 45
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/authorize/d;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    .line 46
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/d;->a(Lcn/sharesdk/framework/authorize/AuthorizeHelper;)V

    return-void
.end method

.method protected b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 1

    .line 32
    iput-object p1, p0, Lcn/sharesdk/framework/e;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 33
    new-instance p1, Lcn/sharesdk/framework/authorize/g;

    invoke-direct {p1}, Lcn/sharesdk/framework/authorize/g;-><init>()V

    .line 34
    iget-object v0, p0, Lcn/sharesdk/framework/e;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/authorize/g;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 35
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/authorize/g;->a(Lcn/sharesdk/framework/authorize/AuthorizeHelper;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v0

    return v0
.end method

.method public getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 1

    .line 39
    iget-object v0, p0, Lcn/sharesdk/framework/e;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method public getPlatform()Lcn/sharesdk/framework/Platform;
    .locals 1

    .line 20
    iget-object v0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public getSSOListener()Lcn/sharesdk/framework/authorize/SSOListener;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/d;)Lcn/sharesdk/framework/authorize/e;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
