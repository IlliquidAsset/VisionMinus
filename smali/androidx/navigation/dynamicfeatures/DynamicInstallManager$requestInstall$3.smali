.class final Landroidx/navigation/dynamicfeatures/DynamicInstallManager$requestInstall$3;
.super Ljava/lang/Object;
.source "DynamicInstallManager.kt"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->requestInstall(Ljava/lang/String;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "exception",
        "Ljava/lang/Exception;",
        "kotlin.jvm.PlatformType",
        "onFailure"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

.field final synthetic $module:Ljava/lang/String;

.field final synthetic $status:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$requestInstall$3;->$module:Ljava/lang/String;

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$requestInstall$3;->$installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    iput-object p3, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$requestInstall$3;->$status:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 10

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error requesting install of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$requestInstall$3;->$module:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicInstallManager"

    .line 145
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$requestInstall$3;->$installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    invoke-virtual {v0, p1}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->setException$navigation_dynamic_features_runtime_release(Ljava/lang/Exception;)V

    .line 148
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$requestInstall$3;->$status:Landroidx/lifecycle/MutableLiveData;

    .line 151
    instance-of v1, p1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    if-eqz v1, :cond_0

    .line 152
    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;->getErrorCode()I

    move-result p1

    move v3, p1

    goto :goto_0

    :cond_0
    const/16 p1, -0x64

    const/16 v3, -0x64

    :goto_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    .line 157
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$requestInstall$3;->$module:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 158
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 148
    invoke-static/range {v1 .. v9}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->create(IIIJJLjava/util/List;Ljava/util/List;)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 160
    sget-object p1, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->Companion:Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$requestInstall$3;->$status:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;->terminateLiveData$navigation_dynamic_features_runtime_release(Landroidx/lifecycle/MutableLiveData;)V

    return-void
.end method
