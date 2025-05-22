.class public final synthetic Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$sMUxAe4_FTFhx7H6wUK-BDfbfzs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/powervision/base/views/HPickerView$OnScrollListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

.field public final synthetic f$1:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$sMUxAe4_FTFhx7H6wUK-BDfbfzs;->f$0:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$sMUxAe4_FTFhx7H6wUK-BDfbfzs;->f$1:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;

    iput p3, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$sMUxAe4_FTFhx7H6wUK-BDfbfzs;->f$2:I

    return-void
.end method


# virtual methods
.method public final onSelect(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$sMUxAe4_FTFhx7H6wUK-BDfbfzs;->f$0:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$sMUxAe4_FTFhx7H6wUK-BDfbfzs;->f$1:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;

    iget v2, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$sMUxAe4_FTFhx7H6wUK-BDfbfzs;->f$2:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->lambda$onBindViewHolder$3$CameraBasicAdapter(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;ILjava/lang/String;I)V

    return-void
.end method
