.class public Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;
.super Lcom/powervision/gcs/base/BaseActivity;
.source "ConnectScanActivity.java"

# interfaces
.implements Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# static fields
.field public static final PARAM_TYPE:Ljava/lang/String; = "param_type"

.field private static final REQUEST_CODE_QRCODE_PERMISSIONS:I = 0x1

.field public static final SCAN_TYPE_REMOTE:I = 0x2

.field public static final SCAN_TYPE_SEEKER:I = 0x1


# instance fields
.field private mIvClose:Landroid/widget/ImageView;

.field private mScanType:I

.field private mTextBottom:Landroid/widget/TextView;

.field private mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mScanType:I

    return-void
.end method

.method private requestCodeQRCodePermissions()V
    .locals 3
    .annotation runtime Lpub/devrel/easypermissions/AfterPermissionGranted;
        value = 0x1
    .end annotation

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 151
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Msg_142:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static startConnectScanActivity(Landroid/app/Activity;I)V
    .locals 2

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "param_type"

    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private vibrate()V
    .locals 3

    const-string v0, "vibrator"

    .line 106
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .line 56
    invoke-static {p0}, Lcom/powervision/gcs/utils/ScreenUtils;->setFullScreen(Landroid/app/Activity;)V

    .line 57
    invoke-static {p0}, Lcom/powervision/gcs/utils/ScreenUtils;->noActionBar(Landroid/app/Activity;)V

    .line 58
    sget v0, Lcom/powervision/gcs/R$layout;->activity_connect_scan:I

    return v0
.end method

.method protected getIntentData(Landroid/content/Intent;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->getIntentData(Landroid/content/Intent;)V

    const-string v0, "param_type"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mScanType:I

    :cond_0
    return-void
.end method

.method public initViewById()V
    .locals 1

    .line 162
    sget v0, Lcom/powervision/gcs/R$id;->zxingview:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    .line 163
    sget v0, Lcom/powervision/gcs/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mIvClose:Landroid/widget/ImageView;

    .line 164
    sget v0, Lcom/powervision/gcs/R$id;->text_bottom:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mTextBottom:Landroid/widget/TextView;

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->initViewById()V

    .line 65
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1, p0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->setDelegate(Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;)V

    .line 66
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mIvClose:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectScanActivity$I4XCY4j7O54disIbqP8PJ8qDcwQ;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectScanActivity$I4XCY4j7O54disIbqP8PJ8qDcwQ;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mTextBottom:Landroid/widget/TextView;

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectScanActivity$0Ju2-9zz8SKnPXUNvWnWQH_GDTE;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectScanActivity$0Ju2-9zz8SKnPXUNvWnWQH_GDTE;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initViews$0$ConnectScanActivity(Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$initViews$1$ConnectScanActivity(Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->onBackPressed()V

    return-void
.end method

.method public onCameraAmbientBrightnessChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->onDestroy()V

    .line 102
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onDestroy()V

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

    .line 146
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->requestCodeQRCodePermissions()V

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

    .line 138
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startCamera()V

    .line 141
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpotAndShowRect()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 133
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 87
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onResume()V

    return-void
.end method

.method public onReturnClick(Landroid/view/View;)V
    .locals 0

    .line 158
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->finish()V

    return-void
.end method

.method public onScanQRCodeOpenCameraError()V
    .locals 0

    return-void
.end method

.method public onScanQRCodeSuccess(Ljava/lang/String;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->vibrate()V

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "code"

    .line 114
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->setResult(ILandroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onStart()V

    const-string v0, "android.permission.CAMERA"

    .line 73
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startCamera()V

    .line 78
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpotAndShowRect()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->requestCodeQRCodePermissions()V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->stopCamera()V

    .line 96
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onStop()V

    return-void
.end method
