.class public Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;
.super Lcom/powervision/gcs/base/BaseActivity;
.source "ShipCaptureActivity.java"

# interfaces
.implements Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# static fields
.field public static final PARAM_TYPE:Ljava/lang/String; = "param_type"

.field private static final REQUEST_CODE_QRCODE_PERMISSIONS:I = 0x1

.field public static final SCAN_TYPE_REMOTE:I = 0x2

.field public static final SCAN_TYPE_SEEKER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShipCaptureActivity"


# instance fields
.field llTypeRemote:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe85
    .end annotation
.end field

.field llTypeSeeker:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe86
    .end annotation
.end field

.field mImageLight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xdc5
    .end annotation
.end field

.field private mScanType:I

.field mTextBack:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10d1
    .end annotation
.end field

.field mTextBottom:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10d3
    .end annotation
.end field

.field zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1222
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mScanType:I

    return-void
.end method

.method private requestCodeQRCodePermissions()V
    .locals 3
    .annotation runtime Lpub/devrel/easypermissions/AfterPermissionGranted;
        value = 0x1
    .end annotation

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 199
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Msg_142:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static startCaptureActivity(Landroid/app/Activity;I)V
    .locals 2

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "param_type"

    .line 62
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private vibrate()V
    .locals 3

    const-string v0, "vibrator"

    .line 116
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .line 76
    invoke-static {p0}, Lcom/powervision/gcs/utils/ScreenUtils;->setFullScreen(Landroid/app/Activity;)V

    .line 77
    invoke-static {p0}, Lcom/powervision/gcs/utils/ScreenUtils;->noActionBar(Landroid/app/Activity;)V

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 81
    :cond_0
    sget v0, Lcom/powervision/gcs/R$layout;->activity_ship_capture:I

    return v0
.end method

.method protected getIntentData(Landroid/content/Intent;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->getIntentData(Landroid/content/Intent;)V

    const-string v0, "param_type"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mScanType:I

    :cond_0
    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 3

    .line 122
    iget p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mScanType:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 123
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->llTypeSeeker:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->llTypeRemote:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mTextBottom:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_90:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->llTypeSeeker:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->llTypeRemote:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mTextBottom:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_28:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 131
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1, p0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->setDelegate(Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;)V

    .line 132
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mTextBottom:Landroid/widget/TextView;

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipCaptureActivity$TdrDu4tEvBgJpdV_mh-9-u1GifM;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipCaptureActivity$TdrDu4tEvBgJpdV_mh-9-u1GifM;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mTextBack:Landroid/widget/TextView;

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipCaptureActivity$tM8vsyWvKRbCaqSUDJgOybQhaGs;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipCaptureActivity$tM8vsyWvKRbCaqSUDJgOybQhaGs;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mImageLight:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipCaptureActivity$4TycL0XiHNMoY-hN4MCY3dSM8cs;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipCaptureActivity$4TycL0XiHNMoY-hN4MCY3dSM8cs;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initViews$0$ShipCaptureActivity(Landroid/view/View;)V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$initViews$1$ShipCaptureActivity(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initViews$2$ShipCaptureActivity(Landroid/view/View;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mImageLight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->closeFlashlight()V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->openFlashlight()V

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mImageLight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public onCameraAmbientBrightnessChanged(Z)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mImageLight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 164
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mImageLight:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mImageLight:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mImageLight:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->onDestroy()V

    .line 112
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->requestCodeQRCodePermissions()V

    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 186
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startCamera()V

    .line 189
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpotAndShowRect()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 181
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method public onScanQRCodeOpenCameraError()V
    .locals 2

    const-string v0, "ShipCaptureActivity"

    const-string v1, "\u6253\u5f00\u76f8\u673a\u51fa\u9519"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanQRCodeSuccess(Ljava/lang/String;)V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipCaptureActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->vibrate()V

    .line 155
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/model/event/SeekerScanEvent;

    invoke-direct {v1, p1}, Lcom/powervision/gcs/model/event/SeekerScanEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onStart()V

    const-string v0, "android.permission.CAMERA"

    .line 91
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startCamera()V

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpotAndShowRect()V

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->requestCodeQRCodePermissions()V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->stopCamera()V

    .line 106
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onStop()V

    return-void
.end method
