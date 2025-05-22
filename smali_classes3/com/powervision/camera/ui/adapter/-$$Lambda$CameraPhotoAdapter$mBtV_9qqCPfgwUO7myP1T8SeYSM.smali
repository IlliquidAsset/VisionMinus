.class public final synthetic Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$mBtV_9qqCPfgwUO7myP1T8SeYSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

.field public final synthetic f$1:Lcom/powervision/camera/model/bean/CameraPhotoChild1;

.field public final synthetic f$2:Lcom/chad/library/adapter/base/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/powervision/camera/model/bean/CameraPhotoChild1;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$mBtV_9qqCPfgwUO7myP1T8SeYSM;->f$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$mBtV_9qqCPfgwUO7myP1T8SeYSM;->f$1:Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    iput-object p3, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$mBtV_9qqCPfgwUO7myP1T8SeYSM;->f$2:Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$mBtV_9qqCPfgwUO7myP1T8SeYSM;->f$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$mBtV_9qqCPfgwUO7myP1T8SeYSM;->f$1:Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$mBtV_9qqCPfgwUO7myP1T8SeYSM;->f$2:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->lambda$convert$4$CameraPhotoAdapter(Lcom/powervision/camera/model/bean/CameraPhotoChild1;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
