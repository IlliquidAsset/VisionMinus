.class public Lcom/powervision/gcs/view/SonarTitleView;
.super Landroid/widget/LinearLayout;
.source "SonarTitleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/SonarTitleView$OnBattaryLowTipsListener;
    }
.end annotation


# static fields
.field public static SonarBattery:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SonarTitleView"


# instance fields
.field batteryBg:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xc27
    .end annotation
.end field

.field batteryContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xc28
    .end annotation
.end field

.field batteryMark:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xc29
    .end annotation
.end field

.field connectionManager:Lcom/powervision/gcs/mina/ConnectionManager;

.field private currWifiSSID:Ljava/lang/String;

.field deviceConnectBg:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xce4
    .end annotation
.end field

.field deviceConnectContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xce5
    .end annotation
.end field

.field deviceConnectMark:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xce6
    .end annotation
.end field

.field private mCurrentState:Z

.field private mHandler:Landroid/os/Handler;

.field private onBattaryLowTipsListener:Lcom/powervision/gcs/view/SonarTitleView$OnBattaryLowTipsListener;

.field private onSonarBatteryHandlerListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;

.field onSonarConnectStateChangedListener:Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;

.field private rssiReceiver:Landroid/content/BroadcastReceiver;

.field private runnable:Ljava/lang/Runnable;

.field private showTheTenTips:Z

.field private showTheTwentyTips:Z

.field signalMark:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1072
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/SonarTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 60
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->currWifiSSID:Ljava/lang/String;

    .line 106
    new-instance p1, Lcom/powervision/gcs/view/SonarTitleView$1;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/SonarTitleView$1;-><init>(Lcom/powervision/gcs/view/SonarTitleView;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->onSonarConnectStateChangedListener:Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;

    const/4 p1, 0x0

    .line 193
    iput-boolean p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->mCurrentState:Z

    .line 251
    new-instance p2, Lcom/powervision/gcs/view/SonarTitleView$2;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/SonarTitleView$2;-><init>(Lcom/powervision/gcs/view/SonarTitleView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/SonarTitleView;->rssiReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    new-instance p2, Lcom/powervision/gcs/view/SonarTitleView$3;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/SonarTitleView$3;-><init>(Lcom/powervision/gcs/view/SonarTitleView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/SonarTitleView;->onSonarBatteryHandlerListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;

    .line 307
    iput-boolean p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->showTheTwentyTips:Z

    .line 308
    iput-boolean p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->showTheTenTips:Z

    .line 344
    new-instance p1, Lcom/powervision/gcs/view/SonarTitleView$4;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/SonarTitleView$4;-><init>(Lcom/powervision/gcs/view/SonarTitleView;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->runnable:Ljava/lang/Runnable;

    .line 355
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->mHandler:Landroid/os/Handler;

    .line 71
    invoke-direct {p0}, Lcom/powervision/gcs/view/SonarTitleView;->initViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/SonarTitleView;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/powervision/gcs/view/SonarTitleView;->obtainWifiInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/SonarTitleView;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/powervision/gcs/view/SonarTitleView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private changeDeviceConnectStatus(Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 210
    invoke-static {}, Lcom/powervision/gcs/utils/WifiSsidutil;->getInstance()Lcom/powervision/gcs/utils/WifiSsidutil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/utils/WifiSsidutil;->getWIFISSID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->currWifiSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->currWifiSSID:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->currWifiSSID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 221
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectMark:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->sonar_device_connected:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$string;->MediaLib_6:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectContent:Landroid/widget/TextView;

    .line 224
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 225
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectContent:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->MediaLib_6:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 228
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->sonar_connect_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 231
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectMark:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->sonar_device_disconnect:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$string;->MediaLib_7:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectContent:Landroid/widget/TextView;

    .line 234
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 235
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectContent:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->MediaLib_7:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 239
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->sonar_disconnect_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method private initViews()V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->view_sonar_title:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectContent:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 80
    invoke-static {}, Lcom/powervision/gcs/mina/MinaConnectionHelper;->getInstance()Lcom/powervision/gcs/mina/MinaConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/mina/MinaConnectionHelper;->getConnectionManager()Lcom/powervision/gcs/mina/ConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->connectionManager:Lcom/powervision/gcs/mina/ConnectionManager;

    .line 81
    invoke-direct {p0}, Lcom/powervision/gcs/view/SonarTitleView;->registerListeners()V

    return-void
.end method

.method private obtainWifiInfo()V
    .locals 2

    .line 282
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 294
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/SonarTitleView;->setWifiLevel(I)V

    :cond_1
    return-void
.end method

.method private registerListeners()V
    .locals 4

    .line 94
    invoke-static {}, Lcom/powervision/gcs/mina/HandlerEvent;->getInstance()Lcom/powervision/gcs/mina/HandlerEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarTitleView;->onSonarBatteryHandlerListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/mina/HandlerEvent;->addSonarBatteryListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarTitleView;->rssiReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->startGetSonarPowerQuantity()V

    .line 102
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->onSonarConnectStateChangedListener:Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;

    .line 103
    invoke-static {v0}, Lcom/powervision/gcs/usb2/SonarConnectState;->addOnSonarConnectStateChangedListener(Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;)V

    return-void
.end method

.method private setBatteryLevel(I)V
    .locals 5

    const/16 v0, 0x14

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 150
    sget v1, Lcom/powervision/gcs/R$mipmap;->sonar_battery_level_20:I

    if-gt p1, v0, :cond_5

    const/16 v0, 0xa

    if-le p1, v0, :cond_5

    .line 152
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarTitleView;->onBattaryLowTipsListener:Lcom/powervision/gcs/view/SonarTitleView$OnBattaryLowTipsListener;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/powervision/gcs/view/SonarTitleView;->showTheTwentyTips:Z

    if-nez v4, :cond_0

    .line 153
    iput-boolean v3, p0, Lcom/powervision/gcs/view/SonarTitleView;->showTheTwentyTips:Z

    const/4 p1, 0x2

    .line 154
    invoke-interface {v2, p1}, Lcom/powervision/gcs/view/SonarTitleView$OnBattaryLowTipsListener;->showTips(I)V

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_5

    .line 156
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->onBattaryLowTipsListener:Lcom/powervision/gcs/view/SonarTitleView$OnBattaryLowTipsListener;

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->showTheTenTips:Z

    if-nez v0, :cond_5

    .line 157
    iput-boolean v3, p0, Lcom/powervision/gcs/view/SonarTitleView;->showTheTenTips:Z

    .line 158
    invoke-interface {p1, v3}, Lcom/powervision/gcs/view/SonarTitleView$OnBattaryLowTipsListener;->showTips(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x28

    if-le p1, v0, :cond_2

    if-gt p1, v1, :cond_2

    .line 164
    sget v1, Lcom/powervision/gcs/R$mipmap;->sonar_battery_level_40:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x3c

    if-le p1, v1, :cond_3

    if-gt p1, v0, :cond_3

    .line 166
    sget v1, Lcom/powervision/gcs/R$mipmap;->sonar_battery_level_60:I

    goto :goto_0

    :cond_3
    if-le p1, v0, :cond_4

    const/16 v0, 0x50

    if-gt p1, v0, :cond_4

    .line 168
    sget v1, Lcom/powervision/gcs/R$mipmap;->sonar_battery_level_80:I

    goto :goto_0

    .line 170
    :cond_4
    sget v1, Lcom/powervision/gcs/R$mipmap;->sonar_battery_level_100:I

    .line 173
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->batteryMark:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setBatteryText(I)V
    .locals 3

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->batteryContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->batteryContent:Landroid/widget/TextView;

    const-string v1, "#EE3535"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->batteryContent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private unregisterListeners()V
    .locals 2

    .line 124
    invoke-static {}, Lcom/powervision/gcs/mina/HandlerEvent;->getInstance()Lcom/powervision/gcs/mina/HandlerEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarTitleView;->onSonarBatteryHandlerListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/mina/HandlerEvent;->removeSonarBatteryListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarTitleView;->rssiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarTitleView;->stopGetSonarPowerQuantity()V

    .line 131
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->onSonarConnectStateChangedListener:Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;

    .line 132
    invoke-static {v0}, Lcom/powervision/gcs/usb2/SonarConnectState;->removeOnSonarConnectStateChangedListener(Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 246
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "SonarTitleView"

    const-string v1, "onDetachedFromWindow"

    .line 247
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/show/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/powervision/gcs/view/SonarTitleView;->unregisterListeners()V

    return-void
.end method

.method public setBattery(I)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/SonarTitleView;->setBatteryLevel(I)V

    .line 137
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/SonarTitleView;->setBatteryText(I)V

    return-void
.end method

.method public setConnectState(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->mCurrentState:Z

    .line 199
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/SonarTitleView;->changeDeviceConnectStatus(Z)V

    return-void
.end method

.method public setOnBattaryLowTipsListener(Lcom/powervision/gcs/view/SonarTitleView$OnBattaryLowTipsListener;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView;->onBattaryLowTipsListener:Lcom/powervision/gcs/view/SonarTitleView$OnBattaryLowTipsListener;

    return-void
.end method

.method public setWifiLevel(I)V
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SonarTitleView"

    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x50

    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 322
    sget p1, Lcom/powervision/gcs/R$mipmap;->sonar_signal_5:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    if-ge p1, v0, :cond_1

    if-lt p1, v1, :cond_1

    .line 324
    sget p1, Lcom/powervision/gcs/R$mipmap;->sonar_signal_4:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x28

    if-ge p1, v1, :cond_2

    if-lt p1, v0, :cond_2

    .line 326
    sget p1, Lcom/powervision/gcs/R$mipmap;->sonar_signal_3:I

    goto :goto_0

    :cond_2
    if-ge p1, v0, :cond_3

    const/16 v0, 0x14

    if-lt p1, v0, :cond_3

    .line 328
    sget p1, Lcom/powervision/gcs/R$mipmap;->sonar_signal_2:I

    goto :goto_0

    .line 330
    :cond_3
    sget p1, Lcom/powervision/gcs/R$mipmap;->sonar_signal_1:I

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->signalMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 334
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->signalMark:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->signalMark:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 337
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 338
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->signalMark:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->signalMark:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public startGetSonarPowerQuantity()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarTitleView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopGetSonarPowerQuantity()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarTitleView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
