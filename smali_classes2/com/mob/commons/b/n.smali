.class public Lcom/mob/commons/b/n;
.super Lcom/mob/commons/b/f;
.source "Zte.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/mob/commons/b/f;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private j()V
    .locals 3

    .line 35
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x8a

    .line 36
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8b

    invoke-static {v2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x8d

    .line 37
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x8e

    .line 38
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x8f

    .line 39
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/mob/commons/b/n;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    return-void

    :catchall_0
    move-exception v0

    .line 44
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private k()Z
    .locals 3

    const/4 v0, 0x0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/b/n;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x8a

    invoke-static {v2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 3

    .line 17
    invoke-direct {p0}, Lcom/mob/commons/b/n;->j()V

    .line 18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x8a

    .line 19
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8c

    invoke-static {v2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x90

    .line 20
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x8e

    .line 21
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcom/mob/commons/b/f$c;
    .locals 8

    .line 27
    new-instance v0, Lcom/mob/commons/b/f$c;

    invoke-direct {v0}, Lcom/mob/commons/b/f$c;-><init>()V

    const/16 v1, 0x45

    .line 28
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x91

    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/String;

    const/4 v6, 0x3

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/mob/commons/b/n;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/commons/b/f$c;->b:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcom/mob/commons/b/n;->k()Z

    move-result p1

    iput-boolean p1, v0, Lcom/mob/commons/b/f$c;->a:Z

    return-object v0
.end method
