.class public Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "ShipCommonMaintenanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$ElectronicHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipCommonMaintenanceFr"


# instance fields
.field private final GETSPEEDCONSUC:I

.field private final electroCenter:I

.field private final electroLeft:I

.field private final electroRight:I

.field private electronicHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$ElectronicHandler;

.field electronicLeftPgb:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0xd09
    .end annotation
.end field

.field electronicLifeLeftIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xd0a
    .end annotation
.end field

.field electronicLifeLeftLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xd0b
    .end annotation
.end field

.field electronicLifeLeftTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xd0c
    .end annotation
.end field

.field private leftElectronicLife:I

.field listener:Lcom/powervision/natives/callback/RayCallback$ElectronicSpeedControlListener;

.field private rightElectronicLife:I

.field shipElectronicRightIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1001
    .end annotation
.end field

.field shipElectronicRightLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1002
    .end annotation
.end field

.field shipElectronicRightPgb:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1003
    .end annotation
.end field

.field shipElectronicRightTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1004
    .end annotation
.end field

.field tvAdjustItem:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1153
    .end annotation
.end field

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->GETSPEEDCONSUC:I

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electroLeft:I

    .line 59
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electroRight:I

    const/4 v0, 0x2

    .line 60
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electroCenter:I

    .line 62
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$ElectronicHandler;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$ElectronicHandler;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electronicHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$ElectronicHandler;

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->leftElectronicLife:I

    .line 92
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->rightElectronicLife:I

    .line 151
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->listener:Lcom/powervision/natives/callback/RayCallback$ElectronicSpeedControlListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;Landroid/os/Message;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$ElectronicHandler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electronicHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$ElectronicHandler;

    return-object p0
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 6

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 97
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    mul-long v2, v2, v4

    long-to-float v2, v2

    const v3, 0x4b895440    # 1.8E7f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 98
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    .line 99
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->leftElectronicLife:I

    goto :goto_0

    .line 102
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_2

    .line 103
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->rightElectronicLife:I

    .line 111
    :cond_2
    :goto_0
    iget p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->leftElectronicLife:I

    const/4 v0, -0x1

    if-eq v0, p1, :cond_3

    iget p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->rightElectronicLife:I

    if-eq v0, p1, :cond_3

    .line 112
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electronicLifeLeftTxt:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->leftElectronicLife:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electronicLeftPgb:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->leftElectronicLife:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 115
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->shipElectronicRightTxt:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->rightElectronicLife:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->shipElectronicRightPgb:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->rightElectronicLife:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 129
    sget p1, Lcom/powervision/gcs/R$layout;->gcs_ship_common_maintenance_item:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 165
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 146
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 139
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onResume()V

    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public rl_adjust_item()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xf71
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    sget v0, Lcom/powervision/gcs/R$string;->MediaLib_7:I

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-boolean v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->isShipArm:Z

    if-nez v0, :cond_1

    .line 71
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_155:I

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void

    .line 75
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
