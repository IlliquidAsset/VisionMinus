.class public Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ShipMagnetAdjustFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$MyHandler;
    }
.end annotation


# static fields
.field private static final CALD_CANCELED:I = 0x102

.field private static final CALD_FAILED:I = 0x101

.field private static final CALD_SUCCESS:I = 0x100

.field private static final FRONT_BACK_DETECTED:I = 0x1

.field private static final FRONT_BACK_DONE:I = 0x2

.field private static final LEFT_RIGHT_DETECTED:I = 0x5

.field private static final LEFT_RIGHT_DONE:I = 0x6

.field private static final UP_DOWN_DETECTED:I = 0x3

.field private static final UP_DOWN_DONE:I = 0x4


# instance fields
.field private calImgs:[Landroid/widget/ImageView;

.field private dialog:Landroid/app/Dialog;

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

.field tvMagnetAdjustTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1186
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 88
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$MyHandler;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->mHandler:Landroid/os/Handler;

    .line 223
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->magnetometerCalibrateListener:Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;Landroid/os/Message;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 3

    .line 118
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x101

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 140
    :pswitch_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v0

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->resIdGreen:[I

    aget v0, v2, v0

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 136
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v0

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->resIdYellow:[I

    aget v0, v2, v0

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v1

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->resIdGreen:[I

    aget v1, v2, v1

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v1

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->resIdYellow:[I

    aget v1, v2, v1

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 125
    :pswitch_4
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v2

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->resIdGreen:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 121
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->calImgs:[Landroid/widget/ImageView;

    aget-object p1, p1, v2

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->resIdYellow:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->tvMagnetAdjustTitle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_100:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :cond_1
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_97:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    .line 145
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->dismiss()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initListener()V
    .locals 2

    .line 211
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->magnetometerCalibrateListener:Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setMagnetometerCalibrateListener(Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;)V

    return-void
.end method

.method public static newInstance()Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;
    .locals 1

    .line 83
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 161
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->dialog:Landroid/app/Dialog;

    .line 162
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$layout;->fragment_ship_magnet_adjust:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->view:Landroid/view/View;

    .line 170
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 171
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 174
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->view:Landroid/view/View;

    sget v0, Lcom/powervision/gcs/R$id;->tv_magnet_adjust_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->tvMagnetAdjustTitle:Landroid/widget/TextView;

    .line 175
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->view:Landroid/view/View;

    sget v0, Lcom/powervision/gcs/R$id;->iv_front_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->ivFrontBack:Landroid/widget/ImageView;

    .line 176
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->view:Landroid/view/View;

    sget v0, Lcom/powervision/gcs/R$id;->iv_up_down:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->ivUpDown:Landroid/widget/ImageView;

    .line 177
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->view:Landroid/view/View;

    sget v0, Lcom/powervision/gcs/R$id;->iv_left_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->ivLeftRight:Landroid/widget/ImageView;

    .line 178
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->view:Landroid/view/View;

    sget v0, Lcom/powervision/gcs/R$id;->relativelayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->relativelayout:Landroid/widget/RelativeLayout;

    .line 179
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->view:Landroid/view/View;

    sget v0, Lcom/powervision/gcs/R$id;->fl_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->flClose:Landroid/widget/FrameLayout;

    .line 181
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x3

    new-array v0, p1, [I

    .line 187
    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_front_back_red:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_up_down_red:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_left_right_red:I

    const/4 v4, 0x2

    aput v1, v0, v4

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->resIdRed:[I

    new-array v0, p1, [I

    .line 188
    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_front_back_yellow:I

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_up_down_yellow:I

    aput v1, v0, v3

    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_left_right_yellow:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->resIdYellow:[I

    new-array v0, p1, [I

    .line 189
    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_front_back_green:I

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_up_down_green:I

    aput v1, v0, v3

    sget v1, Lcom/powervision/gcs/R$mipmap;->magnet_adjust_left_right_green:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->resIdGreen:[I

    new-array p1, p1, [Landroid/widget/ImageView;

    .line 191
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->ivFrontBack:Landroid/widget/ImageView;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->ivUpDown:Landroid/widget/ImageView;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->ivLeftRight:Landroid/widget/ImageView;

    aput-object v0, p1, v4

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->calImgs:[Landroid/widget/ImageView;

    .line 194
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->initListener()V

    .line 196
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 198
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 199
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 200
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 201
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 204
    invoke-static {}, Lcom/powervision/natives/JniW4Native;->startMagCalibration()I

    .line 206
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 217
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    .line 218
    invoke-static {}, Lcom/powervision/natives/JniW4Native;->cancelMagCalibration()I

    .line 219
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setMagnetometerCalibrateListener(Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;)V

    .line 220
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
