.class Lcom/mob/tools/utils/ActivityTracker$1;
.super Ljava/lang/Object;
.source "ActivityTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/ActivityTracker;->initLevel14(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/ActivityTracker;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/ActivityTracker;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mob/tools/utils/ActivityTracker$1;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$1;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->access$000(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$1;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$500(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$1;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$300(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$1;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$200(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$1;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->access$600(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$1;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$100(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$1;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$400(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    return-void
.end method
