.class public Lcom/powervision/gcs/utils/ship/AppStatusTracker;
.super Ljava/lang/Object;
.source "AppStatusTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static tracker:Lcom/powervision/gcs/utils/ship/AppStatusTracker;


# instance fields
.field private application:Landroid/app/Application;

.field private currentActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/AppStatusTracker;->application:Landroid/app/Application;

    .line 18
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static getInstance()Lcom/powervision/gcs/utils/ship/AppStatusTracker;
    .locals 1

    .line 26
    sget-object v0, Lcom/powervision/gcs/utils/ship/AppStatusTracker;->tracker:Lcom/powervision/gcs/utils/ship/AppStatusTracker;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/powervision/gcs/utils/ship/AppStatusTracker;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/utils/ship/AppStatusTracker;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/powervision/gcs/utils/ship/AppStatusTracker;->tracker:Lcom/powervision/gcs/utils/ship/AppStatusTracker;

    return-void
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/AppStatusTracker;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/AppStatusTracker;->currentActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/AppStatusTracker;->currentActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
