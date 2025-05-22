.class final Lcom/google/android/play/core/splitinstall/an;
.super Lcom/google/android/play/core/internal/ab;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/play/core/tasks/i;

.field final synthetic c:Lcom/google/android/play/core/splitinstall/az;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/az;Lcom/google/android/play/core/tasks/i;ILcom/google/android/play/core/tasks/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/an;->c:Lcom/google/android/play/core/splitinstall/az;

    iput p3, p0, Lcom/google/android/play/core/splitinstall/an;->a:I

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/an;->b:Lcom/google/android/play/core/tasks/i;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/ab;-><init>(Lcom/google/android/play/core/tasks/i;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/an;->c:Lcom/google/android/play/core/splitinstall/az;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/az;->a:Lcom/google/android/play/core/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/ak;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/bp;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/an;->c:Lcom/google/android/play/core/splitinstall/az;

    invoke-static {v1}, Lcom/google/android/play/core/splitinstall/az;->a(Lcom/google/android/play/core/splitinstall/az;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/splitinstall/an;->a:I

    new-instance v3, Lcom/google/android/play/core/splitinstall/av;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/an;->c:Lcom/google/android/play/core/splitinstall/az;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/an;->b:Lcom/google/android/play/core/tasks/i;

    invoke-direct {v3, v4, v5}, Lcom/google/android/play/core/splitinstall/av;-><init>(Lcom/google/android/play/core/splitinstall/az;Lcom/google/android/play/core/tasks/i;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/play/core/internal/bp;->a(Ljava/lang/String;ILcom/google/android/play/core/internal/br;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/splitinstall/az;->c()Lcom/google/android/play/core/internal/aa;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/play/core/splitinstall/an;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "getSessionState(%d)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/an;->b:Lcom/google/android/play/core/tasks/i;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Exception;)V

    return-void
.end method
