.class final Lcom/mob/tools/utils/ApplicationTracker$1;
.super Ljava/lang/Object;
.source "ApplicationTracker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/ApplicationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$backup:Landroid/os/Handler$Callback;

.field final synthetic val$fThread:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$backup:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 33
    invoke-static {}, Lcom/mob/tools/utils/ApplicationTracker;->access$000()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/utils/ApplicationTracker$Tracker;

    .line 35
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onAttachAgent(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onLocalVoiceInteractionStarted(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onPictureInPictureModeChanged(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 87
    :pswitch_4
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onMultiWindowModeChanged(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 86
    :pswitch_5
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onStopBinderTrackingAndDump(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 85
    :pswitch_6
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onStartBinderTracking(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 84
    :pswitch_7
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onEnterAnimationComplete(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 83
    :pswitch_8
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onBackgroundVisibleBehindChanged(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 82
    :pswitch_9
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onCancelVisibleBehind(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 81
    :pswitch_a
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onOnNewActivityOptions(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 80
    :pswitch_b
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onInstallProvider(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 79
    :pswitch_c
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onTranslucentConversionComplete(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 78
    :pswitch_d
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onRequestAssistContextExtras(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 77
    :pswitch_e
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onUnstableProviderDied(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 76
    :pswitch_f
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDumpProvider(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 75
    :pswitch_10
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onTrimMemory(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 74
    :pswitch_11
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onUpdatePackageCompatibilityInfo(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 73
    :pswitch_12
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onSetCoreSettings(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 72
    :pswitch_13
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onSleeping(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 71
    :pswitch_14
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDumpActivity(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 70
    :pswitch_15
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDumpHeap(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 69
    :pswitch_16
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onScheduleCrash(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 68
    :pswitch_17
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDispatchPackageBroadcast(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 67
    :pswitch_18
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onEnableJit(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 66
    :pswitch_19
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onRemoveProvider(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 65
    :pswitch_1a
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onSuicide(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 64
    :pswitch_1b
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDestroyBackupAgent(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 63
    :pswitch_1c
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onCreateBackupAgent(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 62
    :pswitch_1d
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onProfilerControl(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 61
    :pswitch_1e
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onRelaunchActivity(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 60
    :pswitch_1f
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onActivityConfigurationChanged(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 59
    :pswitch_20
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onLowMemory(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 58
    :pswitch_21
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDumpService(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 57
    :pswitch_22
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onUnbindService(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 56
    :pswitch_23
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onBindService(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 55
    :pswitch_24
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onGcWhenIdle(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 54
    :pswitch_25
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onCleanUpContext(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 53
    :pswitch_26
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onConfigurationChanged(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 52
    :pswitch_27
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onStopService(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 51
    :pswitch_28
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onServiceArgs(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 50
    :pswitch_29
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onCreateService(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 49
    :pswitch_2a
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onReceiver(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 48
    :pswitch_2b
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onNewIntent(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 47
    :pswitch_2c
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onExitApplication(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 46
    :pswitch_2d
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onBindApplication(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 45
    :pswitch_2e
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDestroyActivity(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 44
    :pswitch_2f
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onSendResult(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 43
    :pswitch_30
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onResumeActivity(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 42
    :pswitch_31
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onHideWindow(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 41
    :pswitch_32
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onShowWindow(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 40
    :pswitch_33
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onStopActivityHide(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 39
    :pswitch_34
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onStopActivityShow(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 38
    :pswitch_35
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onPauseActivityFinishing(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 37
    :pswitch_36
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onPauseActivity(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 36
    :pswitch_37
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onLaunchActivity(Ljava/lang/Object;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 93
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/ApplicationTracker$1;->val$backup:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
