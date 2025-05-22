.class Lcom/mob/guard/impl/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/guard/impl/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/guard/impl/a;


# direct methods
.method constructor <init>(Lcom/mob/guard/impl/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/guard/impl/a$d;->a:Lcom/mob/guard/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GuardConnect] sendPing clientSocket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mob/guard/impl/a$d;->a:Lcom/mob/guard/impl/a;

    invoke-static {v2}, Lcom/mob/guard/impl/a;->d(Lcom/mob/guard/impl/a;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    iget-object v0, p0, Lcom/mob/guard/impl/a$d;->a:Lcom/mob/guard/impl/a;

    invoke-static {v0}, Lcom/mob/guard/impl/a;->d(Lcom/mob/guard/impl/a;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mob/guard/impl/a$d;->a:Lcom/mob/guard/impl/a;

    invoke-static {v0}, Lcom/mob/guard/impl/a;->d(Lcom/mob/guard/impl/a;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "p"

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 6
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mob/guard/impl/a$d;->a:Lcom/mob/guard/impl/a;

    invoke-static {v0}, Lcom/mob/guard/impl/a;->i(Lcom/mob/guard/impl/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
