.class public Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/appupdate/AppUpdateManager;


# instance fields
.field private final a:Lcom/google/android/play/core/appupdate/a;

.field private final b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:Ljava/lang/Integer;

.field private h:I

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/Integer;

.field private o:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->d:I

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->e:Z

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->f:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->g:Ljava/lang/Integer;

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->h:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->i:J

    iput-wide v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->j:J

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->k:Z

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->l:Z

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->m:Z

    new-instance v0, Lcom/google/android/play/core/appupdate/a;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/appupdate/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a:Lcom/google/android/play/core/appupdate/a;

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b:Landroid/content/Context;

    return-void
.end method

.method private final a()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final a(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Z
    .locals 2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->appUpdateType()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->defaultOptions(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->appUpdateType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->appUpdateType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iput-boolean p2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->l:Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    iput-boolean p2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->k:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    return p2

    :cond_3
    :goto_2
    return v1
.end method

.method private final b()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a:Lcom/google/android/play/core/appupdate/a;

    iget v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    iget-wide v2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->i:J

    iget-wide v4, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->j:J

    iget v6, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->d:I

    iget-object v7, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/google/android/play/core/install/InstallState;->a(IJJILjava/lang/String;)Lcom/google/android/play/core/install/InstallState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/listener/b;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public completeUpdate()Lcom/google/android/play/core/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    new-instance v1, Lcom/google/android/play/core/install/InstallException;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-static {v1}, Lcom/google/android/play/core/tasks/Tasks;->a(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/16 v2, 0xb

    const/4 v3, 0x3

    if-ne v0, v2, :cond_3

    iput v3, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    iput-boolean v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->m:Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b()V

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/play/core/tasks/Tasks;->a(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_3
    if-ne v0, v3, :cond_4

    new-instance v0, Lcom/google/android/play/core/install/InstallException;

    const/4 v1, -0x8

    invoke-direct {v0, v1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/play/core/tasks/Tasks;->a(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/play/core/install/InstallException;

    const/4 v1, -0x7

    invoke-direct {v0, v1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/play/core/tasks/Tasks;->a(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public downloadCompletes()V
    .locals 4

    iget v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    :goto_0
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->i:J

    iput-wide v2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->j:J

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b()V

    return-void

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->completeUpdate()Lcom/google/android/play/core/tasks/Task;

    :cond_2
    return-void
.end method

.method public downloadFails()V
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b()V

    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->l:Z

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    return-void
.end method

.method public downloadStarts()V
    .locals 2

    iget v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b()V

    :cond_0
    return-void
.end method

.method public getAppUpdateInfo()Lcom/google/android/play/core/tasks/Task;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->d:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq v1, v2, :cond_1

    new-instance v2, Lcom/google/android/play/core/install/InstallException;

    invoke-direct {v2, v1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-static {v2}, Lcom/google/android/play/core/tasks/Tasks;->a(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v1, v3, :cond_4

    iget v1, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->d:I

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v6, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v4, v6, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v21, v5

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a()I

    move-result v1

    if-ne v1, v3, :cond_7

    iget v1, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->d:I

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    if-ne v1, v2, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v6, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v4, v6, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_6

    :cond_7
    :goto_5
    move-object/from16 v20, v5

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a()I

    move-result v1

    if-ne v1, v3, :cond_a

    iget v1, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->d:I

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    if-eq v1, v2, :cond_9

    goto :goto_8

    :cond_9
    :goto_7
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v1, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object/from16 v22, v1

    move-object/from16 v23, v5

    goto :goto_9

    :cond_a
    :goto_8
    move-object/from16 v22, v5

    move-object/from16 v23, v22

    :goto_9
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->f:I

    invoke-direct/range {p0 .. p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a()I

    move-result v8

    iget v9, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    iget-object v10, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->g:Ljava/lang/Integer;

    iget v11, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->h:I

    iget-wide v12, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->i:J

    iget-wide v14, v0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->j:J

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-static/range {v6 .. v23}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->a(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/play/core/tasks/Tasks;->a(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public getPartiallyAllowedUpdateType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTypeForUpdateInProgress()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public installCompletes()V
    .locals 4

    iget v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->e:Z

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->f:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->g:Ljava/lang/Integer;

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->h:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->i:J

    iput-wide v2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->j:J

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->l:Z

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->m:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b()V

    :goto_0
    iput-object v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    :cond_1
    return-void
.end method

.method public installFails()V
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b()V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->m:Z

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->l:Z

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    :cond_1
    return-void
.end method

.method public isConfirmationDialogVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->k:Z

    return v0
.end method

.method public isImmediateFlowVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->l:Z

    return v0
.end method

.method public isInstallSplashScreenVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->m:Z

    return v0
.end method

.method public registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a:Lcom/google/android/play/core/appupdate/a;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/listener/b;->a(Lcom/google/android/play/core/listener/StateUpdatedListener;)V

    return-void
.end method

.method public setBytesDownloaded(J)V
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->j:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    iput-wide p1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->i:J

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b()V

    :cond_0
    return-void
.end method

.method public setClientVersionStalenessDays(Ljava/lang/Integer;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->e:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->g:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public setInstallErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->d:I

    return-void
.end method

.method public setPartiallyAllowedUpdateType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->n:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->d:I

    return-void
.end method

.method public setTotalBytesToDownload(J)V
    .locals 2

    iget v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-wide p1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->j:J

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b()V

    :cond_0
    return-void
.end method

.method public setUpdateAvailable(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->e:Z

    iput p1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->f:I

    return-void
.end method

.method public setUpdateNotAvailable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->g:Ljava/lang/Integer;

    return-void
.end method

.method public setUpdatePriority(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->e:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->h:I

    :cond_0
    return-void
.end method

.method public final startUpdateFlow(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Lcom/google/android/play/core/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
            "Landroid/app/Activity;",
            "Lcom/google/android/play/core/appupdate/AppUpdateOptions;",
            ")",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/tasks/Tasks;->a(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/play/core/install/InstallException;

    const/4 p2, -0x6

    invoke-direct {p1, p2}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/play/core/tasks/Tasks;->a(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    .locals 0

    invoke-static {p2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Z

    move-result p1

    return p1
.end method

.method public startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILcom/google/android/play/core/common/IntentSenderForResultStarter;I)Z
    .locals 0

    invoke-static {p2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Z

    move-result p1

    return p1
.end method

.method public final startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateOptions;I)Z
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Z

    move-result p1

    return p1
.end method

.method public final startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Lcom/google/android/play/core/common/IntentSenderForResultStarter;Lcom/google/android/play/core/appupdate/AppUpdateOptions;I)Z
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Z

    move-result p1

    return p1
.end method

.method public unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->a:Lcom/google/android/play/core/appupdate/a;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/listener/b;->b(Lcom/google/android/play/core/listener/StateUpdatedListener;)V

    return-void
.end method

.method public userAcceptsUpdate()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->l:Z

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->k:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b()V

    :cond_1
    return-void
.end method

.method public userCancelsDownload()V
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->b()V

    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->l:Z

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    return-void
.end method

.method public userRejectsUpdate()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->l:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->k:Z

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->l:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->o:Ljava/lang/Integer;

    iput v0, p0, Lcom/google/android/play/core/appupdate/testing/FakeAppUpdateManager;->c:I

    return-void
.end method
