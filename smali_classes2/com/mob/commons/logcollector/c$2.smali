.class Lcom/mob/commons/logcollector/c$2;
.super Ljava/lang/Object;
.source "LogsManager.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/logcollector/c;->d(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Message;

.field final synthetic e:Lcom/mob/commons/logcollector/c;


# direct methods
.method constructor <init>(Lcom/mob/commons/logcollector/c;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/mob/commons/logcollector/c$2;->e:Lcom/mob/commons/logcollector/c;

    iput-object p2, p0, Lcom/mob/commons/logcollector/c$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/mob/commons/logcollector/c$2;->b:I

    iput-object p4, p0, Lcom/mob/commons/logcollector/c$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mob/commons/logcollector/c$2;->d:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 5

    const/4 p1, 0x0

    .line 201
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    .line 202
    iget-object v2, p0, Lcom/mob/commons/logcollector/c$2;->a:Ljava/lang/String;

    iget v3, p0, Lcom/mob/commons/logcollector/c$2;->b:I

    iget-object v4, p0, Lcom/mob/commons/logcollector/c$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mob/commons/logcollector/e;->a(JLjava/lang/String;ILjava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 205
    iget-object v1, p0, Lcom/mob/commons/logcollector/c$2;->e:Lcom/mob/commons/logcollector/c;

    invoke-static {v1}, Lcom/mob/commons/logcollector/c;->a(Lcom/mob/commons/logcollector/c;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/logcollector/c$2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mob/commons/logcollector/c$2;->e:Lcom/mob/commons/logcollector/c;

    invoke-static {v1}, Lcom/mob/commons/logcollector/c;->a(Lcom/mob/commons/logcollector/c;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/logcollector/c$2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 207
    iget-object v2, p0, Lcom/mob/commons/logcollector/c$2;->e:Lcom/mob/commons/logcollector/c;

    invoke-static {v2}, Lcom/mob/commons/logcollector/c;->a(Lcom/mob/commons/logcollector/c;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/commons/logcollector/c$2;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 209
    iget-object v0, p0, Lcom/mob/commons/logcollector/c$2;->e:Lcom/mob/commons/logcollector/c;

    iget-object v1, p0, Lcom/mob/commons/logcollector/c$2;->d:Landroid/os/Message;

    invoke-static {v0, v1}, Lcom/mob/commons/logcollector/c;->a(Lcom/mob/commons/logcollector/c;Landroid/os/Message;)V

    goto :goto_1

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/mob/commons/logcollector/c$2;->e:Lcom/mob/commons/logcollector/c;

    invoke-static {v1}, Lcom/mob/commons/logcollector/c;->a(Lcom/mob/commons/logcollector/c;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/logcollector/c$2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    return p1
.end method
