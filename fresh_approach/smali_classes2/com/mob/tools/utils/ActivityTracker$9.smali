.class Lcom/mob/tools/utils/ActivityTracker$9;
.super Ljava/lang/Object;
.source "ActivityTracker.java"

# interfaces
.implements Lcom/mob/tools/utils/ActivityTracker$EachTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/ActivityTracker;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/ActivityTracker;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$outState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/mob/tools/utils/ActivityTracker$9;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    iput-object p2, p0, Lcom/mob/tools/utils/ActivityTracker$9;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mob/tools/utils/ActivityTracker$9;->val$outState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public each(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$9;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker$9;->val$outState:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Lcom/mob/tools/utils/ActivityTracker$Tracker;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
