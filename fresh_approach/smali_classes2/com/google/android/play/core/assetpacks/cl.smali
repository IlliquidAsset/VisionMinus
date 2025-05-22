.class final synthetic Lcom/google/android/play/core/assetpacks/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/cr;

.field private final b:Lcom/google/android/play/core/assetpacks/co;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/cr;Lcom/google/android/play/core/assetpacks/co;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cl;->a:Lcom/google/android/play/core/assetpacks/cr;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cl;->b:Lcom/google/android/play/core/assetpacks/co;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cl;->a:Lcom/google/android/play/core/assetpacks/cr;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cl;->b:Lcom/google/android/play/core/assetpacks/co;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/co;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/cr;->a(I)V

    return-void
.end method
