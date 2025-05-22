.class Lcom/mob/commons/logcollector/c$3;
.super Ljava/lang/Object;
.source "LogsManager.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/logcollector/c;->a(ILjava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mob/commons/logcollector/c;


# direct methods
.method constructor <init>(Lcom/mob/commons/logcollector/c;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/mob/commons/logcollector/c$3;->d:Lcom/mob/commons/logcollector/c;

    iput-object p2, p0, Lcom/mob/commons/logcollector/c$3;->a:[Ljava/lang/String;

    iput p3, p0, Lcom/mob/commons/logcollector/c$3;->b:I

    iput-object p4, p0, Lcom/mob/commons/logcollector/c$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 7

    const/4 p1, 0x0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/logcollector/c$3;->a:[Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/logcollector/e;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 252
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 254
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/commons/logcollector/d;

    .line 255
    iget-object v3, p0, Lcom/mob/commons/logcollector/c$3;->d:Lcom/mob/commons/logcollector/c;

    iget v4, p0, Lcom/mob/commons/logcollector/c$3;->b:I

    iget-object v5, p0, Lcom/mob/commons/logcollector/c$3;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/mob/commons/logcollector/c;->a(Lcom/mob/commons/logcollector/c;ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "errmsg"

    .line 256
    iget-object v5, v2, Lcom/mob/commons/logcollector/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v4, p0, Lcom/mob/commons/logcollector/c$3;->d:Lcom/mob/commons/logcollector/c;

    iget-object v5, p0, Lcom/mob/commons/logcollector/c$3;->d:Lcom/mob/commons/logcollector/c;

    new-instance v6, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v6}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v6, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/mob/commons/logcollector/c;->a(Lcom/mob/commons/logcollector/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lcom/mob/commons/logcollector/c;->a(Lcom/mob/commons/logcollector/c;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v2, v2, Lcom/mob/commons/logcollector/d;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/mob/commons/logcollector/e;->a(Ljava/util/ArrayList;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 264
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Throwable;)I

    :cond_1
    return p1
.end method
