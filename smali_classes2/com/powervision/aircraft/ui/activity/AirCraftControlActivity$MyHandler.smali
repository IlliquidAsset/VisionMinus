.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "AirCraftControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private reference:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 2860
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    .line 2861
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->reference:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .line 2865
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->reference:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$referenceHandleMessage$0(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/view/View;)V
    .locals 2

    .line 2967
    invoke-static {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$6900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object p0

    check-cast p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/16 p1, 0x14

    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGetAirDL01Value(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$referenceHandleMessage$1(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/view/View;)V
    .locals 2

    .line 2973
    invoke-static {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$6800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object p0

    check-cast p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/16 p1, 0x11

    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGetDL01Value(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$referenceHandleMessage$2$AirCraftControlActivity$MyHandler(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/view/View;)V
    .locals 3

    .line 2979
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$6600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object p2

    check-cast p2, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/16 v0, 0x14

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGetAirDL01Value(ILjava/lang/String;I)V

    .line 2980
    new-instance p2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler$1;

    invoke-direct {p2, p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler$1;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p2, v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/os/Message;)V
    .locals 7

    .line 2870
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_1

    .line 2871
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 2872
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2875
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    goto/16 :goto_3

    .line 2876
    :cond_1
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    goto/16 :goto_3

    .line 2878
    :cond_2
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    goto/16 :goto_3

    .line 2880
    :cond_3
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    if-nez v0, :cond_6

    .line 2882
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p2

    if-ne p2, v3, :cond_4

    .line 2884
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    .line 2886
    :cond_4
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraMenuView;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 2887
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraMenuView;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    .line 2889
    :cond_5
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2890
    :cond_6
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_7

    .line 2891
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    const-string p1, "camera_get_all"

    const-string p2, "  actvitiy ...exe ... get all"

    .line 2892
    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2893
    :cond_7
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v0, v6, :cond_8

    .line 2894
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraParamView;

    move-result-object p1

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Lcom/powervision/aircraft/ui/views/CameraParamView;->updatCapacityValue(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 2895
    :cond_8
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v0, v6, :cond_9

    .line 2896
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraParamView;

    move-result-object p1

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/powervision/aircraft/ui/views/CameraParamView;->updatCapacityValue(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 2897
    :cond_9
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v6, 0x7

    if-ne v0, v6, :cond_d

    .line 2898
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraParamView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/aircraft/ui/views/CameraParamView;->updateViewsData()V

    .line 2899
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraMenuView;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 2900
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraMenuView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->switchCameraMenuStatus()V

    .line 2901
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraMenuView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->updatePhotoIcon()V

    .line 2903
    :cond_a
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/camera/views/CameraSettingView;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/camera/views/CameraSettingView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/camera/views/CameraSettingView;->isShown()Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "check_item_oc"

    const-string v0, "  ooooooooooooooo   update "

    .line 2904
    invoke-static {p2, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/camera/views/CameraSettingView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/camera/views/CameraSettingView;->updateGeneralAdapter()V

    .line 2907
    :cond_b
    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getRemainingCapacity()V

    .line 2908
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p2

    if-ne p2, v3, :cond_c

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result p2

    if-ne p2, v1, :cond_c

    .line 2909
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2911
    :cond_c
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2913
    :goto_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getMuxerFormatType()V

    goto/16 :goto_3

    .line 2914
    :cond_d
    iget v0, p2, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_e

    .line 2915
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getRecordTime()V

    goto/16 :goto_3

    .line 2916
    :cond_e
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_f

    .line 2917
    iget p2, p2, Landroid/os/Message;->arg1:I

    .line 2918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " update  format  recordTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirCraftCo"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5102(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I

    .line 2921
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/powervision/camera/camera/CameraManager;->setCurrentRecordTime(I)V

    .line 2922
    invoke-static {p1, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)V

    goto/16 :goto_3

    .line 2923
    :cond_f
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    .line 2924
    iget p1, p2, Landroid/os/Message;->arg1:I

    .line 2925
    sget p2, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-eq p1, p2, :cond_11

    sget p2, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne p1, p2, :cond_10

    goto :goto_1

    .line 2928
    :cond_10
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getRestPhotoNumber()V

    goto/16 :goto_3

    .line 2926
    :cond_11
    :goto_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getRestRecordTime()V

    goto/16 :goto_3

    .line 2930
    :cond_12
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_13

    .line 2931
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto/16 :goto_3

    .line 2932
    :cond_13
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_14

    .line 2933
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto/16 :goto_3

    .line 2934
    :cond_14
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_19

    .line 2935
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_15

    .line 2937
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p2

    sget v2, Lcom/powervision/aircraft/R$mipmap;->handheld_record_img1:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_15
    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_16

    .line 2939
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p2

    sget v2, Lcom/powervision/aircraft/R$mipmap;->handheld_record_img2:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_16
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_17

    .line 2941
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p2

    sget v2, Lcom/powervision/aircraft/R$mipmap;->handheld_record_img3:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_17
    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_18

    .line 2943
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p2

    sget v2, Lcom/powervision/aircraft/R$mipmap;->handheld_record_img4:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2945
    :cond_18
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p2

    sget v2, Lcom/powervision/aircraft/R$mipmap;->handheld_record_img5:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2948
    :goto_2
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object p2

    iget-object p2, p2, Lcom/powervision/aircraft/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getLiveStreamAudioMute()Z

    move-result p2

    if-nez p2, :cond_25

    .line 2949
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/LiveStatusView;

    move-result-object p2

    if-eqz p2, :cond_25

    .line 2950
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/LiveStatusView;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/views/LiveStatusView;->setDecibelChange(D)V

    goto/16 :goto_3

    .line 2953
    :cond_19
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1a

    .line 2954
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_25

    .line 2956
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2957
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2959
    :cond_1a
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1b

    .line 2960
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 2961
    :cond_1b
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1c

    .line 2962
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 2963
    :cond_1c
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1d

    .line 2964
    sget p2, Lcom/powervision/aircraft/R$string;->AP03_Msg_1:I

    .line 2965
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_Activation_6:I

    .line 2966
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$MyHandler$JYd-1ClgjC5Rg3cXgn9tDKbPpmA;

    invoke-direct {v5, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$MyHandler$JYd-1ClgjC5Rg3cXgn9tDKbPpmA;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    const/4 v6, 0x0

    const-string v2, "\u91cd\u542f\u5929\u7a7a\u7aefDL01"

    move-object v0, p1

    .line 2964
    invoke-static/range {v0 .. v6}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto/16 :goto_3

    .line 2969
    :cond_1d
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1e

    .line 2970
    sget p2, Lcom/powervision/aircraft/R$string;->AP03_Msg_1:I

    .line 2971
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_Activation_6:I

    .line 2972
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$MyHandler$uZH48f9NUfxae3e1i0TzhBYCRd4;

    invoke-direct {v5, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$MyHandler$uZH48f9NUfxae3e1i0TzhBYCRd4;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    const/4 v6, 0x0

    const-string v2, "\u91cd\u542f\u5730\u9762\u7aefDL01"

    move-object v0, p1

    .line 2970
    invoke-static/range {v0 .. v6}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto/16 :goto_3

    .line 2975
    :cond_1e
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1f

    .line 2976
    sget p2, Lcom/powervision/aircraft/R$string;->AP03_Msg_1:I

    .line 2977
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_Activation_6:I

    .line 2978
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$MyHandler$f899cl5Quv76RPPrCIvlmPU-VSk;

    invoke-direct {v5, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$MyHandler$f899cl5Quv76RPPrCIvlmPU-VSk;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    const/4 v6, 0x0

    const-string v2, "\u91cd\u542f\u5929\u7a7a\u7aef\u548c\u5730\u9762\u7aefDL01"

    move-object v0, p1

    .line 2976
    invoke-static/range {v0 .. v6}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto :goto_3

    .line 2987
    :cond_1f
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_20

    .line 2988
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_25

    .line 2989
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$6000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_3

    .line 2991
    :cond_20
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_21

    .line 2992
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    const-string p2, "NEW_USER_GUI"

    invoke-virtual {p1, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    goto :goto_3

    .line 2993
    :cond_21
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_22

    const-string p2, "get_arm_status"

    const-string v0, "-----post get arm status "

    .line 2994
    invoke-static {p2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$6100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_3

    .line 2996
    :cond_22
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_23

    .line 2997
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$6200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_3

    .line 2998
    :cond_23
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_24

    .line 2999
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$6300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    .line 3000
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$6400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    const-string p1, "SWITCH_RECORD_MODE"

    .line 3001
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 3002
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->switchToRecordMode()V

    goto :goto_3

    .line 3003
    :cond_24
    iget p2, p2, Landroid/os/Message;->what:I

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_25

    .line 3004
    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$6500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    :cond_25
    :goto_3
    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 2856
    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/os/Message;)V

    return-void
.end method
