.class public Lcom/mob/commons/b/a;
.super Lcom/mob/commons/b/f;
.source "ASUS.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/mob/commons/b/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 4

    .line 16
    new-instance v0, Landroid/content/Intent;

    const/16 v1, 0x4c

    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v1, Landroid/content/ComponentName;

    const/16 v2, 0x4d

    invoke-static {v2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4e

    invoke-static {v3}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/f$c;
    .locals 15

    .line 23
    new-instance v0, Lcom/mob/commons/b/f$c;

    invoke-direct {v0}, Lcom/mob/commons/b/f$c;-><init>()V

    const/16 v1, 0x47

    .line 24
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x4f

    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    new-array v7, v8, [Ljava/lang/String;

    const/4 v6, 0x2

    move-object v2, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/mob/commons/b/a;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/b/f$c;->d:Ljava/lang/String;

    const/16 v2, 0x45

    .line 25
    invoke-static {v2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v12

    new-array v14, v8, [Ljava/lang/String;

    const/4 v13, 0x3

    move-object v9, p0

    move-object/from16 v11, p1

    invoke-virtual/range {v9 .. v14}, Lcom/mob/commons/b/a;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/b/f$c;->b:Ljava/lang/String;

    const/16 v2, 0x46

    .line 26
    invoke-static {v2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v12

    new-array v14, v8, [Ljava/lang/String;

    const/4 v13, 0x4

    invoke-virtual/range {v9 .. v14}, Lcom/mob/commons/b/a;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/b/f$c;->e:Ljava/lang/String;

    const/16 v2, 0x4b

    .line 27
    invoke-static {v2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v12

    new-array v14, v8, [Ljava/lang/String;

    const/4 v13, 0x5

    invoke-virtual/range {v9 .. v14}, Lcom/mob/commons/b/a;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/b/f$c;->c:Ljava/lang/String;

    .line 28
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isSupported"

    const/4 v3, 0x1

    move-object v4, p0

    move-object/from16 v5, p1

    invoke-virtual {p0, v2, v5, v1, v3}, Lcom/mob/commons/b/a;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v8, 0x1

    :cond_0
    iput-boolean v8, v0, Lcom/mob/commons/b/f$c;->a:Z

    return-object v0
.end method
