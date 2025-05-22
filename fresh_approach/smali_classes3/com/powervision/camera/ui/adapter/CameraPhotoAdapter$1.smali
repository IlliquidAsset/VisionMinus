.class Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter$1;
.super Ljava/lang/Object;
.source "CameraPhotoAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->initCustomWBViews(Lcom/chad/library/adapter/base/BaseViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;


# direct methods
.method constructor <init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 402
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    add-int/lit16 p1, p1, 0x7d0

    .line 403
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/camera/camera/CameraManager;->setWhiteBalance(I)V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ..onStopTrackingTouch()..localWB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s_camera"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
