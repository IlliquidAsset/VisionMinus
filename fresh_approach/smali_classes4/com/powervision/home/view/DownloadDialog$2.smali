.class Lcom/powervision/home/view/DownloadDialog$2;
.super Lcom/powervision/base/net/observable/RequestObservable;
.source "DownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/view/DownloadDialog;->requestApk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/observable/RequestObservable<",
        "Lcn/powervision/upgrade/model/ApkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/view/DownloadDialog;


# direct methods
.method constructor <init>(Lcom/powervision/home/view/DownloadDialog;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/powervision/home/view/DownloadDialog$2;->this$0:Lcom/powervision/home/view/DownloadDialog;

    invoke-direct {p0}, Lcom/powervision/base/net/observable/RequestObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$2;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object p1, p1, Lcom/powervision/home/view/DownloadDialog;->handler:Landroid/os/Handler;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSuccess(Lcn/powervision/upgrade/model/ApkInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Lcn/powervision/upgrade/model/ApkInfo;->getAppDownAddr()Ljava/lang/String;

    move-result-object p1

    .line 174
    iget-object v0, p0, Lcom/powervision/home/view/DownloadDialog$2;->this$0:Lcom/powervision/home/view/DownloadDialog;

    invoke-virtual {v0, p1}, Lcom/powervision/home/view/DownloadDialog;->downLoad(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    check-cast p1, Lcn/powervision/upgrade/model/ApkInfo;

    invoke-virtual {p0, p1}, Lcom/powervision/home/view/DownloadDialog$2;->onSuccess(Lcn/powervision/upgrade/model/ApkInfo;)V

    return-void
.end method
