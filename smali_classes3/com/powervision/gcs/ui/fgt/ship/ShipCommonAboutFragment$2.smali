.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$2;
.super Ljava/lang/Object;
.source "ShipCommonAboutFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->processLogic(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 p1, 0x0

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->resIds:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    iget-object v2, v2, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->resIds:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/powervision/base/utils/SPHelperUtils;->saveShowGuide(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, p2, 0x1

    .line 129
    invoke-static {p1}, Lcom/powervision/gcs/utils/SpStore;->setGuidePvw4Common(Z)V

    xor-int/lit8 p1, p2, 0x1

    .line 130
    invoke-static {p1}, Lcom/powervision/gcs/utils/SpStore;->setGuidePvw4Seeker(Z)V

    xor-int/lit8 p1, p2, 0x1

    .line 131
    invoke-static {p1}, Lcom/powervision/gcs/utils/SpStore;->setGuidePvw4Map(Z)V

    return-void
.end method
