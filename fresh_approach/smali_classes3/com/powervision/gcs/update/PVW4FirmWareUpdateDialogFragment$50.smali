.class Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;
.super Landroid/os/CountDownTimer;
.source "PVW4FirmWareUpdateDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->prepareClock(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cameraGetParamsListener:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;

.field final synthetic this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

.field final synthetic val$countMills:I

.field final synthetic val$leftPresent:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;JJII)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    iput p6, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->val$leftPresent:I

    iput p7, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->val$countMills:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1260
    new-instance p1, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$3;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$3;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;)V

    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->cameraGetParamsListener:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1281
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    iget-boolean v0, v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->isRemoteDl01:Z

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$600(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$4;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$4;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$700(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0xf

    const/4 v1, 0x1

    const-string v2, "UP"

    .line 1294
    invoke-static {v0, v2, v1}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 5

    .line 1220
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->cancel()V

    return-void

    .line 1225
    :cond_0
    iget v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->val$leftPresent:I

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->val$countMills:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    long-to-float v3, p1

    sub-float/2addr v1, v3

    mul-float v1, v1, v0

    div-float/2addr v1, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    const/high16 v0, 0x42c40000    # 98.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 1230
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$600(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$1;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$1;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1237
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$600(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$2;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$2;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;FJ)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x186a0

    cmp-long v4, p1, v2

    if-gez v4, :cond_3

    .line 1247
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {p1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$700(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    const-string p1, "lzqNew"

    const-string p2, "\u6ee1\u8db3\u6761\u4ef6"

    .line 1248
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1250
    iget-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {p2}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$800(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {p2}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$900(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {p2}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$800(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    .line 1251
    iget-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$802(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;J)J

    const-string p2, "\u53bb\u8bbf\u95ee"

    .line 1252
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;

    move-result-object p1

    sget-object p2, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->SHIP_CAMERA_SETTING_DEVICE_INFO_URL:Ljava/lang/String;

    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->cameraGetParamsListener:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;

    invoke-virtual {p1, p2, v0}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->postRequest(Ljava/lang/String;Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;)V

    :cond_3
    return-void
.end method
