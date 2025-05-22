.class Lcom/powervision/home/ui/adapter/CommonPresenter$3;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Lcn/powervision/upgrade/manager/CommonCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter;->init_Activity(Landroid/app/Activity;Landroid/view/View;)V
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

    .line 115
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$3;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$3;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$100(Lcom/powervision/home/ui/adapter/CommonPresenter;)V

    return-void
.end method

.method public varargs success([Ljava/lang/Object;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$3;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {p1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$000(Lcom/powervision/home/ui/adapter/CommonPresenter;)V

    return-void
.end method

.method public timeout()V
    .locals 0

    return-void
.end method
