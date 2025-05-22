.class Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$2;
.super Ljava/lang/Object;
.source "ConnectRemotePairActivity.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$dl01BSOper$0()V
    .locals 0

    .line 225
    invoke-static {}, Lcom/powervision/gcs/utils/ProgressDialogUtils;->dismissDialog()V

    return-void
.end method


# virtual methods
.method public dl01BSOper(IILjava/lang/String;)V
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9065\u63a7\u5668\u8bbe\u7f6eSSID\u6210\u529f Dl01BSOperListenerImp  dl01BSOper  command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ConnectRemotePairActivi"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x5

    if-ne p1, p3, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    sget-object p2, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$2$JJoF0O_7ZdNjlxyxsapCRUTUtW8;->INSTANCE:Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$2$JJoF0O_7ZdNjlxyxsapCRUTUtW8;

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    new-instance p2, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$2$LJKq2ERMZvlzULHAjFc7rNPjCVo;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$2$LJKq2ERMZvlzULHAjFc7rNPjCVo;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$2;)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->reStartWifi()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$dl01BSOper$1$ConnectRemotePairActivity$2()V
    .locals 1

    .line 229
    invoke-static {}, Lcom/powervision/gcs/utils/ProgressDialogUtils;->dismissDialog()V

    .line 230
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->access$000(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V

    .line 231
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V

    return-void
.end method
