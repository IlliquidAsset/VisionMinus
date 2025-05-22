.class Lcom/powervision/gcs/usb2/AOAPowerSdkManager$1;
.super Ljava/lang/Object;
.source "AOAPowerSdkManager.java"

# interfaces
.implements Lcom/powervision/natives/callback/AOACallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/AOAPowerSdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/AOAPowerSdkManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/AOAPowerSdkManager;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager$1;->this$0:Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectResult(I)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "lzqup"

    const/16 v2, 0x28cb

    if-ne p1, v2, :cond_0

    .line 129
    sput-boolean v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->needAP03_DataSendStart:Z

    const-string v0, "\u5f00\u59cb\u5347\u7ea7 \u53d1\u9001Cancel AP03_UPGRADER_DATA  needAP03_DataSendStart:true"

    .line 130
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v2, 0x29ab

    if-ne p1, v2, :cond_1

    const-string v2, "\u5f00\u59cb\u5347\u7ea7 \u53d1\u9001Cancel BODY_DATA"

    .line 132
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sput-boolean v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->needW4_DataSendStart:Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x29aa

    if-ne p1, v2, :cond_2

    const-string v0, "\u5f00\u59cb\u5347\u7ea7 \u53d1\u9001Cancel BODY_CONTRL"

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v2, 0x28ca

    if-ne p1, v2, :cond_3

    const-string v0, "\u5f00\u59cb\u5347\u7ea7 \u53d1\u9001Cancel AP03_UPGRADER_COMMAND need_Dis false"

    .line 137
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 138
    sput-boolean v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->need_Dis:Z

    goto :goto_0

    :cond_3
    const/16 v2, 0x2b0c

    if-ne p1, v2, :cond_4

    const-string v2, "\u5f00\u59cb\u5347\u7ea7 \u53d1\u9001Cancel DL01_REMOTE_FTP_DATA"

    .line 140
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sput-boolean v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->needDl01_FtpStart:Z

    goto :goto_0

    :cond_4
    const/16 v0, 0x2ee2

    if-ne p1, v0, :cond_5

    const-string v0, "lzqw4_body"

    const-string v1, " \u53d1\u9001Cancel BODY"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/16 v0, 0x285d

    if-ne p1, v0, :cond_6

    const-string v0, "lzqAp03"

    const-string v1, " \u53d1\u9001Cancel AP03_BODY"

    .line 145
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_6
    :goto_0
    invoke-static {p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendCancelLinkCommand(I)V

    return-void
.end method

.method public onDisconnect(I)V
    .locals 3

    const/16 v0, 0x2b0c

    const/4 v1, 0x0

    const-string v2, "lzqup"

    if-ne p1, v0, :cond_0

    .line 158
    sput-boolean v1, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->needDl01_FtpStart:Z

    const-string p1, " DL01_REMOTE_FTP_DATA \u53d1Cancel"

    .line 159
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendCancelLinkCommand(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x29ab

    if-ne p1, v0, :cond_1

    const-string p1, "disconnect sendCancelLinkBodyUpgrade sendCancel"

    .line 162
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sput-boolean v1, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->needW4_DataSendStart:Z

    .line 164
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendCancelLinkCommand(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x28cb

    if-ne p1, v0, :cond_2

    .line 166
    sput-boolean v1, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->needAP03_DataSendStart:Z

    const-string p1, "disconnect sendCancelLinkAp03Bodydata  needAP03_DataSendStart:false"

    .line 167
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendCancelLinkCommand(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x28ca

    if-ne p1, v0, :cond_3

    const-string p1, "disconnect AP03_UPGRADER_COMMAND   sendCancelLinkCommand(AP03_UPGRADER_COMMAND); need_Dis:true"

    .line 171
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 172
    sput-boolean p1, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->need_Dis:Z

    .line 173
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendCancelLinkCommand(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x2bd6

    if-ne p1, v0, :cond_4

    const-string p1, "lzqW4_dl01_g"

    const-string v0, "onDisconnect channel DL01_GROUND"

    .line 175
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public onSend(I[BI)V
    .locals 0

    .line 113
    array-length p3, p2

    invoke-static {p1, p3}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object p1

    .line 114
    invoke-static {p1, p2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object p1

    .line 117
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    return-void
.end method
