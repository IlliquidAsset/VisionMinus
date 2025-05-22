.class public Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "BatterySettingFragment.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;
    }
.end annotation


# static fields
.field private static final BATTERY_SET_FAILED:I = 0x2712

.field private static final BATTERY_SET_SUCCESS:I = 0x2711


# instance fields
.field private batteryIcon1:Landroid/widget/ImageView;

.field private batteryIcon2:Landroid/widget/ImageView;

.field private batteryIcon3:Landroid/widget/ImageView;

.field private batteryNum1:Landroid/widget/TextView;

.field private batteryNum2:Landroid/widget/TextView;

.field private batteryNum3:Landroid/widget/TextView;

.field private batterySetHandler:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;

.field private batteryTem:Landroid/widget/ImageView;

.field private batteryVer:Landroid/widget/TextView;

.field private batteryVoltage:Landroid/widget/ImageView;

.field private closeBt:Landroid/widget/ImageView;

.field private currentState:Landroid/widget/TextView;

.field private cycleTime:Landroid/widget/TextView;

.field private flyTime:Landroid/widget/TextView;

.field private lowBatteryBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private lowBatteryText:Landroid/widget/TextView;

.field private mBatRtlBtn:Landroid/widget/ToggleButton;

.field private mTitle:Landroid/widget/TextView;

.field private madeDate:Landroid/widget/TextView;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private serialNum:Landroid/widget/TextView;

.field private temNum:Landroid/widget/TextView;

.field private voltageNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batterySetHandler:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;Landroid/os/Message;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->lowBatteryText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)Landroid/widget/ToggleButton;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->mBatRtlBtn:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 1

    .line 79
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2712

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_186:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_0

    .line 81
    :cond_1
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_185:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    :goto_0
    return-void
.end method

.method private setTemUI(I)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->temNum:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u2103"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setValtagesUI(III)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->voltageNum:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "V"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setValtagesUI1(II)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryIcon1:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryNum1:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p2, v0, :cond_1

    const/16 p2, 0x64

    :cond_1
    const/16 v0, 0x14

    if-ge p2, v0, :cond_2

    .line 220
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_20:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x28

    if-ge p2, v0, :cond_3

    .line 222
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_40:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x3c

    if-ge p2, v0, :cond_4

    .line 224
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_60:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x50

    if-ge p2, v0, :cond_5

    .line 226
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_80:I

    goto :goto_0

    .line 228
    :cond_5
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_100:I

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryIcon1:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryNum1:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "V"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method private setValtagesUI2(II)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryIcon2:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryNum2:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p2, v0, :cond_1

    const/16 p2, 0x64

    :cond_1
    const/16 v0, 0x14

    if-ge p2, v0, :cond_2

    .line 241
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_20:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x28

    if-ge p2, v0, :cond_3

    .line 243
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_40:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x3c

    if-ge p2, v0, :cond_4

    .line 245
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_60:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x50

    if-ge p2, v0, :cond_5

    .line 247
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_80:I

    goto :goto_0

    .line 249
    :cond_5
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_100:I

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryNum2:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "V"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method private setValtagesUI3(II)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryIcon3:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryNum3:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p2, v0, :cond_1

    const/16 p2, 0x64

    :cond_1
    const/16 v0, 0x14

    if-ge p2, v0, :cond_2

    .line 262
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_20:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x28

    if-ge p2, v0, :cond_3

    .line 264
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_40:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x3c

    if-ge p2, v0, :cond_4

    .line 266
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_60:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x50

    if-ge p2, v0, :cond_5

    .line 268
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_80:I

    goto :goto_0

    .line 270
    :cond_5
    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_battery_100:I

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryIcon3:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryNum3:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "V"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public getBatteryInfo(Landroid/util/SparseIntArray;)V
    .locals 8
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x1
    .end annotation

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x1

    .line 184
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 185
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x3

    .line 186
    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/4 v4, 0x4

    .line 187
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 188
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    const/4 v6, 0x6

    .line 189
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->get(I)I

    const/4 v6, 0x7

    .line 190
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const/16 v7, 0x8

    .line 191
    invoke-virtual {p1, v7}, Landroid/util/SparseIntArray;->get(I)I

    const/16 v7, 0x9

    .line 192
    invoke-virtual {p1, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 193
    invoke-direct {p0, v1, v0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->setValtagesUI1(II)V

    .line 194
    invoke-direct {p0, v2, v0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->setValtagesUI2(II)V

    .line 195
    invoke-direct {p0, v3, v0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->setValtagesUI3(II)V

    .line 196
    invoke-direct {p0, v1, v2, v3}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->setValtagesUI(III)V

    .line 197
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->setTemUI(I)V

    .line 198
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->flyTime:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->cycleTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_183:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->currentState:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_181:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getBatterySnCode(Landroid/util/SparseArray;)V
    .locals 4
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x4
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_182:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_184:I

    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Upgrade_114:I

    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->serialNum:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->madeDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryVer:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 92
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_battery_setting_layout:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 124
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 98
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->mTitle:Landroid/widget/TextView;

    .line 99
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->closeBt:Landroid/widget/ImageView;

    .line 100
    sget p1, Lcom/powervision/aircraft/R$id;->battery_icon1:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryIcon1:Landroid/widget/ImageView;

    .line 101
    sget p1, Lcom/powervision/aircraft/R$id;->battery_icon2:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryIcon2:Landroid/widget/ImageView;

    .line 102
    sget p1, Lcom/powervision/aircraft/R$id;->battery_icon3:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryIcon3:Landroid/widget/ImageView;

    .line 103
    sget p1, Lcom/powervision/aircraft/R$id;->battery_voltage_icon:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryVoltage:Landroid/widget/ImageView;

    .line 104
    sget p1, Lcom/powervision/aircraft/R$id;->battery_tem_icon:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryTem:Landroid/widget/ImageView;

    .line 105
    sget p1, Lcom/powervision/aircraft/R$id;->battery_num1:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryNum1:Landroid/widget/TextView;

    .line 106
    sget p1, Lcom/powervision/aircraft/R$id;->battery_num2:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryNum2:Landroid/widget/TextView;

    .line 107
    sget p1, Lcom/powervision/aircraft/R$id;->battery_num3:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryNum3:Landroid/widget/TextView;

    .line 108
    sget p1, Lcom/powervision/aircraft/R$id;->battery_voltage_num:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->voltageNum:Landroid/widget/TextView;

    .line 109
    sget p1, Lcom/powervision/aircraft/R$id;->battery_tem_num:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->temNum:Landroid/widget/TextView;

    .line 110
    sget p1, Lcom/powervision/aircraft/R$id;->flight_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->flyTime:Landroid/widget/TextView;

    .line 111
    sget p1, Lcom/powervision/aircraft/R$id;->battery_serial_number:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->serialNum:Landroid/widget/TextView;

    .line 112
    sget p1, Lcom/powervision/aircraft/R$id;->battery_cycles:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->cycleTime:Landroid/widget/TextView;

    .line 113
    sget p1, Lcom/powervision/aircraft/R$id;->seekbar_low_battery_alarm:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->lowBatteryBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 114
    sget p1, Lcom/powervision/aircraft/R$id;->low_battery_alarm_percent:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->lowBatteryText:Landroid/widget/TextView;

    .line 115
    sget p1, Lcom/powervision/aircraft/R$id;->battery_current_state:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->currentState:Landroid/widget/TextView;

    .line 116
    sget p1, Lcom/powervision/aircraft/R$id;->battery_made_date:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->madeDate:Landroid/widget/TextView;

    .line 117
    sget p1, Lcom/powervision/aircraft/R$id;->battery_firware_version:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batteryVer:Landroid/widget/TextView;

    .line 118
    sget p1, Lcom/powervision/aircraft/R$id;->bat_rtl_toggle:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->mBatRtlBtn:Landroid/widget/ToggleButton;

    .line 119
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_172:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onSetGetFloatParamDate$1$BatterySettingFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 3

    const-string v0, "UPLOAD"

    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FAILED"

    const-string v2, "SUCCESS"

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batterySetHandler:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;

    const/16 p2, 0x2711

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 308
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batterySetHandler:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;

    const/16 p2, 0x2712

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "DOWNLOAD"

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 311
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "BAT_CRIT_THR"

    .line 312
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 313
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->lowBatteryBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p4, p4, p2

    float-to-int p2, p4

    add-int/lit8 p3, p2, -0x12

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 314
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->lowBatteryText:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$onSetGetIntParamDate$2$BatterySettingFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "UPLOAD"

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FAILED"

    const-string v2, "SUCCESS"

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batterySetHandler:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;

    const/16 p2, 0x2711

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 334
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->batterySetHandler:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;

    const/16 p2, 0x2712

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "DOWNLOAD"

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 337
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "BAT_RTL_BUTTON"

    .line 338
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p4, :cond_2

    .line 340
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->mBatRtlBtn:Landroid/widget/ToggleButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    if-ne p4, p1, :cond_4

    .line 342
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->mBatRtlBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p2, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 345
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic lambda$setListener$0$BatterySettingFragment(Landroid/view/View;)V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeView(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 291
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 292
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownFloatParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 293
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 294
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 129
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "BAT_CRIT_THR"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    .line 132
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)V

    .line 138
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x1f4

    .line 139
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public onSetGetFloatParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 8

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battary===type==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "result===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "value======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsafdasfsadadsfad"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v7, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$BatterySettingFragment$wXlc7ZnF5OsdRqeAmmvw2wPs6vY;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$BatterySettingFragment$wXlc7ZnF5OsdRqeAmmvw2wPs6vY;-><init>(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v0, v7}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSetGetIntParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battary===type==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "result===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "value======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsafdasfsadadsfad"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v7, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$BatterySettingFragment$DfFEOvq07-vGTPtI5_0zf-483lo;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$BatterySettingFragment$DfFEOvq07-vGTPtI5_0zf-483lo;-><init>(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSetGetLongParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 144
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 145
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->closeBt:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$BatterySettingFragment$S4FDNW4OAkwEz_wIc_E1aA4e1BM;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$BatterySettingFragment$S4FDNW4OAkwEz_wIc_E1aA4e1BM;-><init>(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownFloatParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 147
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 148
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->lowBatteryBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->mBatRtlBtn:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$3;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
