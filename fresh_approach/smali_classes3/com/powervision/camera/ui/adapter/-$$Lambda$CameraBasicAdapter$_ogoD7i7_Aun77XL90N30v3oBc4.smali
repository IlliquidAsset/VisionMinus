.class public final synthetic Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$_ogoD7i7_Aun77XL90N30v3oBc4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/powervision/base/views/HPickerView$OnScrollListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

.field public final synthetic f$1:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$_ogoD7i7_Aun77XL90N30v3oBc4;->f$0:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$_ogoD7i7_Aun77XL90N30v3oBc4;->f$1:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;

    return-void
.end method


# virtual methods
.method public final onSelect(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$_ogoD7i7_Aun77XL90N30v3oBc4;->f$0:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$_ogoD7i7_Aun77XL90N30v3oBc4;->f$1:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;

    invoke-virtual {v0, v1, p1, p2}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->lambda$onBindViewHolder$1$CameraBasicAdapter(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;Ljava/lang/String;I)V

    return-void
.end method
