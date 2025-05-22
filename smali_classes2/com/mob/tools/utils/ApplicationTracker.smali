.class public Lcom/mob/tools/utils/ApplicationTracker;
.super Ljava/lang/Object;
.source "ApplicationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/ApplicationTracker$Tracker;
    }
.end annotation


# static fields
.field private static trackers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mob/tools/utils/ApplicationTracker$Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mob/tools/utils/ApplicationTracker;->trackers:Ljava/util/HashSet;

    .line 18
    :try_start_0
    invoke-static {}, Lcom/mob/tools/utils/DeviceHelper;->currentActivityThread()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mH"

    .line 21
    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mC"

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "al"

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lb"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ac"

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "k"

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler$Callback;

    .line 31
    new-instance v4, Lcom/mob/tools/utils/ApplicationTracker$1;

    invoke-direct {v4, v0, v3}, Lcom/mob/tools/utils/ApplicationTracker$1;-><init>(Ljava/lang/Object;Landroid/os/Handler$Callback;)V

    invoke-static {v1, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->setInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 101
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    .line 10
    sget-object v0, Lcom/mob/tools/utils/ApplicationTracker;->trackers:Ljava/util/HashSet;

    return-object v0
.end method

.method public static addTracker(Lcom/mob/tools/utils/ApplicationTracker$Tracker;)V
    .locals 1

    .line 106
    sget-object v0, Lcom/mob/tools/utils/ApplicationTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeTracker(Lcom/mob/tools/utils/ApplicationTracker$Tracker;)V
    .locals 1

    .line 110
    sget-object v0, Lcom/mob/tools/utils/ApplicationTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
