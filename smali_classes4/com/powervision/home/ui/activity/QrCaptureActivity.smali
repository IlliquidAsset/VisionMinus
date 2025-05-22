.class public Lcom/powervision/home/ui/activity/QrCaptureActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "QrCaptureActivity.java"

# interfaces
.implements Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;


# static fields
.field public static final PARAM_TYPE:Ljava/lang/String; = "param_type"

.field public static final QR_REQUEST_CODE:Ljava/lang/String; = "qr_request_code"

.field public static final QR_RESULT_CODE:Ljava/lang/String; = "qr_result_code"

.field private static final REQUEST_CODE_QRCODE_PERMISSIONS:I = 0x1

.field public static final SCAN_TYPE_AIRCRAFT:I = 0x0

.field public static final SCAN_TYPE_DV:I = 0x1

.field public static final TITLE_CONTENT:Ljava/lang/String; = "param_title"

.field private static final Tag:Ljava/lang/String; = "QrCaptureActivity"


# instance fields
.field isLight:Z

.field public ivClose:Landroid/widget/ImageView;

.field private mBottomTitle:Landroid/widget/TextView;

.field private mIvLightState:Landroid/widget/ImageView;

.field private mLight:Landroid/widget/RelativeLayout;

.field private mQrLightText:Landroid/widget/TextView;

.field private mScanType:I

.field private mTilteContent:Ljava/lang/String;

.field private mTopTitle:Landroid/widget/TextView;

.field public zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->isLight:Z

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mScanType:I

    return-void
.end method

.method private onDeviceConnect()V
    .locals 1

    .line 240
    sget-boolean v0, Lcom/powervision/base/constant/Constant;->ACTIVATION_FLAG:Z

    if-eqz v0, :cond_0

    return-void

    .line 243
    :cond_0
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$QrCaptureActivity$jMoRcMfAuuh6kq17pzk79WJkzZo;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$QrCaptureActivity$jMoRcMfAuuh6kq17pzk79WJkzZo;-><init>(Lcom/powervision/home/ui/activity/QrCaptureActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startConnectScanActivity(Landroid/app/Activity;ILjava/lang/String;I)V
    .locals 2

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/home/ui/activity/QrCaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "param_type"

    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "param_title"

    .line 67
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startConnectScanActivity(Landroidx/fragment/app/Fragment;ILjava/lang/String;I)V
    .locals 2

    .line 73
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/powervision/home/ui/activity/QrCaptureActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "param_type"

    .line 74
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private vibrate()V
    .locals 3

    const-string v0, "vibrator"

    .line 164
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method private workLightStateFun(Z)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mIvLightState:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget v1, Lcom/powervision/home/R$mipmap;->home_guide_qr_light_icon_true:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/powervision/home/R$mipmap;->home_guide_qr_light_icon_false:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mQrLightText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/home/R$string;->AP03_ConnectGuide_88_1:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/home/R$string;->AP03_ConnectGuide_88:I

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 82
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->setFullScreen(Landroid/app/Activity;)V

    .line 83
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->noActionBar(Landroid/app/Activity;)V

    .line 84
    sget v0, Lcom/powervision/home/R$layout;->home_activity_qr_capture:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "param_type"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mScanType:I

    const-string v0, "param_title"

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mTilteContent:Ljava/lang/String;

    .line 95
    :cond_0
    sget p1, Lcom/powervision/home/R$id;->zxingview:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    .line 96
    invoke-virtual {p1, p0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->setDelegate(Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;)V

    .line 98
    sget p1, Lcom/powervision/home/R$id;->iv_close:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->ivClose:Landroid/widget/ImageView;

    .line 100
    sget p1, Lcom/powervision/home/R$id;->bottom_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mBottomTitle:Landroid/widget/TextView;

    .line 102
    sget p1, Lcom/powervision/home/R$id;->qr_light_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mLight:Landroid/widget/RelativeLayout;

    .line 103
    sget p1, Lcom/powervision/home/R$id;->qr_light_icon:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mIvLightState:Landroid/widget/ImageView;

    .line 104
    sget p1, Lcom/powervision/home/R$id;->top_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mTopTitle:Landroid/widget/TextView;

    .line 105
    sget p1, Lcom/powervision/home/R$id;->qr_light_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mQrLightText:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 107
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->workLightStateFun(Z)V

    return-void
.end method

.method public synthetic lambda$onDeviceConnect$0$QrCaptureActivity()V
    .locals 2

    .line 244
    const-class v0, Lcom/powervision/home/ui/activity/QrCaptureActivity;

    invoke-static {v0, p0}, Lcom/powervision/base/utils/AppUtils;->isActivityTop(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->finish()V

    .line 248
    sget v0, Lcom/powervision/home/R$anim;->anim_top_in:I

    sget v1, Lcom/powervision/home/R$anim;->anim_bottom_out:I

    invoke-virtual {p0, v0, v1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onCameraAmbientBrightnessChanged(Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 191
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 195
    sget v0, Lcom/powervision/home/R$id;->qr_light_layout:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 196
    iget-boolean p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->isLight:Z

    if-nez p1, :cond_1

    .line 197
    iget-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->openFlashlight()V

    .line 198
    invoke-direct {p0, v1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->workLightStateFun(Z)V

    .line 200
    iput-boolean v1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->isLight:Z

    goto :goto_0

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->closeFlashlight()V

    const/4 p1, 0x0

    .line 203
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->workLightStateFun(Z)V

    .line 205
    iput-boolean p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->isLight:Z

    goto :goto_0

    .line 207
    :cond_2
    sget v0, Lcom/powervision/home/R$id;->iv_close:I

    if-ne p1, v0, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->finish()V

    goto :goto_0

    .line 209
    :cond_3
    sget v0, Lcom/powervision/home/R$id;->bottom_title_tv:I

    if-ne p1, v0, :cond_5

    .line 210
    iget p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mScanType:I

    if-ne p1, v1, :cond_4

    .line 211
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->onDestroy()V

    .line 235
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 236
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->onDeviceConnect()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->closeFlashlight()V

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->workLightStateFun(Z)V

    .line 227
    iput-boolean v0, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->isLight:Z

    .line 228
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 220
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    return-void
.end method

.method public onScanQRCodeOpenCameraError()V
    .locals 0

    return-void
.end method

.method public onScanQRCodeSuccess(Ljava/lang/String;)V
    .locals 2

    .line 170
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->vibrate()V

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "qr_result_code"

    .line 172
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 174
    invoke-virtual {p0, v1, v0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " retult ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QrCaptureActivity"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 131
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStart()V

    .line 132
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.CAMERA"

    .line 133
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/activity/QrCaptureActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/QrCaptureActivity$1;-><init>(Lcom/powervision/home/ui/activity/QrCaptureActivity;)V

    .line 134
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->stopCamera()V

    .line 159
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStop()V

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 123
    iget-object v0, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mLight:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->mBottomTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    return-void
.end method
