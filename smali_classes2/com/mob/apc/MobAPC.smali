.class public Lcom/mob/apc/MobAPC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/apc/MobAPC$MobAPCMessageListener;
    }
.end annotation


# static fields
.field public static final TYPE_AIDL:I = 0x1

.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MOBAPC : 1.0.0"

    invoke-virtual {v0, v2, v1}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAPCMessageListener(JLcom/mob/apc/MobAPC$MobAPCMessageListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BS_FORWARD_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mob/apc/MobAPC;->addAPCMessageListener(Ljava/lang/String;Lcom/mob/apc/MobAPC$MobAPCMessageListener;)V

    return-void
.end method

.method public static addAPCMessageListener(Ljava/lang/String;Lcom/mob/apc/MobAPC$MobAPCMessageListener;)V
    .locals 1

    invoke-static {}, Lcom/mob/apc/a/d;->a()Lcom/mob/apc/a/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mob/apc/a/d;->a(Ljava/lang/String;Lcom/mob/apc/MobAPC$MobAPCMessageListener;)V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/mob/apc/MobAPC;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getMAPCServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/mob/apc/a/d;->a()Lcom/mob/apc/a/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mob.service.action.MOB_AC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mob/apc/MobAPC;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v5, v5, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mob/apc/MobAPC;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/apc/a/g;->a(Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v1, "[getMAPCServiceList] list: %s"

    invoke-virtual {v2, v1, v3}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mob/apc/MobAPC;->a:Landroid/content/Context;

    invoke-static {}, Lcom/mob/apc/a/d;->a()Lcom/mob/apc/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/apc/a/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static sendMessage(ILjava/lang/String;JLcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BS_FORWARD_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, p0

    move-object v3, p1

    move-object v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/mob/apc/MobAPC;->sendMessage(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;

    move-result-object p0

    return-object p0
.end method

.method public static sendMessage(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/mob/apc/a/d;->a()Lcom/mob/apc/a/d;

    move-result-object v5

    move v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-wide/from16 v10, p4

    invoke-virtual/range {v5 .. v11}, Lcom/mob/apc/a/d;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[sendMessage] not allow main thread to invoke"

    invoke-virtual {v0, v2, v1}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/mob/apc/APCException;

    const-string v1, "not allow main thread to invoke"

    invoke-direct {v0, v1}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
