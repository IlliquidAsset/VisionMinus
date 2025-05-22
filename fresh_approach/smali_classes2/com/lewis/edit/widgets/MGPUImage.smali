.class public Lcom/lewis/edit/widgets/MGPUImage;
.super Ljp/co/cyberagent/android/gpuimage/GPUImage;
.source "MGPUImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/lewis/edit/widgets/MGPUImage;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/lewis/edit/widgets/MGPUImage;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/lewis/edit/widgets/MGPUImage;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public saveToTempPictures(Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    new-instance v0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;-><init>(Lcom/lewis/edit/widgets/MGPUImage;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
