.class Lcom/mob/tools/utils/ActivityTracker$4;
.super Ljava/lang/Object;
.source "ActivityTracker.java"

# interfaces
.implements Lcom/mob/tools/utils/ActivityTracker$EachTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/ActivityTracker;->onStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/ActivityTracker;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/mob/tools/utils/ActivityTracker$4;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    iput-object p2, p0, Lcom/mob/tools/utils/ActivityTracker$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public each(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$4;->val$activity:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lcom/mob/tools/utils/ActivityTracker$Tracker;->onStarted(Landroid/app/Activity;)V

    return-void
.end method
