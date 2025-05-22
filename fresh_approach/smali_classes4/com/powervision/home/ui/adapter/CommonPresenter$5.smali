.class Lcom/powervision/home/ui/adapter/CommonPresenter$5;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter;->loading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$5;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$5;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$300(Lcom/powervision/home/ui/adapter/CommonPresenter;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$5;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    new-instance v1, Lcom/powervision/base/views/LoadingProgressBar;

    iget-object v2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$5;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v2, v2, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$302(Lcom/powervision/home/ui/adapter/CommonPresenter;Lcom/powervision/base/views/LoadingProgressBar;)Lcom/powervision/base/views/LoadingProgressBar;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$5;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$300(Lcom/powervision/home/ui/adapter/CommonPresenter;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    return-void
.end method
