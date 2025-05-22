.class public Lcom/powervision/base/base/lifecycle/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static manager:Lcom/powervision/base/base/lifecycle/ActivityManager;


# instance fields
.field private final DOWN_TIME:I

.field private activities:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private alreadyShowBatteryError:Z

.field private alreadyShowHighTemOff:Z

.field private alreadyShowHighTemWarn:Z

.field private batteryErrorDialog:Lcom/powervision/base/dialog/BatteryErrorDialog;

.field public count:I

.field private disposable:Lio/reactivex/disposables/Disposable;

.field private highTempDialog:Lcom/powervision/base/dialog/TempDialog;

.field private isArm:Z

.field private tempOffDialog:Lcom/powervision/base/dialog/TempDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->activities:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->count:I

    const/16 v1, 0xb4

    .line 29
    iput v1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->DOWN_TIME:I

    .line 37
    iput-boolean v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->alreadyShowHighTemWarn:Z

    .line 38
    iput-boolean v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->alreadyShowHighTemOff:Z

    .line 39
    iput-boolean v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->alreadyShowBatteryError:Z

    .line 44
    iput-boolean v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->isArm:Z

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/base/lifecycle/ActivityManager;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->showHighTempDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/base/base/lifecycle/ActivityManager;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->showTempOffDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/base/base/lifecycle/ActivityManager;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->showBatteryErrorDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/base/base/lifecycle/ActivityManager;)Lcom/powervision/base/dialog/BatteryErrorDialog;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->batteryErrorDialog:Lcom/powervision/base/dialog/BatteryErrorDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/powervision/base/base/lifecycle/ActivityManager;Lcom/powervision/base/dialog/BatteryErrorDialog;)Lcom/powervision/base/dialog/BatteryErrorDialog;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->batteryErrorDialog:Lcom/powervision/base/dialog/BatteryErrorDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/powervision/base/base/lifecycle/ActivityManager;)Lcom/powervision/base/dialog/TempDialog;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->highTempDialog:Lcom/powervision/base/dialog/TempDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/powervision/base/base/lifecycle/ActivityManager;Lcom/powervision/base/dialog/TempDialog;)Lcom/powervision/base/dialog/TempDialog;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->highTempDialog:Lcom/powervision/base/dialog/TempDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/powervision/base/base/lifecycle/ActivityManager;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->freeCount()V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/base/base/lifecycle/ActivityManager;)Lcom/powervision/base/dialog/TempDialog;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->tempOffDialog:Lcom/powervision/base/dialog/TempDialog;

    return-object p0
.end method

.method static synthetic access$602(Lcom/powervision/base/base/lifecycle/ActivityManager;Lcom/powervision/base/dialog/TempDialog;)Lcom/powervision/base/dialog/TempDialog;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->tempOffDialog:Lcom/powervision/base/dialog/TempDialog;

    return-object p1
.end method

.method private freeCount()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/powervision/base/base/lifecycle/ActivityManager;
    .locals 2

    const-class v0, Lcom/powervision/base/base/lifecycle/ActivityManager;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/powervision/base/base/lifecycle/ActivityManager;->manager:Lcom/powervision/base/base/lifecycle/ActivityManager;

    if-nez v1, :cond_1

    .line 48
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    :try_start_1
    sget-object v1, Lcom/powervision/base/base/lifecycle/ActivityManager;->manager:Lcom/powervision/base/base/lifecycle/ActivityManager;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/powervision/base/base/lifecycle/ActivityManager;

    invoke-direct {v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;-><init>()V

    sput-object v1, Lcom/powervision/base/base/lifecycle/ActivityManager;->manager:Lcom/powervision/base/base/lifecycle/ActivityManager;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v1, Lcom/powervision/base/base/lifecycle/ActivityManager;->manager:Lcom/powervision/base/base/lifecycle/ActivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic lambda$countdown$0(ILjava/lang/Long;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private resetStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->alreadyShowHighTemWarn:Z

    .line 334
    iput-boolean v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->alreadyShowHighTemOff:Z

    return-void
.end method

.method private showBatteryErrorDialog(I)V
    .locals 2

    const/16 v0, 0x1e

    .line 200
    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 202
    iget-boolean v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->alreadyShowBatteryError:Z

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->batteryErrorDialog:Lcom/powervision/base/dialog/BatteryErrorDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/powervision/base/dialog/BatteryErrorDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 210
    :cond_1
    new-instance v0, Lcom/powervision/base/dialog/BatteryErrorDialog;

    invoke-virtual {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/dialog/BatteryErrorDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->batteryErrorDialog:Lcom/powervision/base/dialog/BatteryErrorDialog;

    .line 212
    invoke-virtual {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->isArm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->batteryErrorDialog:Lcom/powervision/base/dialog/BatteryErrorDialog;

    sget v1, Lcom/powervision/base/R$string;->AP03_Msg_139_15:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/BatteryErrorDialog;->setTitle(I)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->batteryErrorDialog:Lcom/powervision/base/dialog/BatteryErrorDialog;

    sget v1, Lcom/powervision/base/R$string;->AP03_Msg_139_12:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/BatteryErrorDialog;->setTitle(I)V

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->batteryErrorDialog:Lcom/powervision/base/dialog/BatteryErrorDialog;

    new-instance v1, Lcom/powervision/base/base/lifecycle/ActivityManager$2;

    invoke-direct {v1, p0}, Lcom/powervision/base/base/lifecycle/ActivityManager$2;-><init>(Lcom/powervision/base/base/lifecycle/ActivityManager;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/BatteryErrorDialog;->setOnDialogClick(Lcom/powervision/base/dialog/BatteryErrorDialog$OnDialogClick;)V

    .line 231
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->batteryErrorDialog:Lcom/powervision/base/dialog/BatteryErrorDialog;

    invoke-virtual {v0}, Lcom/powervision/base/dialog/BatteryErrorDialog;->show()V

    .line 234
    :cond_3
    iput-boolean p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->alreadyShowBatteryError:Z

    return-void
.end method

.method private showHighTempDialog(I)V
    .locals 2

    const/16 v0, 0x11

    .line 241
    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 244
    iget-boolean v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->alreadyShowHighTemWarn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->alreadyShowHighTemWarn:Z

    .line 249
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->highTempDialog:Lcom/powervision/base/dialog/TempDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/powervision/base/dialog/TempDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 252
    :cond_1
    new-instance v0, Lcom/powervision/base/dialog/TempDialog;

    invoke-virtual {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/dialog/TempDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->highTempDialog:Lcom/powervision/base/dialog/TempDialog;

    .line 253
    sget v1, Lcom/powervision/base/R$string;->AP03_Msg_139_10:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/TempDialog;->setContent(I)V

    .line 254
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->highTempDialog:Lcom/powervision/base/dialog/TempDialog;

    new-instance v1, Lcom/powervision/base/base/lifecycle/ActivityManager$3;

    invoke-direct {v1, p0}, Lcom/powervision/base/base/lifecycle/ActivityManager$3;-><init>(Lcom/powervision/base/base/lifecycle/ActivityManager;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/TempDialog;->setOnDialogClick(Lcom/powervision/base/dialog/TempDialog$OnDialogClick;)V

    .line 263
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->highTempDialog:Lcom/powervision/base/dialog/TempDialog;

    invoke-virtual {v0}, Lcom/powervision/base/dialog/TempDialog;->show()V

    goto :goto_0

    .line 265
    :cond_2
    invoke-direct {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->freeCount()V

    .line 267
    :goto_0
    iput-boolean p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->alreadyShowHighTemWarn:Z

    return-void
.end method

.method private showTempOffDialog(I)V
    .locals 2

    const/16 v0, 0x12

    .line 276
    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 278
    iget-boolean v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->alreadyShowHighTemOff:Z

    if-eqz v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->tempOffDialog:Lcom/powervision/base/dialog/TempDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/powervision/base/dialog/TempDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 284
    :cond_1
    new-instance v0, Lcom/powervision/base/dialog/TempDialog;

    invoke-virtual {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/dialog/TempDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->tempOffDialog:Lcom/powervision/base/dialog/TempDialog;

    .line 285
    sget v1, Lcom/powervision/base/R$string;->AP03_Msg_139_11:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/TempDialog;->setContent(I)V

    .line 286
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->tempOffDialog:Lcom/powervision/base/dialog/TempDialog;

    new-instance v1, Lcom/powervision/base/base/lifecycle/ActivityManager$4;

    invoke-direct {v1, p0}, Lcom/powervision/base/base/lifecycle/ActivityManager$4;-><init>(Lcom/powervision/base/base/lifecycle/ActivityManager;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/TempDialog;->setOnDialogClick(Lcom/powervision/base/dialog/TempDialog$OnDialogClick;)V

    .line 293
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->tempOffDialog:Lcom/powervision/base/dialog/TempDialog;

    invoke-virtual {v0}, Lcom/powervision/base/dialog/TempDialog;->show()V

    .line 296
    :cond_2
    iput-boolean p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->alreadyShowHighTemOff:Z

    return-void
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->activities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public countdown(I)V
    .locals 5

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    .line 307
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, v4}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 308
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 309
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/base/lifecycle/-$$Lambda$ActivityManager$mUubM6kk3I-xw_dD2bUKru4c3WM;

    invoke-direct {v1, p1}, Lcom/powervision/base/base/lifecycle/-$$Lambda$ActivityManager$mUubM6kk3I-xw_dD2bUKru4c3WM;-><init>(I)V

    .line 310
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    int-to-long v1, p1

    .line 311
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/base/base/lifecycle/-$$Lambda$ActivityManager$a7SqFvIyTZP2Scg3WrLehkn54Us;

    invoke-direct {v0, p0}, Lcom/powervision/base/base/lifecycle/-$$Lambda$ActivityManager$a7SqFvIyTZP2Scg3WrLehkn54Us;-><init>(Lcom/powervision/base/base/lifecycle/ActivityManager;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public disConnected()V
    .locals 0

    .line 341
    invoke-direct {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->freeCount()V

    .line 342
    invoke-direct {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->resetStatus()V

    return-void
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->removeActivity(Landroid/app/Activity;)V

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public getActivityStack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->activities:Ljava/util/Stack;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->activities:Ljava/util/Stack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->activities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public isArm()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->isArm:Z

    return v0
.end method

.method public synthetic lambda$countdown$1$ActivityManager(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->resetStatus()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ">>>>>>>>>>>>>>>>>>>App \u521b\u5efa"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "ActivityManager"

    const-string v1, ">>>>>>>>>>>>>>>>>>>onActivityPaused"

    .line 134
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "ActivityManager"

    const-string v1, ">>>>>>>>>>>>>>>>>>>onActivityResumed"

    .line 128
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 120
    iget p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->count:I

    if-nez p1, :cond_0

    const-string p1, "ActivityManager"

    const-string v0, ">>>>>>>>>>>>>>>>>>>App\u5207\u5230\u524d\u53f0"

    .line 121
    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    iget p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->count:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "ActivityManager"

    const-string v1, ">>>>>>>>>>>>>>>>>>>onActivityStopped"

    .line 140
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget v1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->count:I

    if-nez v1, :cond_0

    const-string v1, ">>>>>>>>>>>>>>>>>>>App\u5207\u5230\u540e\u53f0"

    .line 143
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addActivity>>>>>>>>>>>>>>>>>>>  add = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->highTempDialog:Lcom/powervision/base/dialog/TempDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/powervision/base/dialog/TempDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->highTempDialog:Lcom/powervision/base/dialog/TempDialog;

    invoke-virtual {p1}, Lcom/powervision/base/dialog/TempDialog;->dismiss()V

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->highTempDialog:Lcom/powervision/base/dialog/TempDialog;

    .line 150
    invoke-direct {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->freeCount()V

    const/16 p1, 0xb4

    .line 151
    invoke-virtual {p0, p1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->countdown(I)V

    :cond_1
    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->activities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setArm(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->isArm:Z

    return-void
.end method

.method public showDialog(III)V
    .locals 1

    .line 176
    iget p2, p0, Lcom/powervision/base/base/lifecycle/ActivityManager;->count:I

    if-gtz p2, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 181
    new-instance v0, Lcom/powervision/base/base/lifecycle/ActivityManager$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/powervision/base/base/lifecycle/ActivityManager$1;-><init>(Lcom/powervision/base/base/lifecycle/ActivityManager;II)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
