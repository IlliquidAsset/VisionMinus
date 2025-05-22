.class Lcom/powervision/home/ui/adapter/CommonPresenter$7;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter;->download(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

.field final synthetic val$jump:Z

.field final synthetic val$updateDevice:I


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter;IZ)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iput p2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7;->val$updateDevice:I

    iput-boolean p3, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7;->val$jump:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commplete()V
    .locals 8

    .line 274
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-virtual {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->unLoading()V

    .line 276
    invoke-static {}, Lcn/powervision/upgrade/manager/ReleaseNoteUtils;->readReleaseNote_string()Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getFirmwareTotalSize()J

    move-result-wide v5

    .line 280
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getDownLoadType()I

    move-result v3

    .line 281
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v7, Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter$7;ILjava/lang/String;J)V

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public net_error()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-virtual {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->tipsInternet()V

    .line 293
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    const-string v0, "lzqFirm"

    const-string v1, "  tipsInternet "

    .line 294
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
