.class public final synthetic Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$ikwZQBvW8X_eZU7jHB3JvaCkRZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

.field public final synthetic f$1:Lcom/chad/library/adapter/base/BaseViewHolder;

.field public final synthetic f$2:Lcom/powervision/camera/model/bean/CameraPhotoGroup4;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoGroup4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$ikwZQBvW8X_eZU7jHB3JvaCkRZY;->f$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$ikwZQBvW8X_eZU7jHB3JvaCkRZY;->f$1:Lcom/chad/library/adapter/base/BaseViewHolder;

    iput-object p3, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$ikwZQBvW8X_eZU7jHB3JvaCkRZY;->f$2:Lcom/powervision/camera/model/bean/CameraPhotoGroup4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$ikwZQBvW8X_eZU7jHB3JvaCkRZY;->f$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$ikwZQBvW8X_eZU7jHB3JvaCkRZY;->f$1:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$ikwZQBvW8X_eZU7jHB3JvaCkRZY;->f$2:Lcom/powervision/camera/model/bean/CameraPhotoGroup4;

    invoke-virtual {v0, v1, v2, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->lambda$convert$0$CameraPhotoAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoGroup4;Landroid/view/View;)V

    return-void
.end method
