.class public Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "ControllerMatchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;


# static fields
.field private static final Tag:Ljava/lang/String; = "ControllerMatchFragment"


# instance fields
.field private dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

.field private mBack:Landroid/widget/ImageView;

.field private mCloseBt:Landroid/widget/ImageView;

.field private mEditPsn:Landroid/widget/EditText;

.field private mTextPair:Landroid/widget/TextView;

.field private mTextScan:Landroid/widget/TextView;

.field private mTextTips:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 189
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$3;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;Ljava/lang/String;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->checkStringEanble(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->enablePairBtn(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->onRemoteConnectStatusChanged(Z)V

    return-void
.end method

.method private checkStringEanble(Ljava/lang/String;)Z
    .locals 1

    .line 126
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

    .line 127
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

    .line 115
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mTextPair:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$drawable;->guide_next_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mTextPair:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mTextPair:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$drawable;->guide_item_grey_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mTextPair:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->grey_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mTextPair:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->getDl01GrondConnectStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private executePairCode()V
    .locals 7

    .line 152
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mEditPsn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "100E"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ControllerMatchFragment"

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

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EggX_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v5, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v5, v4, v1, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    .line 161
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

    .line 163
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

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v1, v4, v0, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    .line 166
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
    .locals 2

    const/4 p3, 0x2

    const/4 v0, 0x5

    const/16 v1, 0xd

    if-ne p1, v0, :cond_0

    if-ne p2, p3, :cond_0

    .line 171
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 p2, 0x1

    const-string p3, ""

    invoke-virtual {p1, v1, p3, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    if-ne p2, p3, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 175
    new-instance p2, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$ControllerMatchFragment$kZG00ux8PiD3Y2Uhi0o3X8PxELo;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$ControllerMatchFragment$kZG00ux8PiD3Y2Uhi0o3X8PxELo;-><init>(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    .line 179
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " getAirDl01CallBack() ...opereat="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  result="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ControllerMatchFragment"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onRemoteConnectStatusChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x1f4

    .line 237
    invoke-static {v0, v1}, Lcom/powervision/base/utils/UpdateUtils;->lowFrequencyUpdate(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 244
    :cond_1
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$ControllerMatchFragment$qMFf9tldHToW5S_6ikYMAKaY3Kc;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$ControllerMatchFragment$qMFf9tldHToW5S_6ikYMAKaY3Kc;-><init>(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getDl01OperationResult(IILjava/lang/String;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->getDl01CallBack(IILjava/lang/String;)V

    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 48
    sget v0, Lcom/powervision/aircraft/R$layout;->fragment_controller_match:I

    return v0
.end method

.method public getScanText(Landroid/util/SparseArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xc0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mEditPsn:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->checkStringEanble(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->enablePairBtn(Z)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->enablePairBtn(Z)V

    :goto_0
    return-void
.end method

.method protected initData()V
    .locals 2

    .line 80
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mTextScan:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mEditPsn:Landroid/widget/EditText;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mCloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mTextPair:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mTitle:Landroid/widget/TextView;

    .line 54
    sget p1, Lcom/powervision/aircraft/R$id;->edit_psn:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mEditPsn:Landroid/widget/EditText;

    .line 55
    sget p1, Lcom/powervision/aircraft/R$id;->text_pair:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mTextPair:Landroid/widget/TextView;

    .line 56
    sget p1, Lcom/powervision/aircraft/R$id;->text_scan:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mTextScan:Landroid/widget/TextView;

    .line 57
    sget p1, Lcom/powervision/aircraft/R$id;->text_tip:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mTextTips:Landroid/widget/TextView;

    .line 58
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mBack:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mCloseBt:Landroid/widget/ImageView;

    .line 62
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_ConnectGuide_28:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->enablePairBtn(Z)V

    return-void
.end method

.method public synthetic lambda$getDl01CallBack$0$ControllerMatchFragment()V
    .locals 1

    .line 175
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_146:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onRemoteConnectStatusChanged$1$ControllerMatchFragment(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 246
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->mEditPsn:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->checkStringEanble(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->enablePairBtn(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 252
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->enablePairBtn(Z)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 141
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    if-ne p1, v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x6a

    invoke-static {p1, v0}, Lcom/powervision/aircraft/utils/SettingUtils;->removeSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    goto :goto_0

    .line 144
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    if-ne p1, v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_0

    .line 146
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->text_pair:I

    if-ne p1, v0, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->executePairCode()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 225
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->removeSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 232
    :cond_1
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 133
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 134
    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->addAp03NotifyOnSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;)V

    .line 135
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    return-void
.end method
