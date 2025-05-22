.class public Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "CameraBasicSettingFragment.java"

# interfaces
.implements Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;
    }
.end annotation


# static fields
.field public static final CAMERA_COMMOND:Ljava/lang/String; = "commond"

.field public static final CAMERA_ITEMS:Ljava/lang/String; = "items"

.field public static final CAMERA_TITLE:Ljava/lang/String; = "title"

.field public static final CAMERA_TYPE:Ljava/lang/String; = "type"

.field public static final CAMERA_TYPE_NOCHILD:Ljava/lang/String; = "noChild"

.field public static final CAMERA_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field public static final CAMERA_TYPE_SIDE:Ljava/lang/String; = "slide"

.field public static final CAMERA_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "CameraBasicSettingFragm"


# instance fields
.field private final SHIP_CAMERA_EV_VALUSE:I

.field private final SHIP_CAMERA_ISO_VALUSE:I

.field private final SHIP_CAMERA_LDC_VALUSE:I

.field private final SHIP_CAMERA_MM_VALUSE:I

.field private final SHIP_CAMERA_REVERSAL_VALUSE:I

.field private final SHIP_CAMERA_SHAKE_VALUSE:I

.field private final SHIP_CAMERA_WB_VALUSE:I

.field evAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

.field evParameterArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isoAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

.field isoParameterArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ldcAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

.field ldcParameterArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentEvIndex:I

.field private mCurrentIsoIndex:I

.field private mCurrentLdcIndex:I

.field private mCurrentMmIndex:I

.field private mCurrentWbIndex:I

.field private mHandler:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;

.field private mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;

.field mmAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

.field mmParameterArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field shipCamaraBasicLdc:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfd5
    .end annotation
.end field

.field shipCameraBasicEvHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfd3
    .end annotation
.end field

.field shipCameraBasicEvValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfe9
    .end annotation
.end field

.field shipCameraBasicIsoHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfd4
    .end annotation
.end field

.field shipCameraBasicIsoValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfea
    .end annotation
.end field

.field shipCameraBasicLdcValues:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfeb
    .end annotation
.end field

.field shipCameraBasicMmHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfd6
    .end annotation
.end field

.field shipCameraBasicMmValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfec
    .end annotation
.end field

.field shipCameraBasicWbHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfd7
    .end annotation
.end field

.field shipCameraBasicWbValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfee
    .end annotation
.end field

.field shipCameraReversalSwitch:Landroid/widget/ToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xff2
    .end annotation
.end field

.field shipCameraShakeSwitch:Landroid/widget/ToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xff3
    .end annotation
.end field

.field wbAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

.field wbParameterArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 448
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->SHIP_CAMERA_ISO_VALUSE:I

    const/4 v0, 0x1

    .line 96
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->SHIP_CAMERA_EV_VALUSE:I

    const/4 v0, 0x2

    .line 97
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->SHIP_CAMERA_WB_VALUSE:I

    const/4 v0, 0x3

    .line 98
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->SHIP_CAMERA_MM_VALUSE:I

    const/4 v0, 0x4

    .line 99
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->SHIP_CAMERA_LDC_VALUSE:I

    const/4 v0, 0x5

    .line 100
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->SHIP_CAMERA_SHAKE_VALUSE:I

    const/4 v0, 0x6

    .line 101
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->SHIP_CAMERA_REVERSAL_VALUSE:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "0"

    const-string v2, "100"

    const-string v3, "200"

    const-string v4, "400"

    const-string v5, "800"

    const-string v6, "1600"

    const-string v7, "3200"

    const-string v8, "6400"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->isoParameterArray:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->evParameterArray:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->wbParameterArray:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "0"

    const-string v2, "1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mmParameterArray:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->ldcParameterArray:Ljava/util/List;

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentIsoIndex:I

    .line 110
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentEvIndex:I

    .line 111
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentWbIndex:I

    .line 112
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentMmIndex:I

    .line 113
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentLdcIndex:I

    .line 122
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mHandler:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;Landroid/os/Message;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentIsoIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentIsoIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mHandler:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentEvIndex:I

    return p0
.end method

.method static synthetic access$502(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentEvIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentWbIndex:I

    return p0
.end method

.method static synthetic access$602(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentWbIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentMmIndex:I

    return p0
.end method

.method static synthetic access$702(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentMmIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentLdcIndex:I

    return p0
.end method

.method static synthetic access$802(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentLdcIndex:I

    return p1
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 2

    .line 399
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 435
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 439
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;->setLDCParameter(I)V

    .line 441
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->ldcAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setHighlight(I)V

    goto :goto_0

    .line 427
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 431
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;->setMMParameter(I)V

    .line 432
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mmAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setHighlight(I)V

    goto :goto_0

    .line 420
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 421
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;->setWbParameter(I)V

    .line 424
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->wbAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setHighlight(I)V

    goto :goto_0

    .line 412
    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 413
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;->setEvParameter(I)V

    .line 416
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->evAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setHighlight(I)V

    goto :goto_0

    .line 404
    :cond_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 405
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;->setISOParameter(I)V

    .line 408
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->isoAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setHighlight(I)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public initData()V
    .locals 5

    .line 618
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$array;->ship_camera_iso:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 620
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->isoAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    .line 621
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicIsoHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setViewAdapter(Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;)V

    .line 637
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$array;->ship_camera_ev:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 639
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->evAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    .line 640
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicEvHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setViewAdapter(Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;)V

    .line 641
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicEvHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V

    .line 642
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->evAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setHighlight(I)V

    .line 658
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$array;->ship_common_awb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 660
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->wbAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    .line 661
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicWbHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setViewAdapter(Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;)V

    .line 677
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$array;->ship_common_metering_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 679
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mmAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    .line 680
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/LanguageUtils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v2, 0x43000000    # 128.0f

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mmAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setLayoutWidth(I)V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicMmHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    iget-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mmAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v0, v3}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setViewAdapter(Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;)V

    .line 697
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/powervision/gcs/R$array;->ship_common_ldc_mode:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 699
    new-instance v3, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->ldcAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    .line 700
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/LanguageUtils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->ldcAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setLayoutWidth(I)V

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCamaraBasicLdc:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->ldcAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setViewAdapter(Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;)V

    .line 707
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->initListener()V

    return-void
.end method

.method public initListener()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicIsoHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$CameraBasicSettingFragment$iaj7o5E_zaX5W0NxRPvCbn0GQMU;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$CameraBasicSettingFragment$iaj7o5E_zaX5W0NxRPvCbn0GQMU;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->addClickingListener(Lcom/powervision/gcs/view/wheelview/OnWheelClickedListener;)V

    .line 477
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicIsoHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$3;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->addScrollingListener(Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;)V

    .line 501
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicEvHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$CameraBasicSettingFragment$av-XfPaJIcHa_nPow8vFmjdgLuE;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$CameraBasicSettingFragment$av-XfPaJIcHa_nPow8vFmjdgLuE;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->addClickingListener(Lcom/powervision/gcs/view/wheelview/OnWheelClickedListener;)V

    .line 505
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicEvHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->addScrollingListener(Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;)V

    .line 530
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicWbHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$CameraBasicSettingFragment$hQ2ZEiSCzbIxtxpnPCZeh_y97eg;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$CameraBasicSettingFragment$hQ2ZEiSCzbIxtxpnPCZeh_y97eg;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->addClickingListener(Lcom/powervision/gcs/view/wheelview/OnWheelClickedListener;)V

    .line 534
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicWbHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$5;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$5;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->addScrollingListener(Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;)V

    .line 558
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicMmHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$CameraBasicSettingFragment$Eg8hWLIpNjlHEdDMUADs-_RtOu4;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$CameraBasicSettingFragment$Eg8hWLIpNjlHEdDMUADs-_RtOu4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->addClickingListener(Lcom/powervision/gcs/view/wheelview/OnWheelClickedListener;)V

    .line 562
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicMmHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$6;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$6;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->addScrollingListener(Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;)V

    .line 586
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCamaraBasicLdc:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$CameraBasicSettingFragment$8Hndk-MEMfmCOz9_89eP4Yd5P6o;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$CameraBasicSettingFragment$8Hndk-MEMfmCOz9_89eP4Yd5P6o;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->addClickingListener(Lcom/powervision/gcs/view/wheelview/OnWheelClickedListener;)V

    .line 590
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCamaraBasicLdc:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$7;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$7;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->addScrollingListener(Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 454
    sget p1, Lcom/powervision/gcs/R$layout;->gcs_ship_camera_basic_setting_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->setContentView(I)V

    return-void
.end method

.method public synthetic lambda$initListener$0$CameraBasicSettingFragment(Lcom/powervision/gcs/view/wheelview/AbstractWheel;I)V
    .locals 1

    .line 474
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicIsoHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(IZ)V

    return-void
.end method

.method public synthetic lambda$initListener$1$CameraBasicSettingFragment(Lcom/powervision/gcs/view/wheelview/AbstractWheel;I)V
    .locals 1

    .line 502
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicEvHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(IZ)V

    return-void
.end method

.method public synthetic lambda$initListener$2$CameraBasicSettingFragment(Lcom/powervision/gcs/view/wheelview/AbstractWheel;I)V
    .locals 1

    .line 531
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicWbHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(IZ)V

    return-void
.end method

.method public synthetic lambda$initListener$3$CameraBasicSettingFragment(Lcom/powervision/gcs/view/wheelview/AbstractWheel;I)V
    .locals 1

    .line 559
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicMmHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(IZ)V

    return-void
.end method

.method public synthetic lambda$initListener$4$CameraBasicSettingFragment(Lcom/powervision/gcs/view/wheelview/AbstractWheel;I)V
    .locals 1

    .line 587
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCamaraBasicLdc:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(IZ)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/gcs/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 1

    .line 459
    invoke-static {p0}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask;->create(Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;)Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;

    .line 460
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 461
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->initData()V

    .line 463
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object p1

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/CmdModel$Builder;->getAllParameter()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public updateAllParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4AllParams;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v0, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget-object v0, v0, Lcom/powervision/localhttp/entity/PVW4AllParams;->iso:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->isoParameterArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 147
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentIsoIndex:I

    .line 148
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->isoAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setHighlight(I)V

    .line 149
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicIsoHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V

    .line 152
    iget-object v0, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v0, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget-object v0, v0, Lcom/powervision/localhttp/entity/PVW4AllParams;->ev:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->evParameterArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    .line 158
    :cond_1
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentEvIndex:I

    .line 159
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->evAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setHighlight(I)V

    .line 160
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicEvHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V

    .line 162
    iget-object v0, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v0, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget-object v0, v0, Lcom/powervision/localhttp/entity/PVW4AllParams;->white_balance:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->wbParameterArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->wbAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setHighlight(I)V

    .line 165
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentWbIndex:I

    .line 166
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicWbHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V

    .line 169
    iget-object v0, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v0, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget-object v0, v0, Lcom/powervision/localhttp/entity/PVW4AllParams;->ldc_val:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->ldcParameterArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 171
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentLdcIndex:I

    .line 172
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->ldcAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setHighlight(I)V

    .line 173
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCamaraBasicLdc:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V

    .line 176
    iget-object v0, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v0, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget-object v0, v0, Lcom/powervision/localhttp/entity/PVW4AllParams;->metering_mode:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mmParameterArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 178
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mCurrentMmIndex:I

    .line 179
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mmAdapter:Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->setHighlight(I)V

    .line 180
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicMmHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V

    .line 182
    iget-object v0, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v0, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget-object v0, v0, Lcom/powervision/localhttp/entity/PVW4AllParams;->flip_val:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraReversalSwitch:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 185
    iget-object p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4AllParams;->dis_val:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 186
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraShakeSwitch:Landroid/widget/ToggleButton;

    if-ne p1, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 188
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraReversalSwitch:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraShakeSwitch:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public updateEvParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Ev;",
            ">;)V"
        }
    .end annotation

    .line 217
    iget-object p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4Ev;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4Ev;->normal_photo_exposure_EVVal:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->evParameterArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 223
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicEvHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V

    return-void
.end method

.method public updateEvParameterValue(Ljava/lang/String;)V
    .locals 2

    .line 287
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Success"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/powervision/gcs/model/ship/ShipCameraEv;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/ShipCameraEv;

    .line 291
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraEv;->getParameter()Lcom/powervision/gcs/model/ship/ShipCameraEv$ParameterBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraEv$ParameterBean;->getNormal_photo_exposure_EVVal()Ljava/lang/String;

    move-result-object p1

    .line 293
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->evParameterArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicEvHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public updateISOParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Iso;",
            ">;)V"
        }
    .end annotation

    .line 207
    iget-object p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4Iso;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4Iso;->normal_photo_exposure_isoVal:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->isoParameterArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 211
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicIsoHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V

    return-void
.end method

.method public updateISOParameterValue(Ljava/lang/String;)V
    .locals 2

    .line 272
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Success"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/powervision/gcs/model/ship/ShipCameraIso;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/ShipCameraIso;

    .line 275
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraIso;->getParameter()Lcom/powervision/gcs/model/ship/ShipCameraIso$ParameterBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraIso$ParameterBean;->getNormal_photo_exposure_isoVal()Ljava/lang/String;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->isoParameterArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 277
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicIsoHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public updateLDCParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Ldc;",
            ">;)V"
        }
    .end annotation

    .line 237
    iget-object p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4Ldc;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4Ldc;->var_enable:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->ldcParameterArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 240
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCamaraBasicLdc:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLDCParameterValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraBasicSettingFragm"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLDCParameterValue(Ljava/lang/String;)V
    .locals 2

    .line 341
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Success"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/powervision/gcs/model/ship/ShipCameraLDC;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/ShipCameraLDC;

    .line 345
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraLDC;->getParameter()Lcom/powervision/gcs/model/ship/ShipCameraLDC$ParameterBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraLDC$ParameterBean;->get_$VarEnable110()Ljava/lang/String;

    move-result-object p1

    .line 347
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->ldcParameterArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 348
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCamaraBasicLdc:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public updateMMParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Ttl;",
            ">;)V"
        }
    .end annotation

    .line 247
    iget-object p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4Ttl;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4Ttl;->normal_photo_exposure_metryVal:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mmParameterArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 250
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicMmHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V

    return-void
.end method

.method public updateMMParameterValue(Ljava/lang/String;)V
    .locals 2

    .line 324
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Success"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode;

    .line 328
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode;->getParameter()Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;->getNormal_photo_exposure_metryVal()Ljava/lang/String;

    move-result-object p1

    .line 330
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->mmParameterArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 331
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicMmHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public updateReversalParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Flip;",
            ">;)V"
        }
    .end annotation

    .line 256
    iget-object p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4Flip;

    iget p1, p1, Lcom/powervision/localhttp/entity/PVW4Flip;->var_enable:I

    .line 258
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraReversalSwitch:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method public updateReversalParameterValue(Ljava/lang/String;)V
    .locals 2

    .line 358
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Success"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/powervision/gcs/model/ship/ShipCameraReversal;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/ShipCameraReversal;

    .line 361
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraReversal;->getParameter()Lcom/powervision/gcs/model/ship/ShipCameraReversal$ParameterBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraReversal$ParameterBean;->get_$VarEnable85()I

    move-result p1

    .line 363
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraReversalSwitch:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public updateShakeParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Dis;",
            ">;)V"
        }
    .end annotation

    .line 264
    iget-object p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4Dis;

    iget p1, p1, Lcom/powervision/localhttp/entity/PVW4Dis;->var_enable:I

    .line 266
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraShakeSwitch:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method public updateShakeParameterValue(Ljava/lang/String;)V
    .locals 2

    .line 373
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Success"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/powervision/gcs/model/ship/ShipCameraShake;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/ShipCameraShake;

    .line 376
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraShake;->getParameter()Lcom/powervision/gcs/model/ship/ShipCameraShake$ParameterBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraShake$ParameterBean;->get_$VarEnable71()I

    move-result p1

    .line 378
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraShakeSwitch:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public updateWbParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Wb;",
            ">;)V"
        }
    .end annotation

    .line 229
    iget-object p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4Wb;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4Wb;->normal_photo_exposure_wbVal:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->wbParameterArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 232
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicWbHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V

    return-void
.end method

.method public updateWbParameterValue(Ljava/lang/String;)V
    .locals 2

    .line 307
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Success"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/powervision/gcs/model/ship/ShipCameraWB;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/ShipCameraWB;

    .line 311
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraWB;->getParameter()Lcom/powervision/gcs/model/ship/ShipCameraWB$ParameterBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipCameraWB$ParameterBean;->getNormal_photo_exposure_wbVal()Ljava/lang/String;

    move-result-object p1

    .line 313
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->wbParameterArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 314
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicWbHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
