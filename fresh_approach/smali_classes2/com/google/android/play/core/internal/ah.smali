.class final Lcom/google/android/play/core/internal/ah;
.super Lcom/google/android/play/core/internal/ab;


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/google/android/play/core/internal/aj;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/aj;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/ah;->b:Lcom/google/android/play/core/internal/aj;

    iput-object p2, p0, Lcom/google/android/play/core/internal/ah;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/internal/ah;->b:Lcom/google/android/play/core/internal/aj;

    iget-object v0, v0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ak;->e(Lcom/google/android/play/core/internal/ak;)Lcom/google/android/play/core/internal/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/internal/ah;->a:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/internal/ag;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/ak;->a(Lcom/google/android/play/core/internal/ak;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/ah;->b:Lcom/google/android/play/core/internal/aj;

    iget-object v0, v0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ak;->f(Lcom/google/android/play/core/internal/ak;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/ah;->b:Lcom/google/android/play/core/internal/aj;

    iget-object v0, v0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ak;->j(Lcom/google/android/play/core/internal/ak;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/ah;->b:Lcom/google/android/play/core/internal/aj;

    iget-object v0, v0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ak;->g(Lcom/google/android/play/core/internal/ak;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/ah;->b:Lcom/google/android/play/core/internal/aj;

    iget-object v0, v0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ak;->g(Lcom/google/android/play/core/internal/ak;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
