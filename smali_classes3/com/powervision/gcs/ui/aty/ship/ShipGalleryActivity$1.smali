.class Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$1;
.super Ljava/lang/Object;
.source "ShipGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->initViews(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->onBackPressed()V

    return-void
.end method
