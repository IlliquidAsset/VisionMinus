.class public Lcom/mob/apc/a/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lcom/mob/apc/a/d;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/apc/MobAPC$MobAPCMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mob/apc/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mob/apc/a/d;

    invoke-direct {v0}, Lcom/mob/apc/a/d;-><init>()V

    sput-object v0, Lcom/mob/apc/a/d;->c:Lcom/mob/apc/a/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/apc/a/d;->a:Ljava/util/HashMap;

    new-instance v0, Lcom/mob/apc/a/c;

    invoke-direct {v0}, Lcom/mob/apc/a/c;-><init>()V

    iput-object v0, p0, Lcom/mob/apc/a/d;->b:Lcom/mob/apc/a/c;

    return-void
.end method

.method public static a()Lcom/mob/apc/a/d;
    .locals 1

    sget-object v0, Lcom/mob/apc/a/d;->c:Lcom/mob/apc/a/d;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v2, p0, Lcom/mob/apc/a/d;->b:Lcom/mob/apc/a/c;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/mob/apc/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " not support."

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p6, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p6}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lcom/mob/apc/APCException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "[sendMessage] param not allowed null."

    invoke-virtual {p1, p3, p2}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/mob/apc/APCException;

    const-string p2, "param not allowed null."

    invoke-direct {p1, p2}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "[sendMessage] pkg not allowed null."

    invoke-virtual {p1, p3, p2}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/mob/apc/APCException;

    const-string p2, "pkg not allowed null."

    invoke-direct {p1, p2}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/mob/apc/a/f;)Lcom/mob/apc/a/f;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/mob/apc/a/d;->a:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/mob/apc/a/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/apc/MobAPC$MobAPCMessageListener;

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "[onAIDLMessageReceive] innerMessage: %s, listener: %s"

    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    iget-object v3, p1, Lcom/mob/apc/a/f;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/mob/apc/a/f;->a:Lcom/mob/apc/APCMessage;

    iget-wide v5, p1, Lcom/mob/apc/a/f;->e:J

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/mob/apc/MobAPC$MobAPCMessageListener;->onMessageReceive(Ljava/lang/String;Lcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;

    move-result-object v2

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "[onAIDLMessageReceive] listener apcMessage: %s"

    :try_start_2
    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/mob/apc/a/f;

    iget-object v4, p1, Lcom/mob/apc/a/f;->b:Ljava/lang/String;

    iget-wide v5, p1, Lcom/mob/apc/a/f;->e:J

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/mob/apc/a/f;-><init>(Lcom/mob/apc/APCMessage;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "[onAIDLMessageReceive] exception %s"

    invoke-virtual {v2, v0, v1}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/apc/a/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mob/MobACService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    new-instance v1, Lcom/mob/apc/a/d$a;

    invoke-direct {v1, p0, p1}, Lcom/mob/apc/a/d$a;-><init>(Lcom/mob/apc/a/d;Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/apc/a/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mob/apc/MobAPC$MobAPCMessageListener;)V
    .locals 3

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "[addMobIpcMsgListener] %s"

    invoke-virtual {v0, v2, v1}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mob/apc/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
