.class Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;
.super Ljava/lang/Object;
.source "SdkDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/SdkDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgBody"
.end annotation


# instance fields
.field i:I

.field msgMsgHandle:Lcom/powervision/gcs/usb2/MsgHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgHandle<",
            "Lcom/powervision/gcs/usb2/Msg;",
            ">;"
        }
    .end annotation
.end field

.field task:Lcom/powervision/gcs/usb2/MsgTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgTask<",
            "Lcom/powervision/gcs/usb2/Msg;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/powervision/gcs/usb2/SdkDataManager;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/usb2/SdkDataManager;Lcom/powervision/gcs/usb2/Msg;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->this$0:Lcom/powervision/gcs/usb2/SdkDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->i:I

    .line 76
    new-instance p1, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody$1;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody$1;-><init>(Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;)V

    iput-object p1, p0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->msgMsgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    .line 60
    new-instance p1, Lcom/powervision/gcs/usb2/MsgTask;

    invoke-direct {p1}, Lcom/powervision/gcs/usb2/MsgTask;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->task:Lcom/powervision/gcs/usb2/MsgTask;

    .line 61
    iget-object p1, p0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->msgMsgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/16 v0, 0x65

    iput v0, p1, Lcom/powervision/gcs/usb2/MsgHandle;->type:I

    .line 62
    iget-object p1, p0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->task:Lcom/powervision/gcs/usb2/MsgTask;

    iget-object v0, p0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->msgMsgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/MsgTask;->setConnectHandle(Lcom/powervision/gcs/usb2/MsgHandle;)V

    .line 63
    iget-object p1, p0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->msgMsgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->task:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/MsgTask;->start()V

    return-void
.end method


# virtual methods
.method public addMsg(Lcom/powervision/gcs/usb2/Msg;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->msgMsgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
