.class Lcom/powervision/home/view/DownloadDialog$1;
.super Landroid/os/Handler;
.source "DownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/view/DownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/view/DownloadDialog;


# direct methods
.method constructor <init>(Lcom/powervision/home/view/DownloadDialog;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 p1, 0x8

    if-eq v0, p1, :cond_1

    const/16 p1, 0x10

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 93
    :cond_0
    sget p1, Lcom/powervision/home/R$string;->AP03_MediaLib_33:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    .line 94
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    invoke-virtual {p1}, Lcom/powervision/home/view/DownloadDialog;->dismiss()V

    .line 95
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object p1, p1, Lcom/powervision/home/view/DownloadDialog;->commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

    if-eqz p1, :cond_5

    .line 96
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object p1, p1, Lcom/powervision/home/view/DownloadDialog;->commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

    invoke-interface {p1}, Lcn/powervision/upgrade/manager/CommonCallBack;->failed()V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    invoke-virtual {p1}, Lcom/powervision/home/view/DownloadDialog;->dismiss()V

    .line 80
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    invoke-virtual {p1}, Lcom/powervision/home/view/DownloadDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object v1, v1, Lcom/powervision/home/view/DownloadDialog;->downloadBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object v1, v1, Lcom/powervision/home/view/DownloadDialog;->after_Apk_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/base/utils/AppUtils;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 88
    iget-object v0, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    invoke-static {v0}, Lcom/powervision/home/view/DownloadDialog;->access$000(Lcom/powervision/home/view/DownloadDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 89
    iget-object v0, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    invoke-static {v0}, Lcom/powervision/home/view/DownloadDialog;->access$100(Lcom/powervision/home/view/DownloadDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object p1, p1, Lcom/powervision/home/view/DownloadDialog;->commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

    if-eqz p1, :cond_4

    const-string p1, "lzqApp"

    const-string v0, " DownloadDialog \u7f51\u7edc\u8bf7\u6c42\u5931\u8d25 "

    .line 105
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object p1, p1, Lcom/powervision/home/view/DownloadDialog;->commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

    invoke-interface {p1}, Lcn/powervision/upgrade/manager/CommonCallBack;->failed()V

    .line 108
    :cond_4
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$1;->this$0:Lcom/powervision/home/view/DownloadDialog;

    invoke-virtual {p1}, Lcom/powervision/home/view/DownloadDialog;->dismiss()V

    :cond_5
    :goto_0
    return-void
.end method
