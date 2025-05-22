.class Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShipPhotoPreviewActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding$2;->val$target:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding$2;->val$target:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->text_download()V

    return-void
.end method
