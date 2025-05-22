.class Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$4;
.super Ljava/lang/Object;
.source "ShipSonarSetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "lzqView"

    const-string v0, "in click"

    .line 255
    invoke-static {p1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->color_content:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Landroid/widget/TextView;)V

    return-void
.end method
