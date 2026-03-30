.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;
.super Lcom/powervision/gcs/base/BaseHandleReference;
.source "ShipMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShipMainHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/base/BaseHandleReference<",
        "Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 4117
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;)V
    .locals 0

    .line 4114
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/os/Message;)V
    .locals 5

    .line 4123
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_e

    const/16 v3, 0x6e

    const/4 v4, 0x3

    if-eq v0, v3, :cond_d

    const/16 v3, 0x78

    if-eq v0, v3, :cond_c

    const/4 v3, 0x7

    if-eq v0, v3, :cond_a

    const/16 v3, 0x8

    if-eq v0, v3, :cond_8

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 4125
    :pswitch_0
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->setMapTouchListener()V

    goto/16 :goto_0

    .line 4281
    :pswitch_1
    invoke-virtual {p1, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->lineOpenClose(Z)V

    goto/16 :goto_0

    .line 4245
    :pswitch_2
    invoke-virtual {p1, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->lineOpenClose(Z)V

    .line 4246
    invoke-static {v4}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    .line 4247
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 4248
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 4249
    invoke-static {p1, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3602(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    goto/16 :goto_0

    .line 4236
    :pswitch_3
    invoke-virtual {p1, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->lineOpenClose(Z)V

    .line 4237
    invoke-static {v4}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    .line 4238
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 4239
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 4240
    invoke-static {p1, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3502(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    goto/16 :goto_0

    .line 4272
    :pswitch_4
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/SlideReturnView;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 4275
    :cond_0
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/SlideReturnView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_ReturnHome_7:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/SlideReturnView;->setReTitle(Ljava/lang/String;)V

    .line 4276
    iget p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->count:I

    if-nez p2, :cond_10

    .line 4277
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/SlideReturnView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/powervision/gcs/view/SlideReturnView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4257
    :pswitch_5
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4260
    :cond_1
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4269
    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1, p2}, Lcom/powervision/condition/view/NationMapView;->shipReachedPoint(I)V

    goto/16 :goto_0

    .line 4286
    :pswitch_6
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getShipCameraMenuView()Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->setConnectStatus(Z)V

    goto/16 :goto_0

    .line 4253
    :pswitch_7
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/powervision/base/nationmap/model/NationLatLng;

    .line 4254
    iget-wide v0, p2, Lcom/powervision/base/nationmap/model/NationLatLng;->latitude:D

    iget-wide v2, p2, Lcom/powervision/base/nationmap/model/NationLatLng;->longitude:D

    invoke-static {p1, v0, v1, v2, v3}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6600(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;DD)V

    goto/16 :goto_0

    .line 4228
    :pswitch_8
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 4229
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 4231
    invoke-static {v4}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    .line 4232
    invoke-virtual {p1, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->lineOpenClose(Z)V

    goto/16 :goto_0

    .line 4223
    :pswitch_9
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 4224
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 4225
    invoke-static {v4}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    goto/16 :goto_0

    .line 4199
    :pswitch_a
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result p2

    if-nez p2, :cond_2

    .line 4200
    new-instance p2, Ljava/text/DecimalFormat;

    const-string v0, "#0.00"

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4201
    iget-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextVs:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6000(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4203
    :cond_2
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextVs:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6000(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p1, v4, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;ZF)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4180
    :pswitch_b
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p2}, Lcom/powervision/condition/view/NationMapView;->getCurrentShipLatLng()Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object p2

    .line 4181
    iget-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {v0}, Lcom/powervision/condition/view/NationMapView;->getCurrentPersonLatLng()Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object v0

    .line 4182
    invoke-static {p2, v0}, Lcom/powervision/condition/utils/MapUtils;->calculateLineDistance(Lcom/powervision/base/nationmap/model/NationLatLng;Lcom/powervision/base/nationmap/model/NationLatLng;)F

    move-result p2

    float-to-double v2, p2

    .line 4184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "."

    .line 4186
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4187
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4188
    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4190
    :cond_3
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result p2

    if-nez p2, :cond_4

    .line 4191
    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextDistance:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4193
    :cond_4
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextDistance:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;ZF)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4132
    :pswitch_c
    iget p2, p2, Landroid/os/Message;->arg1:I

    if-nez p2, :cond_6

    .line 4134
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionListView;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 4135
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/interfaces/ShipFunctionStateListener;

    move-result-object p2

    invoke-interface {p2, v4}, Lcom/powervision/gcs/ui/interfaces/ShipFunctionStateListener;->onChangeHookState(Z)V

    .line 4137
    :cond_5
    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickHookIv:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/gcs/R$mipmap;->ship_quick_hook_unselect:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_10

    .line 4139
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionListView;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 4140
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/interfaces/ShipFunctionStateListener;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/powervision/gcs/ui/interfaces/ShipFunctionStateListener;->onChangeHookState(Z)V

    .line 4142
    :cond_7
    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickHookIv:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/gcs/R$mipmap;->ship_quick_hook_selected:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4176
    :pswitch_d
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getShipCameraMenuView()Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_e
    const-string p2, "lzqmission"

    const-string v0, "referenceHandleMessage: SHIP_CONNECT_CAMERA_SUCCESS"

    .line 4170
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p2

    iput-boolean v1, p2, Lcom/powervision/base/base/BaseApplication;->isConnectPvw4Camera:Z

    .line 4173
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getShipCameraMenuView()Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4159
    :cond_8
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->waterLockButtonIv:Landroid/widget/ImageView;

    if-eqz p2, :cond_9

    .line 4160
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->waterLockButtonIv:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/gcs/R$mipmap;->ship_unlock:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4162
    :cond_9
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideUnlockView:Lcom/powervision/gcs/view/SlideReturnView;

    if-eqz p2, :cond_10

    .line 4163
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideUnlockView:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Unlock_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/SlideReturnView;->setReTitle(Ljava/lang/String;)V

    .line 4164
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideUnlockView:Lcom/powervision/gcs/view/SlideReturnView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Unlock_5:I

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/SlideReturnView;->setReDesc(Ljava/lang/String;)V

    .line 4165
    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideUnlockView:Lcom/powervision/gcs/view/SlideReturnView;

    sget p2, Lcom/powervision/gcs/R$mipmap;->ship_slide_lock:I

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/SlideReturnView;->setOkDrawable(I)V

    goto :goto_0

    .line 4149
    :cond_a
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->waterLockButtonIv:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    .line 4150
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->waterLockButtonIv:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/gcs/R$mipmap;->ship_lock:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4152
    :cond_b
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideUnlockView:Lcom/powervision/gcs/view/SlideReturnView;

    if-eqz p2, :cond_10

    .line 4153
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideUnlockView:Lcom/powervision/gcs/view/SlideReturnView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Unlock_1:I

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/SlideReturnView;->setReTitle(Ljava/lang/String;)V

    .line 4154
    iget-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideUnlockView:Lcom/powervision/gcs/view/SlideReturnView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Unlock_2:I

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/SlideReturnView;->setReDesc(Ljava/lang/String;)V

    .line 4155
    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideUnlockView:Lcom/powervision/gcs/view/SlideReturnView;

    sget p2, Lcom/powervision/gcs/R$mipmap;->ship_slide_unlock:I

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/SlideReturnView;->setOkDrawable(I)V

    goto :goto_0

    .line 4215
    :cond_c
    invoke-static {p1, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3202(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 4216
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/view/ViewGroup;)V

    .line 4218
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->drawGetScan()V

    .line 4219
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 4220
    invoke-static {p1, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)V

    goto :goto_0

    .line 4207
    :cond_d
    invoke-static {p1, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2302(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 4208
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/view/ViewGroup;)V

    .line 4210
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->drawGetScheme()V

    .line 4211
    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 4212
    invoke-static {p1, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)V

    goto :goto_0

    .line 4146
    :cond_e
    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipLmhView:Lcom/powervision/gcs/view/ship/ShipLMHView;

    iget p2, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/ship/ShipLMHView;->setLMHValue(I)V

    goto :goto_0

    .line 4128
    :cond_f
    iget p2, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->setShipLight(I)V

    :cond_10
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 4114
    check-cast p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->referenceHandleMessage(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/os/Message;)V

    return-void
.end method
