.class final Lcom/google/android/play/core/splitinstall/testing/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/b;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Ljava/util/List;Ljava/util/List;JZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/h;->f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/testing/h;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/testing/h;->b:Ljava/util/List;

    iput-wide p4, p0, Lcom/google/android/play/core/splitinstall/testing/h;->c:J

    iput-boolean p6, p0, Lcom/google/android/play/core/splitinstall/testing/h;->d:Z

    iput-object p7, p0, Lcom/google/android/play/core/splitinstall/testing/h;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/h;->f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->c(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/h;->f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->d(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/h;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/h;->f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iget-wide v1, p0, Lcom/google/android/play/core/splitinstall/testing/h;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v2, v1}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->a(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;ILjava/lang/Long;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/h;->f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    invoke-static {v0, p1}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->a(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;I)V

    return-void
.end method

.method public final b()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/play/core/splitinstall/testing/h;->d:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/h;->f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/h;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/testing/h;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/testing/h;->b:Ljava/util/List;

    iget-wide v5, p0, Lcom/google/android/play/core/splitinstall/testing/h;->c:J

    invoke-static/range {v1 .. v6}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->b(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    :cond_0
    return-void
.end method
