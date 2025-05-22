.class public Lcom/powervision/base/activity/QRControllerMatchActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "QRControllerMatchActivity.java"

# interfaces
.implements Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;


# static fields
.field public static final PARAM_TYPE:Ljava/lang/String; = "param_type"

.field private static final REQUEST_CODE_QRCODE_PERMISSIONS:I = 0x1

.field public static final SCAN_TYPE_REMOTE:I = 0x2

.field public static final SCAN_TYPE_SEEKER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QRControllerMatchActivity"


# instance fields
.field private llTypeRemote:Landroid/widget/LinearLayout;

.field private llTypeSeeker:Landroid/widget/LinearLayout;

.field private mImageLight:Landroid/widget/ImageView;

.field private mScanType:I

.field private mTextBack:Landroid/widget/TextView;

.field private mTextBottom:Landroid/widget/TextView;

.field private zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mScanType:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/activity/QRControllerMatchActivity;)Lcn/bingoogolapple/qrcode/zxing/ZXingView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    return-object p0
.end method

.method public static startCaptureActivity(Landroid/app/Activity;I)V
    .locals 2

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/base/activity/QRControllerMatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "param_type"

    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private vibrate()V
    .locals 3

    const-string v0, "vibrator"

    .line 131
    invoke-virtual {p0, v0}, Lcom/powervision/base/activity/QRControllerMatchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 79
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->setFullScreen(Landroid/app/Activity;)V

    .line 80
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->noActionBar(Landroid/app/Activity;)V

    .line 81
    sget v0, Lcom/powervision/base/R$layout;->activity_qr_controller_match:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/powervision/base/activity/QRControllerMatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "param_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/powervision/base/activity/QRControllerMatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mScanType:I

    :cond_0
    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 4

    .line 86
    sget p1, Lcom/powervision/base/R$id;->zxingview:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/activity/QRControllerMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    iput-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    .line 87
    sget p1, Lcom/powervision/base/R$id;->text_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/activity/QRControllerMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mTextBack:Landroid/widget/TextView;

    .line 88
    sget p1, Lcom/powervision/base/R$id;->text_bottom:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/activity/QRControllerMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mTextBottom:Landroid/widget/TextView;

    .line 89
    sget p1, Lcom/powervision/base/R$id;->image_light:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/activity/QRControllerMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mImageLight:Landroid/widget/ImageView;

    .line 90
    sget p1, Lcom/powervision/base/R$id;->ll_type_remote:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/activity/QRControllerMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->llTypeRemote:Landroid/widget/LinearLayout;

    .line 91
    sget p1, Lcom/powervision/base/R$id;->ll_type_seeker:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/activity/QRControllerMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->llTypeSeeker:Landroid/widget/LinearLayout;

    .line 94
    iget v0, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mScanType:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 95
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->llTypeRemote:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mTextBottom:Landroid/widget/TextView;

    const-string v0, "\u8bf7\u624b\u52a8\u8f93\u5165\u5bfb\u9c7c\u5668PSN\u7801\u6216\u8005\u91cd\u65b0\u626b\u63cfPSN\u7801"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->llTypeRemote:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mTextBottom:Landroid/widget/TextView;

    sget v0, Lcom/powervision/base/R$string;->AP03_GeneralSetting_150:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/activity/QRControllerMatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1, p0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->setDelegate(Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;)V

    .line 104
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mTextBack:Landroid/widget/TextView;

    new-instance v0, Lcom/powervision/base/activity/-$$Lambda$QRControllerMatchActivity$l7f_zXgv0R9OGYHADUaMIbB6FwE;

    invoke-direct {v0, p0}, Lcom/powervision/base/activity/-$$Lambda$QRControllerMatchActivity$l7f_zXgv0R9OGYHADUaMIbB6FwE;-><init>(Lcom/powervision/base/activity/QRControllerMatchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mImageLight:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/base/activity/-$$Lambda$QRControllerMatchActivity$GeTpB5GqnuHadRCr1Yw7mTYYeCs;

    invoke-direct {v0, p0}, Lcom/powervision/base/activity/-$$Lambda$QRControllerMatchActivity$GeTpB5GqnuHadRCr1Yw7mTYYeCs;-><init>(Lcom/powervision/base/activity/QRControllerMatchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initView$0$QRControllerMatchActivity(Landroid/view/View;)V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/powervision/base/activity/QRControllerMatchActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initView$1$QRControllerMatchActivity(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mImageLight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->closeFlashlight()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->openFlashlight()V

    .line 113
    :goto_0
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mImageLight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public onCameraAmbientBrightnessChanged(Z)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mImageLight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mImageLight:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mImageLight:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->mImageLight:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->onDestroy()V

    .line 127
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onScanQRCodeOpenCameraError()V
    .locals 2

    const-string v0, "QRControllerMatchActivity"

    const-string v1, "\u6253\u5f00\u76f8\u673a\u51fa\u9519"

    .line 161
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanQRCodeSuccess(Ljava/lang/String;)V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QRControllerMatchActivity"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v1, 0xc0

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 141
    invoke-direct {p0}, Lcom/powervision/base/activity/QRControllerMatchActivity;->vibrate()V

    .line 142
    invoke-virtual {p0}, Lcom/powervision/base/activity/QRControllerMatchActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 53
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStart()V

    .line 54
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.CAMERA"

    .line 55
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/activity/QRControllerMatchActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/base/activity/QRControllerMatchActivity$1;-><init>(Lcom/powervision/base/activity/QRControllerMatchActivity;)V

    .line 56
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/powervision/base/activity/QRControllerMatchActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->stopCamera()V

    .line 74
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStop()V

    return-void
.end method
