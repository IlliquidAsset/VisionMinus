.class public Lcom/mob/commons/b/h;
.super Lcom/mob/commons/b/f;
.source "MotoLennovo.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/mob/commons/b/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 3

    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x54

    .line 20
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    invoke-static {v2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/f$c;
    .locals 10

    const/16 v0, 0x56

    .line 25
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v7, Lcom/mob/commons/b/f$c;

    invoke-direct {v7}, Lcom/mob/commons/b/f$c;-><init>()V

    const/16 v1, 0x45

    .line 27
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    new-array v6, v8, [Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/b/h;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mob/commons/b/f$c;->b:Ljava/lang/String;

    const/16 v1, 0x46

    .line 28
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/commons/b/h;->b:Ljava/lang/String;

    aput-object v1, v6, v8

    const/4 v5, 0x4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/b/h;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mob/commons/b/f$c;->e:Ljava/lang/String;

    const/16 v1, 0x47

    .line 29
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v5, 0x2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/b/h;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mob/commons/b/f$c;->d:Ljava/lang/String;

    const/16 v1, 0x4b

    .line 30
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v9, [Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/commons/b/h;->b:Ljava/lang/String;

    aput-object v1, v6, v8

    const/4 v5, 0x5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/b/h;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mob/commons/b/f$c;->c:Ljava/lang/String;

    const/16 v1, 0x4a

    .line 31
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/mob/commons/b/h;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v8, 0x1

    :cond_0
    iput-boolean v8, v7, Lcom/mob/commons/b/f$c;->a:Z

    return-object v7
.end method

.method protected d()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method
