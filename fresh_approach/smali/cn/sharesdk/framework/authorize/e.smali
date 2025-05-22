.class public abstract Lcn/sharesdk/framework/authorize/e;
.super Ljava/lang/Object;
.source "SSOProcessor.java"


# instance fields
.field protected a:Lcn/sharesdk/framework/authorize/d;

.field protected b:I

.field protected c:Lcn/sharesdk/framework/authorize/SSOListener;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/d;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/e;->a:Lcn/sharesdk/framework/authorize/d;

    .line 12
    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/d;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object p1

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getSSOListener()Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcn/sharesdk/framework/authorize/e;->b:I

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
