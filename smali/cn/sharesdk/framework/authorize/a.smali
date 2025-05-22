.class public Lcn/sharesdk/framework/authorize/a;
.super Lcom/mob/tools/FakeActivity;
.source "AbstractAuthorizeActivity.java"


# instance fields
.field protected a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/a;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeHelper;)V
    .locals 1

    .line 13
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/a;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    .line 14
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public show(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 24
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This method is deprecated, use show(AuthorizeHelper, Intent) instead"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
