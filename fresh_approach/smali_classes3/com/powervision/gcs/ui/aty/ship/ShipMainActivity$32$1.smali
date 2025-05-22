.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;->onSurfaceSizeChange(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;II)V
    .locals 0

    .line 3497
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;

    iput p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32$1;->val$width:I

    iput p3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3501
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mtextureview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    .line 3502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceSizeChange  nowWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nowHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;

    iget-object v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mtextureview:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqText"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    iget v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32$1;->val$width:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 3504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width/height:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32$1;->val$width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32$1;->val$height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mtextureview:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleX(F)V

    return-void
.end method
