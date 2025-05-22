.class Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;
.super Ljava/lang/Object;
.source "ShipPhotoPreviewActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->access$000(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    .line 183
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->mViewPager:Lcom/powervision/gcs/view/PhotoPrViewPager;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/PhotoPrViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->access$102(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;I)I

    .line 190
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->access$000(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 192
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->photo_num_all:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->access$000(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->checkBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->access$000(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->access$000(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 196
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v0

    goto :goto_1

    :cond_1
    return-void
.end method
