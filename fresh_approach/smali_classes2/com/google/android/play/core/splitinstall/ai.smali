.class final Lcom/google/android/play/core/splitinstall/ai;
.super Lcom/google/android/play/core/internal/ab;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Ljava/util/Collection;

.field final synthetic c:Lcom/google/android/play/core/tasks/i;

.field final synthetic d:Lcom/google/android/play/core/splitinstall/az;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/az;Lcom/google/android/play/core/tasks/i;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/android/play/core/tasks/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/ai;->d:Lcom/google/android/play/core/splitinstall/az;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/ai;->a:Ljava/util/Collection;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/ai;->b:Ljava/util/Collection;

    iput-object p5, p0, Lcom/google/android/play/core/splitinstall/ai;->c:Lcom/google/android/play/core/tasks/i;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/ab;-><init>(Lcom/google/android/play/core/tasks/i;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/ai;->a:Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/az;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ai;->b:Ljava/util/Collection;

    invoke-static {v1}, Lcom/google/android/play/core/splitinstall/az;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ai;->d:Lcom/google/android/play/core/splitinstall/az;

    iget-object v1, v1, Lcom/google/android/play/core/splitinstall/az;->a:Lcom/google/android/play/core/internal/ak;

    invoke-virtual {v1}, Lcom/google/android/play/core/internal/ak;->b()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/bp;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/ai;->d:Lcom/google/android/play/core/splitinstall/az;

    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/az;->a(Lcom/google/android/play/core/splitinstall/az;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/play/core/splitinstall/az;->b()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/splitinstall/ax;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/ai;->d:Lcom/google/android/play/core/splitinstall/az;

    iget-object v6, p0, Lcom/google/android/play/core/splitinstall/ai;->c:Lcom/google/android/play/core/tasks/i;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/splitinstall/ax;-><init>(Lcom/google/android/play/core/splitinstall/az;Lcom/google/android/play/core/tasks/i;)V

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/play/core/internal/bp;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/br;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/splitinstall/az;->c()Lcom/google/android/play/core/internal/aa;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/ai;->a:Ljava/util/Collection;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/ai;->b:Ljava/util/Collection;

    aput-object v4, v2, v3

    const-string v3, "startInstall(%s,%s)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ai;->c:Lcom/google/android/play/core/tasks/i;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Exception;)V

    return-void
.end method
