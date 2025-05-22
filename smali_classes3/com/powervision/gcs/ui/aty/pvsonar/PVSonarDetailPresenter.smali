.class public Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;
.super Ljava/lang/Object;
.source "PVSonarDetailPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$Presenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "PVSonarDetailPresenter"


# instance fields
.field private mTempTemperature:I

.field private final mView:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$View;

.field private onSonarTemperatureHandlerListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarTemperatureHandlerListener;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$View;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter$1;-><init>(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->runnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->mTempTemperature:I

    .line 75
    new-instance v0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter$2;-><init>(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->onSonarTemperatureHandlerListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarTemperatureHandlerListener;

    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$View;

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->mView:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$View;

    .line 29
    invoke-interface {p1, p0}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$View;->setPresenter(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->mTempTemperature:I

    return p0
.end method

.method static synthetic access$002(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->mTempTemperature:I

    return p1
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;)Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$View;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->mView:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$View;

    return-object p0
.end method

.method private initData()V
    .locals 0

    return-void
.end method

.method private initListener()V
    .locals 4

    .line 40
    invoke-static {}, Lcom/powervision/gcs/mina/HandlerEvent;->getInstance()Lcom/powervision/gcs/mina/HandlerEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->onSonarTemperatureHandlerListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarTemperatureHandlerListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/mina/HandlerEvent;->setOnSonarTemperatureHandlerListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarTemperatureHandlerListener;)V

    .line 41
    invoke-static {}, Lcom/powervision/base/utils/LoopingManager;->get()Lcom/powervision/base/utils/LoopingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->runnable:Ljava/lang/Runnable;

    const-string v2, "SonarTemp"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Lcom/powervision/base/utils/LoopingManager;->addAWork(Ljava/lang/String;Ljava/lang/Runnable;I)V

    return-void
.end method

.method private unInitListener()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/powervision/gcs/mina/HandlerEvent;->getInstance()Lcom/powervision/gcs/mina/HandlerEvent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/mina/HandlerEvent;->setOnSonarTemperatureHandlerListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarTemperatureHandlerListener;)V

    .line 54
    invoke-static {}, Lcom/powervision/base/utils/LoopingManager;->get()Lcom/powervision/base/utils/LoopingManager;

    move-result-object v0

    const-string v1, "SonarTemp"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/LoopingManager;->removeWork(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public subscribe()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->initData()V

    .line 35
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->initListener()V

    return-void
.end method

.method public unSubscribe()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->unInitListener()V

    return-void
.end method
