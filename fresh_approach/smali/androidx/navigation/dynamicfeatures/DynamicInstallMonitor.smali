.class public final Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;
.super Ljava/lang/Object;
.source "DynamicInstallMonitor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010$\u001a\u00020%R4\u0010\u0006\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00052\u000e\u0010\u0003\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R \u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c8A@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000eR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0013@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "",
        "()V",
        "<set-?>",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "exception",
        "getException",
        "()Ljava/lang/Exception;",
        "setException$navigation_dynamic_features_runtime_release",
        "(Ljava/lang/Exception;)V",
        "installRequired",
        "",
        "isInstallRequired",
        "()Z",
        "setInstallRequired$navigation_dynamic_features_runtime_release",
        "(Z)V",
        "isUsed",
        "isUsed$navigation_dynamic_features_runtime_release",
        "",
        "sessionId",
        "getSessionId",
        "()I",
        "setSessionId$navigation_dynamic_features_runtime_release",
        "(I)V",
        "splitInstallManager",
        "Lcom/google/android/play/core/splitinstall/SplitInstallManager;",
        "getSplitInstallManager$navigation_dynamic_features_runtime_release",
        "()Lcom/google/android/play/core/splitinstall/SplitInstallManager;",
        "setSplitInstallManager$navigation_dynamic_features_runtime_release",
        "(Lcom/google/android/play/core/splitinstall/SplitInstallManager;)V",
        "status",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
        "getStatus",
        "()Landroidx/lifecycle/LiveData;",
        "cancelInstall",
        "",
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
.field private exception:Ljava/lang/Exception;

.field private isInstallRequired:Z

.field private isUsed:Z

.field private sessionId:I

.field private splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

.field private final status:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->status:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final cancelInstall()V
    .locals 2

    .line 88
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    if-eqz v0, :cond_0

    .line 89
    iget v1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->sessionId:I

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->cancelInstall(I)Lcom/google/android/play/core/tasks/Task;

    :cond_0
    return-void
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getSessionId()I
    .locals 1

    .line 67
    iget v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->sessionId:I

    return v0
.end method

.method public final getSplitInstallManager$navigation_dynamic_features_runtime_release()Lcom/google/android/play/core/splitinstall/SplitInstallManager;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    return-object v0
.end method

.method public final getStatus()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->status:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final isInstallRequired()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->isInstallRequired:Z

    return v0
.end method

.method public final isUsed$navigation_dynamic_features_runtime_release()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->isUsed:Z

    return v0
.end method

.method public final setException$navigation_dynamic_features_runtime_release(Ljava/lang/Exception;)V
    .locals 0

    .line 40
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public final setInstallRequired$navigation_dynamic_features_runtime_release(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->isInstallRequired:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->isUsed:Z

    :cond_0
    return-void
.end method

.method public final setSessionId$navigation_dynamic_features_runtime_release(I)V
    .locals 0

    .line 67
    iput p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->sessionId:I

    return-void
.end method

.method public final setSplitInstallManager$navigation_dynamic_features_runtime_release(Lcom/google/android/play/core/splitinstall/SplitInstallManager;)V
    .locals 0

    .line 73
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    return-void
.end method
