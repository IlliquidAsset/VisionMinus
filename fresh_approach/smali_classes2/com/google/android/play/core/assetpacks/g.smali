.class final synthetic Lcom/google/android/play/core/assetpacks/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/i;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/g;->a:Lcom/google/android/play/core/assetpacks/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g;->a:Lcom/google/android/play/core/assetpacks/i;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/i;->a()V

    return-void
.end method
