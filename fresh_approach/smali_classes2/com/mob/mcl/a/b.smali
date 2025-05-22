.class public Lcom/mob/mcl/a/b;
.super Ljava/lang/Object;
.source "ApcHelper.java"


# static fields
.field private static volatile c:Lcom/mob/mcl/a/b;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mob/mcl/a/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/mcl/a/b;->c:Lcom/mob/mcl/a/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/mcl/a/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/mcl/a/b;->c:Lcom/mob/mcl/a/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/mcl/a/b;

    invoke-direct {v1}, Lcom/mob/mcl/a/b;-><init>()V

    sput-object v1, Lcom/mob/mcl/a/b;->c:Lcom/mob/mcl/a/b;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mcl/a/b;->c:Lcom/mob/mcl/a/b;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Ljava/lang/String;I)Lcom/mob/apc/APCMessage;
    .locals 6

    .line 13
    :try_start_0
    new-instance v3, Lcom/mob/apc/APCMessage;

    invoke-direct {v3}, Lcom/mob/apc/APCMessage;-><init>()V

    .line 14
    iput p1, v3, Lcom/mob/apc/APCMessage;->what:I

    .line 15
    iput-object p2, v3, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    .line 16
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apc fw mg \uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mob/apc/APCMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to ->"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 17
    iget-object v2, p0, Lcom/mob/mcl/a/b;->b:Ljava/lang/String;

    int-to-long v4, p4

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/mob/apc/MobAPC;->sendMessage(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/mob/apc/APCMessage;)Lcom/mob/tools/network/HttpResponseCallback;
    .locals 1

    .line 60
    new-instance v0, Lcom/mob/mcl/a/a;

    invoke-direct {v0, p0, p1}, Lcom/mob/mcl/a/a;-><init>(Lcom/mob/mcl/a/b;Lcom/mob/apc/APCMessage;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/StringPart;",
            "I",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v2, p6

    const-string v3, "data"

    .line 21
    invoke-virtual {p0}, Lcom/mob/mcl/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v4, v1, Lcom/mob/mcl/a/b;->a:Ljava/util/Set;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 25
    new-instance v8, Lcom/mob/apc/APCMessage;

    invoke-direct {v8}, Lcom/mob/apc/APCMessage;-><init>()V

    const/4 v0, 0x2

    .line 26
    iput v0, v8, Lcom/mob/apc/APCMessage;->what:I

    .line 27
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "type"

    move-object v11, p1

    .line 28
    invoke-virtual {v5, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "url"

    move-object/from16 v12, p2

    .line 29
    invoke-virtual {v5, v7, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    .line 32
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mob/tools/network/KVPair;

    .line 33
    iget-object v13, v10, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v10, v10, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    invoke-virtual {v7, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 36
    :cond_0
    new-instance v9, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v9}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v9, v7}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "headers"

    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "chunkLength"

    move/from16 v13, p5

    .line 37
    invoke-virtual {v5, v7, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_1

    .line 39
    invoke-virtual/range {p4 .. p4}, Lcom/mob/tools/network/StringPart;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "body"

    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1
    iget v7, v2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const-string v9, "readTimout"

    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    iget v7, v2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    const-string v9, "connectionTimeout"

    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    iput-object v5, v8, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    .line 45
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "apc sd mg \uff1a "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/mob/apc/APCMessage;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to ->"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 46
    iget-object v7, v1, Lcom/mob/mcl/a/b;->b:Ljava/lang/String;

    iget v9, v2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    int-to-long v9, v9

    invoke-static/range {v5 .. v10}, Lcom/mob/apc/MobAPC;->sendMessage(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 47
    iget v6, v5, Lcom/mob/apc/APCMessage;->what:I

    if-ne v6, v0, :cond_2

    iget-object v0, v5, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, v5, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    .line 49
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apc receive rp mg \uff1a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apc receive rp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 55
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 59
    :cond_3
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v2, "apc list is null"

    invoke-virtual {v0, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/mob/apc/MobAPC$MobAPCMessageListener;)V
    .locals 1

    const-string v0, "MCLSDK"

    .line 9
    iput-object v0, p0, Lcom/mob/mcl/a/b;->b:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/mob/apc/MobAPC;->init(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/mob/mcl/b/b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/mob/mcl/a/b;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/mob/apc/MobAPC;->addAPCMessageListener(Ljava/lang/String;Lcom/mob/apc/MobAPC$MobAPCMessageListener;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/a/b;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mob/mcl/c/i;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, Lcom/mob/mcl/b/b;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-static {}, Lcom/mob/apc/MobAPC;->getMAPCServiceList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/mob/mcl/a/b;->a:Ljava/util/Set;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    new-instance v5, Lcom/mob/apc/APCMessage;

    invoke-direct {v5}, Lcom/mob/apc/APCMessage;-><init>()V

    const/4 v8, 0x1

    .line 13
    iput v8, v5, Lcom/mob/apc/APCMessage;->what:I

    .line 15
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sd apc mg \uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mob/apc/APCMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 16
    iget-object v4, p0, Lcom/mob/mcl/a/b;->b:Ljava/lang/String;

    const-wide/16 v6, 0x1388

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/mob/apc/MobAPC;->sendMessage(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 17
    iget-object v3, v2, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/mob/apc/APCMessage;->what:I

    if-ne v3, v8, :cond_2

    .line 18
    iget-object v2, v2, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    const-string v3, "isTcpAvailable"

    .line 19
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    iget-object v2, p0, Lcom/mob/mcl/a/b;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 25
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 28
    :cond_3
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apc available pg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mob/mcl/a/b;->a:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-void
.end method
