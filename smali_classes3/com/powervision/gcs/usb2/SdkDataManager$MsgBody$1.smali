.class Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody$1;
.super Lcom/powervision/gcs/usb2/MsgHandle;
.source "SdkDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/usb2/MsgHandle<",
        "Lcom/powervision/gcs/usb2/Msg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody$1;->this$1:Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;

    invoke-direct {p0}, Lcom/powervision/gcs/usb2/MsgHandle;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 0

    return-void
.end method

.method public notifyTheMaster()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody$1;->this$1:Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->task:Lcom/powervision/gcs/usb2/MsgTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgTask;->notifyThis(I)V

    return-void
.end method

.method public onInit()V
    .locals 0

    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 0

    return-void
.end method

.method public work(Lcom/powervision/gcs/usb2/Msg;)V
    .locals 1

    .line 81
    iget v0, p1, Lcom/powervision/gcs/usb2/Msg;->channel:I

    iget-object p1, p1, Lcom/powervision/gcs/usb2/Msg;->packet:[B

    invoke-static {v0, p1}, Lcom/powervision/natives/JniAOAChannelNative;->onRead(I[B)I

    return-void
.end method

.method public bridge synthetic work(Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Lcom/powervision/gcs/usb2/Msg;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody$1;->work(Lcom/powervision/gcs/usb2/Msg;)V

    return-void
.end method
