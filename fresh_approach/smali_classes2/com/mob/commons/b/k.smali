.class public Lcom/mob/commons/b/k;
.super Lcom/mob/commons/b/f;
.source "Samsung.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/mob/commons/b/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 3

    .line 18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x73

    .line 19
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x74

    invoke-static {v2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcom/mob/commons/b/f$c;
    .locals 12

    const/4 v0, 0x1

    const/16 v1, 0x75

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 28
    :try_start_0
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 31
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x0

    .line 33
    :goto_0
    new-instance v4, Lcom/mob/commons/b/f$c;

    invoke-direct {v4}, Lcom/mob/commons/b/f$c;-><init>()V

    .line 34
    iput-boolean v3, v4, Lcom/mob/commons/b/f$c;->a:Z

    .line 35
    iget-object v3, p0, Lcom/mob/commons/b/k;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mob/commons/b/k;->a:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 36
    iget-object v3, p0, Lcom/mob/commons/b/k;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/commons/b/k;->b:Ljava/lang/String;

    :cond_1
    const/16 v3, 0x45

    .line 38
    invoke-static {v3}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v2, [Ljava/lang/String;

    move-object v5, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/mob/commons/b/k;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/mob/commons/b/f$c;->b:Ljava/lang/String;

    .line 39
    iget-object v3, p0, Lcom/mob/commons/b/k;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    move-object v3, v5

    goto :goto_1

    :cond_2
    const/16 v3, 0x46

    invoke-static {v3}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v11, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/mob/commons/b/k;->b:Ljava/lang/String;

    aput-object v3, v11, v2

    move-object v6, p0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/mob/commons/b/k;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v4, Lcom/mob/commons/b/f$c;->e:Ljava/lang/String;

    .line 40
    iget-object v3, p0, Lcom/mob/commons/b/k;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/16 v3, 0x4b

    invoke-static {v3}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v10, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/mob/commons/b/k;->b:Ljava/lang/String;

    aput-object v0, v10, v2

    move-object v5, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/mob/commons/b/k;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, v4, Lcom/mob/commons/b/f$c;->c:Ljava/lang/String;

    return-object v4
.end method
