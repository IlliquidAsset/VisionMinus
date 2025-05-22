.class Lcom/powervision/home/ui/adapter/CommonPresenter$6;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter;->unLoading()V
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

    .line 256
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$6;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$6;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$300(Lcom/powervision/home/ui/adapter/CommonPresenter;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$6;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$300(Lcom/powervision/home/ui/adapter/CommonPresenter;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 261
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$6;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$302(Lcom/powervision/home/ui/adapter/CommonPresenter;Lcom/powervision/base/views/LoadingProgressBar;)Lcom/powervision/base/views/LoadingProgressBar;

    :cond_0
    return-void
.end method
