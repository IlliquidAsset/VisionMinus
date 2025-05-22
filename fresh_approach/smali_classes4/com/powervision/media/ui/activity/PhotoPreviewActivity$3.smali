.class Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;
.super Ljava/lang/Object;
.source "PhotoPreviewActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/activity/PhotoPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

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
    .locals 6

    .line 308
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$200(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Lcom/powervision/media/widgets/PhotoPrViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/media/widgets/PhotoPrViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {v0, p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$302(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;I)I

    .line 310
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$100(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 312
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {v1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$400(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$100(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "%d/%d"

    invoke-static {v2, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {v1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$500(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {v2}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$100(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {v4}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$300(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 315
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {v1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$100(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    .line 316
    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    .line 322
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {v1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$600(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    iget-object v2, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {v2}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$100(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v4, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 324
    :cond_2
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$600(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_35:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_1
    return-void
.end method
