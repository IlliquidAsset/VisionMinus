.class Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;
.super Ljava/lang/Object;
.source "ShipSonarSetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->initViewValue()V
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

    .line 218
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 221
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_content:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 222
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_content:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_divider:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_content:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 225
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->maual_arrow:Landroid/view/View;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_content:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_divider:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_content:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 230
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->maual_arrow:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    :goto_0
    return-void
.end method
