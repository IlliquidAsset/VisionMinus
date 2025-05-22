.class public Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "GuideRemoteControlPaireActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;


# static fields
.field public static final Tag:Ljava/lang/String; = "GuideRemotePairActivity"

.field public static final mRequestCode:I = 0x2710


# instance fields
.field controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

.field private dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

.field private mErrorView:Landroid/widget/TextView;

.field private mInputEditText:Landroid/widget/EditText;

.field private mPairBtn:Landroid/widget/TextView;

.field private mQrScanIv:Landroid/widget/ImageView;

.field private mTopBackView:Landroid/widget/ImageView;

.field private mTopCloseView:Landroid/widget/ImageView;

.field private mTopTitle:Landroid/widget/TextView;

.field private mVideoView:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 302
    new-instance v0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity$2;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity$2;-><init>(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->intoAircraftModeSelect()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->onRemoteControlerDisConnect()V

    return-void
.end method

.method private checkStringEanble(Ljava/lang/String;)Z
    .locals 1

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EggX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "PEM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AP03"

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "100E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private enablePairBtn(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mPairBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$drawable;->guide_next_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mPairBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mErrorView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mPairBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$drawable;->guide_item_grey_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mPairBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$color;->grey_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mErrorView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mPairBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private executePairCode()V
    .locals 7

    .line 148
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "100E"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "GuideRemotePairActivity"

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-eqz v1, :cond_1

    const-string v1, "AP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x6

    if-le v1, v5, :cond_1

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EggX_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    iget-object v5, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v5, v4, v1, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...... click ...ok  ssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "EggX"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "PEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AP03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v1, v4, v0, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    .line 162
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...... click ...ok  trim="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getDl01CallBack(IILjava/lang/String;)V
    .locals 4

    const/4 p3, 0x1

    const-string v0, "peidui_"

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/16 v3, 0xd

    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    const-string p1, " getDl01CallBack() ...t=opereat == 5 && result == 2)"

    .line 260
    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string p2, ""

    invoke-virtual {p1, v3, p2, p3}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    if-ne p2, v1, :cond_1

    const-string p1, " getDl01CallBack() ..13 .....2  "

    .line 263
    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, p3}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->showResultDialog(Z)V

    goto :goto_0

    :cond_1
    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    const/4 p3, 0x0

    .line 267
    invoke-direct {p0, p3}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->showResultDialog(Z)V

    .line 268
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " getDl01CallBack() ...opereat="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  result="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GuideRemotePairActivity"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private initTopViews()V
    .locals 3

    .line 121
    sget v0, Lcom/powervision/home/R$id;->top_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    sget v1, Lcom/powervision/home/R$id;->gudie_top_back_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mTopBackView:Landroid/widget/ImageView;

    .line 123
    sget v1, Lcom/powervision/home/R$id;->gudie_top_close_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mTopCloseView:Landroid/widget/ImageView;

    .line 124
    sget v1, Lcom/powervision/home/R$id;->guide_top_tilte:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mTopTitle:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$string;->AP03_ConnectGuide_28:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V
    .locals 2

    .line 243
    new-instance v0, Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-direct {v0, p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    .line 244
    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    const/16 v0, 0xde

    .line 245
    invoke-virtual {p1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setPlayerType(I)V

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p1, p2, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p2, 0x1

    .line 247
    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setLooping(Z)V

    .line 249
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    sget v0, Lcom/powervision/home/R$drawable;->home_video_white_background:I

    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 251
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    .line 252
    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->imageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 254
    iget-object p2, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setController(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;)V

    const-wide/16 v0, 0x0

    .line 255
    invoke-virtual {p1, v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->start(J)V

    return-void
.end method

.method private intoAircraftModeSelect()V
    .locals 2

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onDeviceConnect()V
    .locals 1

    .line 283
    sget-boolean v0, Lcom/powervision/base/constant/Constant;->ACTIVATION_FLAG:Z

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlPaireActivity$IYtFvOpGWgbaJT5eI8R9josXC0Y;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlPaireActivity$IYtFvOpGWgbaJT5eI8R9josXC0Y;-><init>(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onRemoteControlerDisConnect()V
    .locals 1

    .line 336
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlPaireActivity$RU-9qq6QrU7clXCZEv0-A1fTirM;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlPaireActivity$RU-9qq6QrU7clXCZEv0-A1fTirM;-><init>(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showPairDialog(Z)V
    .locals 9

    .line 166
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$string;->AP03_ConnectGuide_45:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$string;->AP03_ConnectGuide_46:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/home/R$string;->AP03_ConnectGuide_42:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/home/R$string;->AP03_ConnectGuide_43_44_group:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v3, v0

    move-object v4, v1

    .line 172
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/home/R$string;->AP03_Activation_6:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity$1;

    invoke-direct {v7, p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity$1;-><init>(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;)V

    const/4 v8, 0x0

    const-string v6, ""

    move-object v2, p0

    .line 173
    invoke-static/range {v2 .. v8}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method private showResultDialog(Z)V
    .locals 1

    .line 274
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlPaireActivity$qacnjjPIKUTs2lBOKLD5nlwoAKc;

    invoke-direct {v0, p0, p1}, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlPaireActivity$qacnjjPIKUTs2lBOKLD5nlwoAKc;-><init>(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->checkStringEanble(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->enablePairBtn(Z)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  remote pair .. afterTextChanged   s ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GuideRemotePairActivity"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getDl01OperationResult(IILjava/lang/String;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->getDl01CallBack(IILjava/lang/String;)V

    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 83
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->setFullScreen(Landroid/app/Activity;)V

    .line 84
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->noActionBar(Landroid/app/Activity;)V

    .line 85
    sget v0, Lcom/powervision/home/R$layout;->home_activity_guide_remote_controler_paire_layout:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->initTopViews()V

    .line 91
    sget p1, Lcom/powervision/home/R$id;->home_guide_pair_qrcode_scan:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mQrScanIv:Landroid/widget/ImageView;

    .line 92
    sget p1, Lcom/powervision/home/R$id;->home_guide_pair_input:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mInputEditText:Landroid/widget/EditText;

    .line 93
    sget p1, Lcom/powervision/home/R$id;->home_guide_pair_error_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mErrorView:Landroid/widget/TextView;

    .line 94
    sget p1, Lcom/powervision/home/R$id;->home_guide_pair_btn:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mPairBtn:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    sget p1, Lcom/powervision/home/R$id;->home_guide_pair_video_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mVideoView:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 98
    sget v0, Lcom/powervision/home/R$raw;->home_guide_remote_pair_qrcode:I

    invoke-static {v0}, Lcom/powervision/base/utils/CacheUtil;->getRawVideoPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onDeviceConnect$1$GuideRemoteControlPaireActivity()V
    .locals 2

    .line 287
    const-class v0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;

    invoke-static {v0, p0}, Lcom/powervision/base/utils/AppUtils;->isActivityTop(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->startActivity(Landroid/content/Intent;)V

    .line 290
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->finish()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRemoteControlerDisConnect$2$GuideRemoteControlPaireActivity()V
    .locals 2

    .line 337
    const-class v0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;

    invoke-static {v0, p0}, Lcom/powervision/base/utils/AppUtils;->isActivityTop(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->startActivity(Landroid/content/Intent;)V

    .line 340
    sget v0, Lcom/powervision/home/R$string;->AP03_ConnectGuide_52_22:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 341
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->finish()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showResultDialog$0$GuideRemoteControlPaireActivity(Z)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->showPairDialog(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 206
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "qr_result_code"

    .line 208
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    iget-object p2, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->checkStringEanble(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->enablePairBtn(Z)V

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   onActivityResult   inputStr ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GuideRemotePairActivity"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 236
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 131
    sget v0, Lcom/powervision/home/R$id;->home_guide_pair_qrcode_scan:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$string;->AP03_ConnectGuide_34:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2710

    .line 132
    invoke-static {p0, p1, v0, v1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->startConnectScanActivity(Landroid/app/Activity;ILjava/lang/String;I)V

    goto :goto_0

    .line 135
    :cond_0
    sget v0, Lcom/powervision/home/R$id;->home_guide_pair_btn:I

    if-ne p1, v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->executePairCode()V

    goto :goto_0

    .line 137
    :cond_1
    sget v0, Lcom/powervision/home/R$id;->gudie_top_back_iv:I

    if-ne p1, v0, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->onBackPressed()V

    goto :goto_0

    .line 139
    :cond_2
    sget v0, Lcom/powervision/home/R$id;->gudie_top_close_iv:I

    if-ne p1, v0, :cond_3

    .line 140
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->finish()V

    .line 143
    sget p1, Lcom/powervision/home/R$anim;->anim_top_in:I

    sget v0, Lcom/powervision/home/R$anim;->anim_bottom_out:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->overridePendingTransition(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mVideoView:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    .line 73
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->removeSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;)V

    .line 76
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 77
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 78
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->onDeviceConnect()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mVideoView:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/home/R$raw;->home_guide_remote_pair_qrcode:I

    invoke-static {v1}, Lcom/powervision/base/utils/CacheUtil;->getRawVideoPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 104
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mTopBackView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mTopCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mQrScanIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mPairBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 110
    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->addAp03NotifyOnSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;)V

    .line 111
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 112
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    return-void
.end method
