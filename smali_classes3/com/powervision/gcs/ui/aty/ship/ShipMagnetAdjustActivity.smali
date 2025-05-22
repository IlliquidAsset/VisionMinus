.class public Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;
.super Lcom/powervision/gcs/base/BaseActivity;
.source "ShipMagnetAdjustActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final BACK_DETECTED:I = 0x3

.field private static final BACK_DONE:I = 0x4

.field private static final CALD_CANCELED:I = 0x102

.field private static final CALD_FAILED:I = 0x101

.field private static final CALD_SUCCESS:I = 0x100

.field private static final DOWN_DETECTED:I = 0x7

.field private static final DOWN_DONE:I = 0x8

.field private static final FRONT_DETECTED:I = 0x1

.field private static final FRONT_DONE:I = 0x2

.field private static final LEFT_DETECTED:I = 0x9

.field private static final LEFT_DONE:I = 0x10

.field private static final RIGHT_DETECTED:I = 0x11

.field private static final RIGHT_DONE:I = 0x12

.field private static final UP_DETECTED:I = 0x5

.field private static final UP_DONE:I = 0x6


# instance fields
.field private calImgs:[Landroid/widget/ImageView;

.field flClose:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xd27
    .end annotation
.end field

.field ivFrontBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xdfd
    .end annotation
.end field

.field ivLeftRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe0a
    .end annotation
.end field

.field ivUpDown:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe1f
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private magnetometerCalibrateListener:Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

.field relativelayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf54
    .end annotation
.end field

.field private resIdGreen:[I

.field private resIdRed:[I

.field private resIdYellow:[I

.field tvCurrentState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x116e
    .end annotation
.end field

.field tvMagnetAdjustTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1186
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$MyHandler;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->mHandler:Landroid/os/Handler;

    .line 222
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->magnetometerCalibrateListener:Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;Landroid/os/Message;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 3

    .line 104
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x101

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 163
    :pswitch_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdGreen:[I

    aget v0, v1, v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 157
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->tvCurrentState:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_95:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdYellow:[I

    aget v0, v1, v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 154
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdGreen:[I

    aget v0, v1, v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 148
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->tvCurrentState:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_95:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdYellow:[I

    aget v0, v1, v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 142
    :pswitch_4
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdGreen:[I

    aget v0, v0, v1

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 135
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->tvCurrentState:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_94:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdYellow:[I

    aget v0, v0, v1

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 132
    :pswitch_6
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdGreen:[I

    aget v0, v0, v1

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 128
    :pswitch_7
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->tvCurrentState:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_94:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdYellow:[I

    aget v0, v0, v1

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 124
    :pswitch_8
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v2

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdGreen:[I

    aget v0, v0, v2

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 118
    :pswitch_9
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->tvCurrentState:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_93:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v2

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdYellow:[I

    aget v0, v0, v2

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 113
    :pswitch_a
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v2

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdGreen:[I

    aget v0, v0, v2

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->tvCurrentState:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :pswitch_b
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v2

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdYellow:[I

    aget v0, v0, v2

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->tvCurrentState:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_93:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->tvMagnetAdjustTitle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_100:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_1
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_97:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    .line 168
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->finish()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initListener()V
    .locals 2

    .line 206
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->magnetometerCalibrateListener:Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setMagnetometerCalibrateListener(Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;)V

    .line 207
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->flClose:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMagnetAdjustActivity$6jB447scrdmvtxAVEy0zje7yT3o;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMagnetAdjustActivity$6jB447scrdmvtxAVEy0zje7yT3o;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .line 183
    invoke-static {p0}, Lcom/powervision/gcs/utils/ScreenUtils;->setFullScreen(Landroid/app/Activity;)V

    .line 184
    invoke-static {p0}, Lcom/powervision/gcs/utils/ScreenUtils;->noActionBar(Landroid/app/Activity;)V

    .line 185
    sget v0, Lcom/powervision/gcs/R$layout;->activity_ship_magnet_adjust:I

    return v0
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 5

    .line 190
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x3

    new-array v0, p1, [I

    .line 191
    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_front_back_red:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_up_down_red:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_left_right_red:I

    const/4 v4, 0x2

    aput v1, v0, v4

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdRed:[I

    new-array v0, p1, [I

    .line 192
    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_front_back_yellow:I

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_up_down_yellow:I

    aput v1, v0, v3

    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_left_right_yellow:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdYellow:[I

    new-array v0, p1, [I

    .line 193
    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_front_back_green:I

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_up_down_green:I

    aput v1, v0, v3

    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_left_right_green:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->resIdGreen:[I

    new-array p1, p1, [Landroid/widget/ImageView;

    .line 195
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->ivFrontBack:Landroid/widget/ImageView;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->ivUpDown:Landroid/widget/ImageView;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->ivLeftRight:Landroid/widget/ImageView;

    aput-object v0, p1, v4

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->calImgs:[Landroid/widget/ImageView;

    .line 198
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->initListener()V

    .line 200
    invoke-static {}, Lcom/powervision/natives/JniW4Native;->startMagCalibration()I

    return-void
.end method

.method public synthetic lambda$initListener$0$ShipMagnetAdjustActivity(Landroid/view/View;)V
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 214
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onDestroy()V

    .line 217
    invoke-static {}, Lcom/powervision/natives/JniW4Native;->cancelMagCalibration()I

    .line 218
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setMagnetometerCalibrateListener(Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;)V

    .line 219
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
