.class public Lcom/mob/commons/b/e;
.super Lcom/mob/commons/b/f;
.source "Huawei.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/mob/commons/b/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 2

    .line 20
    new-instance v0, Landroid/content/Intent;

    const/16 v1, 0x50

    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x51

    .line 21
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/f$c;
    .locals 8

    const/16 v0, 0x52

    .line 26
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v7, Lcom/mob/commons/b/f$c;

    invoke-direct {v7}, Lcom/mob/commons/b/f$c;-><init>()V

    const/16 v1, 0x45

    .line 28
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/b/e;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mob/commons/b/f$c;->b:Ljava/lang/String;

    const/16 v1, 0x53

    .line 29
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/mob/commons/b/e;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I

    .line 30
    iget-object p1, v7, Lcom/mob/commons/b/f$c;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v7, Lcom/mob/commons/b/f$c;->a:Z

    return-object v7
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/commons/b/e;->i()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
