.class Lcn/sharesdk/sina/weibo/sdk/LoadingBar$1;
.super Ljava/lang/Object;
.source "LoadingBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/sdk/LoadingBar;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/sdk/LoadingBar;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/sdk/LoadingBar;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar$1;->a:Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar$1;->a:Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(Lcn/sharesdk/sina/weibo/sdk/LoadingBar;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(Lcn/sharesdk/sina/weibo/sdk/LoadingBar;I)I

    .line 23
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar$1;->a:Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(Lcn/sharesdk/sina/weibo/sdk/LoadingBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(I)V

    return-void
.end method
