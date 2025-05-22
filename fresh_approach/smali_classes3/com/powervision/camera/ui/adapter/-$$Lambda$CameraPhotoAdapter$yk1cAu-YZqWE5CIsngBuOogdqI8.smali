.class public final synthetic Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$yk1cAu-YZqWE5CIsngBuOogdqI8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

.field public final synthetic f$1:Lcom/powervision/camera/model/bean/CameraPhotoChildChild;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/powervision/camera/model/bean/CameraPhotoChildChild;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$yk1cAu-YZqWE5CIsngBuOogdqI8;->f$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$yk1cAu-YZqWE5CIsngBuOogdqI8;->f$1:Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$yk1cAu-YZqWE5CIsngBuOogdqI8;->f$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$yk1cAu-YZqWE5CIsngBuOogdqI8;->f$1:Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->lambda$convert$7$CameraPhotoAdapter(Lcom/powervision/camera/model/bean/CameraPhotoChildChild;Landroid/view/View;)V

    return-void
.end method
