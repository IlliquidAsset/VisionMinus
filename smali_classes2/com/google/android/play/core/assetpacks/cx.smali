.class final synthetic Lcom/google/android/play/core/assetpacks/cx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/db;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/play/core/assetpacks/az;

.field private final d:Lcom/google/android/play/core/tasks/i;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/db;Ljava/util/List;Lcom/google/android/play/core/assetpacks/az;Lcom/google/android/play/core/tasks/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cx;->a:Lcom/google/android/play/core/assetpacks/db;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cx;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/cx;->c:Lcom/google/android/play/core/assetpacks/az;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/cx;->d:Lcom/google/android/play/core/tasks/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cx;->a:Lcom/google/android/play/core/assetpacks/db;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cx;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/cx;->c:Lcom/google/android/play/core/assetpacks/az;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/cx;->d:Lcom/google/android/play/core/tasks/i;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/play/core/assetpacks/db;->a(Ljava/util/List;Lcom/google/android/play/core/assetpacks/az;Lcom/google/android/play/core/tasks/i;)V

    return-void
.end method
