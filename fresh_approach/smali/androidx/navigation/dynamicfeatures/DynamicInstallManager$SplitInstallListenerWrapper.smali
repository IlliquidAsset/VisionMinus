.class final Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;
.super Ljava/lang/Object;
.source "DynamicInstallManager.kt"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/dynamicfeatures/DynamicInstallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SplitInstallListenerWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;",
        "Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;",
        "context",
        "Landroid/content/Context;",
        "status",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
        "installMonitor",
        "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "(Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V",
        "onStateUpdate",
        "",
        "splitInstallSessionState",
        "navigation-dynamic-features-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

.field private final status:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;",
            "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installMonitor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->status:Landroidx/lifecycle/MutableLiveData;

    iput-object p3, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    return-void
.end method


# virtual methods
.method public onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 2

    const-string v0, "splitInstallSessionState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v0

    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    invoke-virtual {v1}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->getSessionId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 174
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/splitcompat/SplitCompat;->install(Landroid/content/Context;)Z

    .line 177
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->updateAppInfo(Landroid/content/Context;)V

    .line 179
    :cond_0
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->status:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->hasTerminalStatus()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 181
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    invoke-virtual {p1}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->getSplitInstallManager$navigation_dynamic_features_runtime_release()Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->unregisterListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    .line 182
    sget-object p1, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->Companion:Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->status:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;->terminateLiveData$navigation_dynamic_features_runtime_release(Landroidx/lifecycle/MutableLiveData;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0

    .line 164
    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0, p1}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
