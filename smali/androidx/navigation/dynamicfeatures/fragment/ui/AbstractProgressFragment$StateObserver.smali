.class final Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;
.super Ljava/lang/Object;
.source "AbstractProgressFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;",
        "Landroidx/lifecycle/Observer;",
        "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
        "monitor",
        "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V",
        "onChanged",
        "",
        "sessionState",
        "navigation-dynamic-features-fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final monitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

.field final synthetic this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;


# direct methods
.method public constructor <init>(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
            ")V"
        }
    .end annotation

    const-string v0, "monitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->monitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 10

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->hasTerminalStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->monitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    invoke-virtual {v0}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->getStatus()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v0

    const/16 v1, -0x64

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    .line 134
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "sessionState.resolutionIntent()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 133
    invoke-virtual/range {v2 .. v9}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1, v1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onFailed(I)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onCancelled()V

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onFailed(I)V

    goto :goto_0

    .line 127
    :pswitch_3
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onInstalled()V

    .line 128
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->navigate()V

    goto :goto_0

    .line 149
    :pswitch_4
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    .line 150
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v1

    .line 151
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v2

    .line 152
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v4

    .line 149
    invoke-virtual/range {v0 .. v5}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onProgress(IJJ)V

    goto :goto_0

    .line 143
    :pswitch_5
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1, v1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onFailed(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0, p1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->onChanged(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
