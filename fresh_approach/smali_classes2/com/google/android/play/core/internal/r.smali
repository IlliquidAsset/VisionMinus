.class public abstract Lcom/google/android/play/core/internal/r;
.super Lcom/google/android/play/core/internal/j;

# interfaces
.implements Lcom/google/android/play/core/internal/s;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/play/core/internal/s;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/play/core/internal/s;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/play/core/internal/s;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/internal/q;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/internal/q;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
