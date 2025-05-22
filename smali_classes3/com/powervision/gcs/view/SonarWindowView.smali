.class public Lcom/powervision/gcs/view/SonarWindowView;
.super Landroid/widget/LinearLayout;
.source "SonarWindowView.java"

# interfaces
.implements Lcom/powervision/gcs/callback/SonarImageDataListener;
.implements Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/SonarWindowView$SonarDataSendListener;,
        Lcom/powervision/gcs/view/SonarWindowView$FindFishListener;,
        Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;,
        Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;,
        Lcom/powervision/gcs/view/SonarWindowView$DemoThread;,
        Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;
    }
.end annotation


# static fields
.field private static final FORCE_STOP_GET_MESSAGE:I = 0x2

.field private static final INIT_MESSAGE:I = 0x0

.field private static final START_GET_MESSAGE:I = 0x1


# instance fields
.field private audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

.field bf:Ljava/io/BufferedReader;

.field bffread:Ljava/io/BufferedReader;

.field bufferedReader:Ljava/io/BufferedReader;

.field private currentHistory:Lcom/powervision/gcs/model/History;

.field private deepAlarmDelayTime:J

.field demoStateListener:Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;

.field demoThread:Lcom/powervision/gcs/view/SonarWindowView$DemoThread;

.field findFishListener:Lcom/powervision/gcs/view/SonarWindowView$FindFishListener;

.field private final fishView:Lcom/powervision/gcs/view/FishImageView;

.field fishcount:I

.field private getMessageState:I

.field private historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

.field historyThreadListener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

.field private isHistoryMode:Z

.field public isRunning:Z

.field ism:Ljava/io/InputStream;

.field lastConnectStatus:I

.field lastDeep:F

.field private lastEnd:I

.field lastTem:I

.field listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

.field private mContext:Landroid/content/Context;

.field private mPresenter:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$Presenter;

.field private needRePlay:Z

.field onSonarConnectStateChangedListener:Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;

.field private onSonarDataStatusChangeListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;

.field private prepareStateing:Z

.field readindex:I

.field readlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field recodingPath:Ljava/lang/String;

.field private screenWidth:I

.field sonarDataSendListener:Lcom/powervision/gcs/view/SonarWindowView$SonarDataSendListener;

.field sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

.field sonarTextureView:Lcom/powervision/gcs/Texture/SonarTextureView;

.field toodeeportooshallow:Landroid/view/View;

.field private updateBackStatus:I

.field private verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 85
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "Geo-lib"

    .line 86
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x3d380000    # -100.0f

    .line 93
    iput p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->lastDeep:F

    const/16 p2, -0x64

    .line 94
    iput p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->lastTem:I

    const/4 p2, 0x0

    .line 100
    iput-boolean p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->needRePlay:Z

    const/4 v0, 0x1

    .line 102
    iput v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->lastEnd:I

    .line 103
    iput p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->updateBackStatus:I

    .line 118
    iput p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->getMessageState:I

    .line 136
    iput-boolean p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->prepareStateing:Z

    const/4 v0, -0x1

    .line 239
    iput v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->lastConnectStatus:I

    .line 240
    new-instance v0, Lcom/powervision/gcs/view/SonarWindowView$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/SonarWindowView$2;-><init>(Lcom/powervision/gcs/view/SonarWindowView;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->onSonarConnectStateChangedListener:Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;

    .line 454
    new-instance v0, Lcom/powervision/gcs/view/SonarWindowView$7;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/SonarWindowView$7;-><init>(Lcom/powervision/gcs/view/SonarWindowView;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->onSonarDataStatusChangeListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;

    .line 485
    iput p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishcount:I

    const/4 v0, 0x0

    .line 695
    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->currentHistory:Lcom/powervision/gcs/model/History;

    .line 762
    new-instance v1, Lcom/powervision/gcs/view/SonarWindowView$10;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/SonarWindowView$10;-><init>(Lcom/powervision/gcs/view/SonarWindowView;)V

    iput-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThreadListener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    const-string v1, ""

    .line 923
    iput-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->recodingPath:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 938
    iput-wide v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->deepAlarmDelayTime:J

    .line 990
    iput-boolean p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->isRunning:Z

    .line 991
    iput p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->readindex:I

    .line 1050
    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->demoThread:Lcom/powervision/gcs/view/SonarWindowView$DemoThread;

    .line 1082
    new-instance p2, Lcom/powervision/gcs/view/SonarWindowView$11;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/SonarWindowView$11;-><init>(Lcom/powervision/gcs/view/SonarWindowView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->demoStateListener:Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;

    .line 149
    sget p2, Lcom/powervision/gcs/R$layout;->sonar_window_layout:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->mContext:Landroid/content/Context;

    .line 152
    sget p2, Lcom/powervision/gcs/R$id;->sonar_image:I

    invoke-virtual {p0, p2}, Lcom/powervision/gcs/view/SonarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/Texture/SonarTextureView;

    iput-object p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarTextureView:Lcom/powervision/gcs/Texture/SonarTextureView;

    .line 155
    sget p2, Lcom/powervision/gcs/R$id;->fish_view:I

    invoke-virtual {p0, p2}, Lcom/powervision/gcs/view/SonarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/view/FishImageView;

    iput-object p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    .line 156
    sget p2, Lcom/powervision/gcs/R$id;->raw_sig:I

    invoke-virtual {p0, p2}, Lcom/powervision/gcs/view/SonarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/Texture/TextureVerticalView;

    iput-object p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;

    .line 157
    sget p2, Lcom/powervision/gcs/R$id;->toodeeportooshallow:I

    invoke-virtual {p0, p2}, Lcom/powervision/gcs/view/SonarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->toodeeportooshallow:Landroid/view/View;

    .line 159
    iget-object p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    if-nez p2, :cond_0

    .line 160
    new-instance p2, Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-direct {p2}, Lcom/powervision/gcs/Texture/SonarTextureRender;-><init>()V

    iput-object p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    .line 161
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarTextureView:Lcom/powervision/gcs/Texture/SonarTextureView;

    invoke-virtual {v0, p2}, Lcom/powervision/gcs/Texture/SonarTextureView;->setRenderer(Lcom/powervision/gcs/Texture/IGLESRenderer;)V

    .line 164
    :cond_0
    iget-object p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarTextureView:Lcom/powervision/gcs/Texture/SonarTextureView;

    invoke-virtual {p2}, Lcom/powervision/gcs/Texture/SonarTextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/powervision/gcs/view/SonarWindowView$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/SonarWindowView$1;-><init>(Lcom/powervision/gcs/view/SonarWindowView;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 179
    new-instance p2, Lcom/powervision/gcs/utils/AudioUtil;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/powervision/gcs/utils/AudioUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    .line 180
    new-instance p1, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;-><init>(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$View;)V

    .line 181
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->mPresenter:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$Presenter;

    invoke-interface {p1}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$Presenter;->subscribe()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/FishImageView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/SonarWindowView;F)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/SonarWindowView;->setDepth(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/Texture/TextureVerticalView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/powervision/gcs/view/SonarWindowView;->verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/SonarWindowView;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/powervision/gcs/view/SonarWindowView;->getMessageState:I

    return p0
.end method

.method static synthetic access$500(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    return-object p0
.end method

.method static synthetic access$502(Lcom/powervision/gcs/view/SonarWindowView;Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;)Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/powervision/gcs/view/SonarWindowView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/powervision/gcs/view/SonarWindowView;->isHistoryMode:Z

    return p0
.end method

.method static synthetic access$700(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/model/History;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/powervision/gcs/view/SonarWindowView;->currentHistory:Lcom/powervision/gcs/model/History;

    return-object p0
.end method

.method static synthetic access$702(Lcom/powervision/gcs/view/SonarWindowView;Lcom/powervision/gcs/model/History;)Lcom/powervision/gcs/model/History;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->currentHistory:Lcom/powervision/gcs/model/History;

    return-object p1
.end method

.method private setDepth(F)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/FishImageView;->setDepth(F)V

    return-void
.end method

.method private startDemoDataShow()V
    .locals 6

    .line 999
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->clearMemory()V

    .line 1001
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$raw;->sonar_demodata1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->ism:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    .line 1006
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView;->ism:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bf:Ljava/io/BufferedReader;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 1013
    :try_start_0
    iput-boolean v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->isRunning:Z

    .line 1014
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView;->ism:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 1015
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->isRunning:Z

    if-eqz v0, :cond_6

    .line 1016
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bf:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1018
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bf:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    .line 1019
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bf:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/4 v1, 0x0

    .line 1022
    sget-object v2, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->testUPTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readhistorytime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x16

    .line 1024
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    .line 1025
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1026
    array-length v2, v0

    if-lez v2, :cond_5

    .line 1027
    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 1028
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 1029
    aget-object v3, v0, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_4

    const/16 v4, 0x100

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    sub-int/2addr v3, v4

    int-to-byte v3, v3

    .line 1030
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_2

    .line 1034
    array-length v0, v1

    if-lez v0, :cond_2

    .line 1035
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->setImagerData([B)V

    const-wide/16 v0, 0x19

    .line 1036
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 1039
    :cond_6
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bf:Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    .line 1040
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bf:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1041
    :cond_7
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->ism:Ljava/io/InputStream;

    if-eqz v0, :cond_8

    .line 1042
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->ism:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1044
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->closeDemo()I

    return-void

    :goto_4
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->closeDemo()I

    throw v0
.end method


# virtual methods
.method public DemoDataShow()V
    .locals 2

    .line 1061
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->demoThread:Lcom/powervision/gcs/view/SonarWindowView$DemoThread;

    if-nez v0, :cond_0

    .line 1062
    new-instance v0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;-><init>(Lcom/powervision/gcs/view/SonarWindowView$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->demoThread:Lcom/powervision/gcs/view/SonarWindowView$DemoThread;

    .line 1063
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->demoStateListener:Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->setDemoSateListener(Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;)V

    .line 1064
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->demoThread:Lcom/powervision/gcs/view/SonarWindowView$DemoThread;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->setResources(Landroid/content/res/Resources;)V

    .line 1065
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->demoThread:Lcom/powervision/gcs/view/SonarWindowView$DemoThread;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->start()V

    :cond_0
    return-void
.end method

.method public addFish(IFF)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v0, p1, p3, p2}, Lcom/powervision/gcs/view/FishImageView;->addFish(IFF)V

    .line 447
    sget-boolean p1, Lcom/powervision/gcs/utils/SonarStateHelper;->ArmTheFish:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/powervision/gcs/utils/SonarStateHelper;->mIsMute:Z

    if-nez p1, :cond_0

    .line 449
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/utils/AudioUtil;->play(I)V

    :cond_0
    return-void
.end method

.method public changeSen(I)V
    .locals 2

    .line 1297
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 1298
    sget v1, Lcom/powervision/gcs/utils/SonarStateHelper;->color_Style:I

    invoke-virtual {v0, p1, v1}, Lcom/powervision/gcs/Texture/SonarTextureRender;->changeSenOrColor(FI)V

    :cond_0
    return-void
.end method

.method public clickPlay()V
    .locals 2

    .line 675
    iget v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->getMessageState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 676
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->closeDataStreamCMD()V

    goto :goto_0

    .line 678
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->openDataStreamCMD()V

    :goto_0
    return-void
.end method

.method public closeDemo()I
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->demoThread:Lcom/powervision/gcs/view/SonarWindowView$DemoThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {v0}, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->interrupt()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1076
    :goto_0
    sput-boolean v1, Lcom/powervision/gcs/utils/SonarStateHelper;->Sonar_Demo_Data_Show:Z

    return v0
.end method

.method public closeHistoryMode()V
    .locals 3

    .line 905
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->closeHistory()V

    .line 906
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setRawSigBytes([B)V

    .line 907
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setRawSigNewDatas(I)V

    const/4 v0, 0x0

    .line 908
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/SonarWindowView;->setPrepareing(Z)V

    .line 909
    iput-boolean v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->isHistoryMode:Z

    .line 910
    iput-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->currentHistory:Lcom/powervision/gcs/model/History;

    .line 911
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->destoryTheThread()V

    .line 912
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/FishImageView;->clearTheFish()V

    const/high16 v1, -0x40800000    # -1.0f

    .line 913
    iput v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->lastDeep:F

    const/4 v1, 0x0

    .line 914
    invoke-direct {p0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->setDepth(F)V

    .line 915
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/FishImageView;->clearTheDeepNum()V

    .line 916
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/FishImageView;->setHistoryMode(Z)V

    return-void
.end method

.method public convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1240
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 1243
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1244
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_1

    .line 1245
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1246
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public cropVideoImage(Landroid/view/WindowManager;)Ljava/lang/String;
    .locals 8

    .line 1194
    sget-object v0, Lcom/powervision/base/config/GlobalConfig;->FishPoints:Ljava/lang/String;

    .line 1195
    invoke-static {v0}, Lcom/powervision/gcs/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->FishPoints:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1198
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarTextureView:Lcom/powervision/gcs/Texture/SonarTextureView;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/SonarTextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    .line 1200
    invoke-virtual {p0, v2}, Lcom/powervision/gcs/view/SonarWindowView;->setDrawingCacheEnabled(Z)V

    .line 1203
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {p0, v2}, Lcom/powervision/gcs/view/SonarWindowView;->convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 1207
    :cond_0
    iget-object v4, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v4}, Lcom/powervision/gcs/view/FishImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v5}, Lcom/powervision/gcs/view/FishImageView;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1209
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 1210
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1211
    invoke-virtual {p1, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1214
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1215
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1216
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1222
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1223
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {v4, v0, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1224
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1225
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 1227
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1234
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v3

    :catch_1
    move-exception p1

    .line 1230
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v3
.end method

.method public destoryTheThread()V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->inter()V

    :cond_0
    return-void
.end method

.method doAlarm(F)V
    .locals 6

    .line 941
    iget-wide v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->deepAlarmDelayTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 944
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->deepAlarmDelayTime:J

    .line 945
    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->mIsMute:Z

    if-nez v0, :cond_2

    .line 947
    sget v0, Lcom/powervision/gcs/utils/SonarStateHelper;->upDeep:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->MinDepthAlert:Z

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/utils/AudioUtil;->play(I)V

    .line 956
    :cond_1
    sget v0, Lcom/powervision/gcs/utils/SonarStateHelper;->downDeep:F

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    sget-boolean p1, Lcom/powervision/gcs/utils/SonarStateHelper;->MaxDepthAlert:Z

    if-eqz p1, :cond_2

    .line 959
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/utils/AudioUtil;->play(I)V

    :cond_2
    return-void
.end method

.method public fishViewInvalide()V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/FishImageView;->invalidate()V

    return-void
.end method

.method public forePlay()V
    .locals 3

    .line 736
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->currentHistory:Lcom/powervision/gcs/model/History;

    if-nez v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->mContext:Landroid/content/Context;

    const-string v1, "failed to play"

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {v0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->inter()V

    goto :goto_1

    .line 744
    :cond_1
    new-instance v0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;-><init>(Lcom/powervision/gcs/view/SonarWindowView$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    .line 745
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->currentHistory:Lcom/powervision/gcs/model/History;

    iget-object v1, v1, Lcom/powervision/gcs/model/History;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->setPath(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->currentHistory:Lcom/powervision/gcs/model/History;

    iget v0, v0, Lcom/powervision/gcs/model/History;->lineLen:I

    const/16 v1, 0x12c

    const/16 v2, 0x19

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->currentHistory:Lcom/powervision/gcs/model/History;

    iget v0, v0, Lcom/powervision/gcs/model/History;->lineLen:I

    div-int/lit8 v0, v0, 0xa

    .line 751
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->currentHistory:Lcom/powervision/gcs/model/History;

    iget v1, v1, Lcom/powervision/gcs/model/History;->lineLen:I

    if-ge v1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v0

    .line 755
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->setLimate(I)V

    .line 756
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThreadListener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->setHistoryThreadListener(Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;)V

    .line 757
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->start()V

    :goto_1
    return-void
.end method

.method public getDeep()F
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->getDeep()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLastHistory()Lcom/powervision/gcs/model/History;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->currentHistory:Lcom/powervision/gcs/model/History;

    return-object v0
.end method

.method public isHistoryMode()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->isHistoryMode:Z

    return v0
.end method

.method public isNeedRePlay()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->needRePlay:Z

    return v0
.end method

.method public isPrepareing()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->prepareStateing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 233
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 234
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->onStart()V

    .line 235
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->openDataStreamCMD()V

    return-void
.end method

.method public onDestory()V
    .locals 4

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bffread:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bffread:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bf:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bf:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bufferedReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 415
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 417
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->mPresenter:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$Presenter;

    invoke-interface {v0}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$Presenter;->unSubscribe()V

    .line 418
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->closeDemo()I

    .line 419
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 420
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->destoryTheThread()V

    .line 421
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->setHistoryThreadListener(Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;)V

    .line 422
    iput-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/FishImageView;->clearTheFish()V

    .line 425
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarTextureView:Lcom/powervision/gcs/Texture/SonarTextureView;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/SonarTextureView;->onDestroy()V

    .line 426
    new-instance v0, Lcom/powervision/gcs/view/SonarWindowView$6;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/SonarWindowView$6;-><init>(Lcom/powervision/gcs/view/SonarWindowView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/powervision/gcs/view/SonarWindowView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    if-eqz v0, :cond_4

    .line 433
    iput-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 273
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 274
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->onSonarConnectStateChangedListener:Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/SonarConnectState;->removeOnSonarConnectStateChangedListener(Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;)V

    .line 276
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/SonarManager;->setDataStartCallBack(Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarDataStartCallBack;)V

    .line 277
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/SonarManager;->setCmdStartCallBack(Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarCmdStartCallBack;)V

    .line 278
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->closeDataStreamCMD()V

    .line 279
    invoke-static {}, Lcom/powervision/gcs/mina/HandlerEvent;->getInstance()Lcom/powervision/gcs/mina/HandlerEvent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/mina/HandlerEvent;->setOnSonarDataStatusChangeListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;)V

    .line 280
    invoke-static {}, Lcom/powervision/gcs/manager/DeepManager;->getInstance()Lcom/powervision/gcs/manager/DeepManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/DeepManager;->setOnUIAboutDeepChangeLisetner(Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 212
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 216
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->getWidth()I

    move-result p1

    const/16 p2, 0x320

    if-ge p1, p2, :cond_0

    .line 217
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->toodeeportooshallow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->toodeeportooshallow:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarTextureView:Lcom/powervision/gcs/Texture/SonarTextureView;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/SonarTextureView;->onPause()V

    return-void
.end method

.method public onRecoding()I
    .locals 3

    .line 926
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/FishImageView;->setRecodeingMode(Z)V

    .line 927
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 928
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/powervision/base/config/GlobalConfig;->sonarHistory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->recodingPath:Ljava/lang/String;

    .line 930
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->onRecording(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarTextureView:Lcom/powervision/gcs/Texture/SonarTextureView;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/SonarTextureView;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 285
    invoke-static {}, Lcom/powervision/gcs/manager/DeepManager;->getInstance()Lcom/powervision/gcs/manager/DeepManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/view/SonarWindowView$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/SonarWindowView$3;-><init>(Lcom/powervision/gcs/view/SonarWindowView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/DeepManager;->setOnUIAboutDeepChangeLisetner(Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;)V

    .line 351
    invoke-static {}, Lcom/powervision/gcs/mina/HandlerEvent;->getInstance()Lcom/powervision/gcs/mina/HandlerEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->onSonarDataStatusChangeListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;

    .line 352
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/mina/HandlerEvent;->setOnSonarDataStatusChangeListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;)V

    .line 353
    invoke-static {}, Lcom/powervision/gcs/mina/HandlerEvent;->getInstance()Lcom/powervision/gcs/mina/HandlerEvent;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/view/SonarWindowView$4;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/SonarWindowView$4;-><init>(Lcom/powervision/gcs/view/SonarWindowView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/mina/HandlerEvent;->setOnSonarLightStateChangedListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;)V

    .line 377
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    new-instance v1, Lcom/powervision/gcs/view/SonarWindowView$5;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/SonarWindowView$5;-><init>(Lcom/powervision/gcs/view/SonarWindowView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/FishImageView;->setHistoryWrongListener(Lcom/powervision/gcs/view/FishImageView$HistoryWrongListener;)V

    .line 388
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->onSonarConnectStateChangedListener:Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/SonarConnectState;->addOnSonarConnectStateChangedListener(Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onStopRecording()I
    .locals 2

    .line 934
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/FishImageView;->setRecodeingMode(Z)V

    .line 935
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->onStopRecording()I

    move-result v0

    return v0
.end method

.method public onUnitChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 649
    sput-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 651
    sput-boolean p1, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    .line 654
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/FishImageView;->updataTheRule()V

    .line 655
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/FishImageView;->postInvalidate()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->needLockThread()V

    :cond_0
    return-void
.end method

.method public prePareTheHistory(Lcom/powervision/gcs/model/History;)V
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->isPrepareing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/FishImageView;->setHistory(Lcom/powervision/gcs/model/History;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 707
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->currentHistory:Lcom/powervision/gcs/model/History;

    .line 708
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->mContext:Landroid/content/Context;

    const-string v0, "failed to play"

    invoke-static {p1, v0}, Lcom/powervision/gcs/utils/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->closeDemo()I

    const/4 v0, 0x1

    .line 712
    iput-boolean v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->isHistoryMode:Z

    if-eqz p1, :cond_2

    .line 716
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->currentHistory:Lcom/powervision/gcs/model/History;

    .line 718
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->forePlay()V

    .line 720
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    if-eqz p1, :cond_3

    .line 721
    invoke-interface {p1}, Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;->addHistoryView()V

    .line 724
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/FishImageView;->clearTheFish()V

    const/4 p1, 0x0

    .line 725
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/SonarWindowView;->setNeedRePlay(Z)V

    .line 726
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/FishImageView;->setHistoryMode(Z)V

    .line 729
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    if-eqz p1, :cond_4

    .line 730
    invoke-interface {p1}, Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;->changeToPlayHistoryMode()V

    :cond_4
    return-void
.end method

.method public sendStartCMDtoSonar()V
    .locals 2

    const/4 v0, 0x1

    .line 615
    iput v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->getMessageState:I

    .line 616
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    if-eqz v0, :cond_0

    .line 617
    sget v1, Lcom/powervision/gcs/R$mipmap;->sonar_pause:I

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;->playSetRecouse(I)V

    .line 621
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/utils/io/SonarSocket;->getInstance()Lcom/powervision/gcs/utils/io/SonarSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/io/SonarSocket;->isConnected()Z

    .line 627
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v0

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->listener:Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;

    const-string v1, "\u53d1\u9001\u5f00\u542f\u58f0\u5450"

    invoke-interface {v0, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;->onMsg(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoScaleY(F)V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/Texture/SonarTextureRender;->setAutoScaleY(F)V

    return-void
.end method

.method public declared-synchronized setColorStyle(FI)V
    .locals 1

    monitor-enter p0

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/FishImageView;->postInvalidate()V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/gcs/Texture/SonarTextureRender;->changeSenOrColor(FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFinddFishListener(Lcom/powervision/gcs/view/SonarWindowView$FindFishListener;)V
    .locals 0

    .line 1601
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->findFishListener:Lcom/powervision/gcs/view/SonarWindowView$FindFishListener;

    return-void
.end method

.method public declared-synchronized setImagerData([B)V
    .locals 12

    monitor-enter p0

    .line 490
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->isHistoryMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 491
    monitor-exit p0

    return-void

    .line 493
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->lastEnd:I

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 494
    iput v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->lastEnd:I

    .line 495
    sget v1, Lcom/powervision/gcs/utils/SonarStateHelper;->deepToDataLen:I

    const/16 v2, 0x14

    if-nez v1, :cond_2

    .line 496
    array-length v1, p1

    const/16 v3, 0x3e8

    if-le v1, v3, :cond_1

    .line 497
    sput v2, Lcom/powervision/gcs/utils/SonarStateHelper;->deepToDataLen:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    .line 499
    sput v1, Lcom/powervision/gcs/utils/SonarStateHelper;->deepToDataLen:I

    :cond_2
    :goto_0
    new-array v1, v2, [I

    const/16 v3, 0x1f4

    new-array v9, v3, [B

    const/4 v10, 0x1

    new-array v11, v10, [Z

    .line 507
    iget-object v3, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    sget v7, Lcom/powervision/gcs/utils/SonarStateHelper;->sensivity:I

    move-object v4, v9

    move-object v5, p1

    move-object v6, v1

    move-object v8, v11

    invoke-virtual/range {v3 .. v8}, Lcom/powervision/gcs/Texture/SonarTextureRender;->lineUpdata([B[B[II[Z)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->updateBackStatus:I

    .line 509
    aget-boolean p1, v11, v0

    if-eqz p1, :cond_3

    .line 510
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->recodingPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 511
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->takeShot()V

    .line 514
    :cond_3
    iget p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->updateBackStatus:I

    if-ne p1, v10, :cond_7

    :goto_1
    const/4 p1, 0x2

    if-ge v0, v2, :cond_6

    .line 517
    aget v3, v1, v0

    if-nez v3, :cond_4

    goto :goto_2

    .line 520
    :cond_4
    rem-int/lit8 v3, v0, 0x2

    if-ne v3, v10, :cond_5

    .line 521
    aget v3, v1, v0

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-static {}, Lcom/powervision/gcs/manager/DeepManager;->getInstance()Lcom/powervision/gcs/manager/DeepManager;

    move-result-object v4

    .line 522
    invoke-virtual {v4}, Lcom/powervision/gcs/manager/DeepManager;->getNowRule()F

    move-result v4

    .line 521
    invoke-virtual {p0, p1, v3, v4}, Lcom/powervision/gcs/view/SonarWindowView;->addFish(IFF)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 526
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->findFishListener:Lcom/powervision/gcs/view/SonarWindowView$FindFishListener;

    if-eqz v0, :cond_7

    .line 527
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->findFishListener:Lcom/powervision/gcs/view/SonarWindowView$FindFishListener;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/SonarWindowView$FindFishListener;->updata(I)V

    .line 531
    :cond_7
    iget p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->updateBackStatus:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_8

    .line 532
    new-instance p1, Lcom/powervision/gcs/view/SonarWindowView$8;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/SonarWindowView$8;-><init>(Lcom/powervision/gcs/view/SonarWindowView;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/SonarWindowView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 540
    :cond_8
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/FishImageView;->doUpDateFish()V

    .line 541
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->toodeeportooshallow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 542
    new-instance p1, Lcom/powervision/gcs/view/SonarWindowView$9;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/SonarWindowView$9;-><init>(Lcom/powervision/gcs/view/SonarWindowView;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/SonarWindowView;->post(Ljava/lang/Runnable;)Z

    .line 553
    :cond_9
    :goto_3
    sget-boolean p1, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-nez p1, :cond_a

    .line 554
    invoke-static {}, Lcom/powervision/gcs/manager/DeepManager;->getInstance()Lcom/powervision/gcs/manager/DeepManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/DeepManager;->turnToManualMode()V

    .line 557
    :cond_a
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {p1}, Lcom/powervision/gcs/Texture/SonarTextureRender;->getDeep()F

    move-result p1

    .line 558
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v1}, Lcom/powervision/gcs/Texture/SonarTextureRender;->getHeightMax()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_c

    .line 561
    invoke-static {}, Lcom/powervision/gcs/manager/DeepManager;->getInstance()Lcom/powervision/gcs/manager/DeepManager;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lcom/powervision/gcs/manager/DeepManager;->computeTheDeepAfterTheMath(FF)V

    .line 563
    iget v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->updateBackStatus:I

    if-eq v1, v0, :cond_d

    .line 564
    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->VerticalFlasher:Z

    if-eqz v0, :cond_b

    .line 565
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setDeep(F)V

    .line 566
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;

    invoke-virtual {v0, v9}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setRawSigBytes([B)V

    .line 567
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;

    invoke-virtual {v0, v10}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setRawSigNewDatas(I)V

    goto :goto_4

    .line 569
    :cond_b
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setDeep(F)V

    goto :goto_4

    .line 573
    :cond_c
    invoke-static {}, Lcom/powervision/gcs/manager/DeepManager;->getInstance()Lcom/powervision/gcs/manager/DeepManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/manager/DeepManager;->errorDeep()V

    .line 574
    iget v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->updateBackStatus:I

    if-eq v1, v0, :cond_d

    .line 575
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;

    invoke-virtual {v0, v9}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setRawSigBytes([B)V

    .line 576
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;

    invoke-virtual {v0, v10}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setRawSigNewDatas(I)V

    :cond_d
    :goto_4
    if-eqz v2, :cond_e

    .line 582
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/SonarWindowView;->doAlarm(F)V

    .line 584
    :cond_e
    iput v10, p0, Lcom/powervision/gcs/view/SonarWindowView;->lastEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    monitor-exit p0

    return-void

    .line 587
    :cond_f
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setNeedRePlay(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->needRePlay:Z

    return-void
.end method

.method public setOnOtherViewStateChangeListener(Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    return-void
.end method

.method public setPrepareing(Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/FishImageView;->setPrepareing(Z)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0, p1}, Lcom/powervision/gcs/Texture/SonarTextureRender;->setPrepareing(Z)V

    .line 133
    :cond_1
    iput-boolean p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->prepareStateing:Z

    return-void
.end method

.method public setPresenter(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$Presenter;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->mPresenter:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/SonarWindowView;->setPresenter(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$Presenter;)V

    return-void
.end method

.method public setScreenWidth(I)V
    .locals 1

    .line 1281
    iput p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->screenWidth:I

    .line 1282
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {v0, p1}, Lcom/powervision/gcs/Texture/SonarTextureRender;->setScreenWidth(I)V

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    if-eqz v0, :cond_1

    .line 1286
    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/FishImageView;->setScreenWidth(I)V

    :cond_1
    return-void
.end method

.method public setSonarDataSendListener(Lcom/powervision/gcs/view/SonarWindowView$SonarDataSendListener;)V
    .locals 0

    .line 1611
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->sonarDataSendListener:Lcom/powervision/gcs/view/SonarWindowView$SonarDataSendListener;

    return-void
.end method

.method public setSonarTemperature(I)V
    .locals 1

    .line 606
    iget v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->lastTem:I

    if-eq v0, p1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->fishView:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/FishImageView;->setTem(I)V

    .line 609
    :cond_0
    iput p1, p0, Lcom/powervision/gcs/view/SonarWindowView;->lastTem:I

    return-void
.end method

.method public setVerticalManualDeep(FF)V
    .locals 2

    .line 986
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;

    const/16 v1, 0x1f4

    invoke-virtual {v0, p1, p2, v1}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setManualDeep(FFI)V

    return-void
.end method

.method public setVerticalViewScale(FI)V
    .locals 1

    .line 982
    iget-object p2, p0, Lcom/powervision/gcs/view/SonarWindowView;->verticalDataView:Lcom/powervision/gcs/Texture/TextureVerticalView;

    const/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setScale(FI)V

    return-void
.end method

.method public showOrHideFish(Z)V
    .locals 0

    .line 1291
    sput-boolean p1, Lcom/powervision/gcs/utils/SonarStateHelper;->DrawFish:Z

    .line 1292
    sput-boolean p1, Lcom/powervision/gcs/utils/SonarStateHelper;->DrawFishDeep:Z

    .line 1293
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView;->fishViewInvalide()V

    return-void
.end method

.method public stopSonarData()V
    .locals 2

    const/4 v0, 0x2

    .line 632
    iput v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->getMessageState:I

    .line 634
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    if-eqz v0, :cond_0

    .line 635
    sget v1, Lcom/powervision/gcs/R$mipmap;->sonar_play:I

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;->playSetRecouse(I)V

    .line 637
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/utils/io/SonarSocket;->getInstance()Lcom/powervision/gcs/utils/io/SonarSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/io/SonarSocket;->isConnected()Z

    .line 642
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->closeDataStreamCMD()V

    return-void
.end method

.method public takeShot()V
    .locals 2

    .line 1257
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/view/SonarWindowView$12;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/SonarWindowView$12;-><init>(Lcom/powervision/gcs/view/SonarWindowView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1277
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    return-void
.end method

.method public testReadSonarLogShow()V
    .locals 7

    const-string v0, "outout testReadSonarLogShow"

    .line 1125
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->w([Ljava/lang/String;)V

    .line 1126
    iget-boolean v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "outout return???"

    .line 1128
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->w([Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->readlist:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->readlist:Ljava/util/List;

    const-string v1, "\u65b0\u5916\u58f3\uff08A260016\uff09.txt"

    .line 1140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/powervision/base/config/GlobalConfig;->sonarLog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView;->readlist:Ljava/util/List;

    iget v3, p0, Lcom/powervision/gcs/view/SonarWindowView;->readindex:I

    .line 1147
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1148
    iget v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->readindex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->readindex:I

    .line 1149
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView;->readlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    .line 1150
    iput v3, p0, Lcom/powervision/gcs/view/SonarWindowView;->readindex:I

    .line 1152
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v4, 0x16

    cmp-long v6, v1, v4

    if-lez v6, :cond_7

    .line 1156
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->bffread:Ljava/io/BufferedReader;

    .line 1159
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bffread:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 1179
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bffread:Ljava/io/BufferedReader;

    if-eqz v0, :cond_4

    .line 1180
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->bffread:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1181
    :cond_4
    iput-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView;->bffread:Ljava/io/BufferedReader;

    goto :goto_2

    :cond_5
    const/16 v2, 0x16

    .line 1164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    .line 1165
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1166
    array-length v2, v0

    if-lez v2, :cond_6

    .line 1167
    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 1168
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_6

    .line 1169
    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_3

    .line 1172
    array-length v0, v1

    if-lez v0, :cond_3

    const-wide/16 v0, 0x96

    .line 1176
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1188
    :catch_0
    :goto_2
    iput-boolean v3, p0, Lcom/powervision/gcs/view/SonarWindowView;->isRunning:Z

    goto :goto_4

    :catch_1
    move-exception v0

    .line 1183
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1188
    :goto_3
    iput-boolean v3, p0, Lcom/powervision/gcs/view/SonarWindowView;->isRunning:Z

    throw v0

    :cond_7
    :goto_4
    return-void
.end method

.method public unLock()V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView;->historyThread:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->notifyTheThread()V

    :cond_0
    return-void
.end method
