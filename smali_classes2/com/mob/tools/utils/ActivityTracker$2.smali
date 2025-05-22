.class Lcom/mob/tools/utils/ActivityTracker$2;
.super Landroid/app/Instrumentation;
.source "ActivityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/ActivityTracker;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/ActivityTracker;

.field final synthetic val$origin:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/ActivityTracker;Ljava/lang/Object;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    iput-object p2, p0, Lcom/mob/tools/utils/ActivityTracker$2;->val$origin:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    return-void
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->val$origin:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "callActivityOnCreate"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 80
    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->access$000(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->val$origin:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "callActivityOnDestroy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 130
    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :catchall_0
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 134
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$500(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->val$origin:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "callActivityOnPause"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 110
    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :catchall_0
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 114
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$300(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->val$origin:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "callActivityOnResume"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 100
    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :catchall_0
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 104
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$200(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->val$origin:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "callActivityOnSaveInstanceState"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 140
    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :catchall_0
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 145
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->access$600(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->val$origin:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "callActivityOnStart"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 90
    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :catchall_0
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 94
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$100(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->val$origin:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "callActivityOnStop"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 120
    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :catchall_0
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 124
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$400(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    return-void
.end method
