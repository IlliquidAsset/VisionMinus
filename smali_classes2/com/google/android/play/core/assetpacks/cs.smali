.class public final Lcom/google/android/play/core/assetpacks/cs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/ci;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/ci<",
        "Lcom/google/android/play/core/assetpacks/cr;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/ci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ci<",
            "Lcom/google/android/play/core/assetpacks/bb;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/play/core/internal/ci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ci<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/internal/ci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ci<",
            "Lcom/google/android/play/core/assetpacks/cb;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/play/core/internal/ci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ci<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/ci;Lcom/google/android/play/core/internal/ci;Lcom/google/android/play/core/internal/ci;Lcom/google/android/play/core/internal/ci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/ci<",
            "Lcom/google/android/play/core/assetpacks/bb;",
            ">;",
            "Lcom/google/android/play/core/internal/ci<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;",
            "Lcom/google/android/play/core/internal/ci<",
            "Lcom/google/android/play/core/assetpacks/cb;",
            ">;",
            "Lcom/google/android/play/core/internal/ci<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cs;->a:Lcom/google/android/play/core/internal/ci;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cs;->b:Lcom/google/android/play/core/internal/ci;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/cs;->c:Lcom/google/android/play/core/internal/ci;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/cs;->d:Lcom/google/android/play/core/internal/ci;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cs;->a:Lcom/google/android/play/core/internal/ci;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/ci;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cs;->b:Lcom/google/android/play/core/internal/ci;

    invoke-static {v1}, Lcom/google/android/play/core/internal/cg;->b(Lcom/google/android/play/core/internal/ci;)Lcom/google/android/play/core/internal/ce;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/cs;->c:Lcom/google/android/play/core/internal/ci;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/ci;->a()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/cs;->d:Lcom/google/android/play/core/internal/ci;

    invoke-static {v3}, Lcom/google/android/play/core/internal/cg;->b(Lcom/google/android/play/core/internal/ci;)Lcom/google/android/play/core/internal/ce;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/cr;

    check-cast v0, Lcom/google/android/play/core/assetpacks/bb;

    check-cast v2, Lcom/google/android/play/core/assetpacks/cb;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/play/core/assetpacks/cr;-><init>(Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/internal/ce;Lcom/google/android/play/core/assetpacks/cb;Lcom/google/android/play/core/internal/ce;)V

    return-object v4
.end method
