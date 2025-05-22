.class Lcom/mob/guard/impl/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/guard/impl/a;->e()V
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
    iput-object p1, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "chk_cb_"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    invoke-static {v2}, Lcom/mob/guard/impl/a;->d(Lcom/mob/guard/impl/a;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    invoke-static {v2}, Lcom/mob/guard/impl/a;->d(Lcom/mob/guard/impl/a;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 3
    iget-object v2, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mob/guard/impl/a;->a(Lcom/mob/guard/impl/a;Ljava/net/Socket;)Ljava/net/Socket;

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    invoke-static {v4}, Lcom/mob/guard/impl/a;->e(Lcom/mob/guard/impl/a;)Ljava/lang/String;

    move-result-object v4

    const v5, 0xe9fa

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lcom/mob/guard/impl/a;->a(Lcom/mob/guard/impl/a;Ljava/net/Socket;)Ljava/net/Socket;

    .line 6
    iget-object v2, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    invoke-static {v2}, Lcom/mob/guard/impl/a;->d(Lcom/mob/guard/impl/a;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v3, "utf-8"

    if-eqz v2, :cond_1

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    const/4 v4, 0x5

    invoke-static {v2, v4}, Lcom/mob/guard/impl/a;->a(Lcom/mob/guard/impl/a;I)I

    .line 9
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v4, "[GuardConnect] clientSocket connected"

    :try_start_2
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    :try_start_3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v4, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    invoke-static {v4}, Lcom/mob/guard/impl/a;->d(Lcom/mob/guard/impl/a;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lg_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 15
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 17
    :try_start_4
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    invoke-static {v2}, Lcom/mob/guard/impl/a;->h(Lcom/mob/guard/impl/a;)V

    .line 22
    :cond_1
    iget-object v2, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    invoke-static {v2}, Lcom/mob/guard/impl/a;->d(Lcom/mob/guard/impl/a;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 23
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    invoke-static {v4}, Lcom/mob/guard/impl/a;->d(Lcom/mob/guard/impl/a;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    invoke-static {v4}, Lcom/mob/guard/impl/a;->d(Lcom/mob/guard/impl/a;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 26
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 28
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v4
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v5, "[GuardConnect] client received server disconnect"

    :try_start_5
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 29
    iget-object v4, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    invoke-static {v4, v1}, Lcom/mob/guard/impl/a;->a(Lcom/mob/guard/impl/a;Z)V

    goto :goto_1

    .line 31
    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v1, v5}, Ljava/lang/String;-><init>([BII)V

    .line 32
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GuardConnect] client received server msg: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-string v4, "chk"

    .line 33
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_2

    .line 36
    :try_start_6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 37
    iget-object v5, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    invoke-static {v5}, Lcom/mob/guard/impl/a;->d(Lcom/mob/guard/impl/a;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 39
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 40
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GuardConnect] client send alive check msg callback to server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    .line 42
    :try_start_7
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    .line 54
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GuardConnect] clientSocket exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 55
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_0
    move-exception v0

    .line 56
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GuardConnect] client received socket exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 57
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 58
    iget-object v0, p0, Lcom/mob/guard/impl/a$b;->a:Lcom/mob/guard/impl/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mob/guard/impl/a;->a(Lcom/mob/guard/impl/a;Z)V

    :cond_4
    :goto_2
    return-void
.end method
