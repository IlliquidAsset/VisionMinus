.class public Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ShipCameraSettingBasicSlideAdapter.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$IAutoLocateHorizontalView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;",
        ">;",
        "Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$IAutoLocateHorizontalView;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private values:[Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;->values:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;->values:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemView()Landroid/view/View;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;->view:Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;->onBindViewHolder(Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;I)V
    .locals 1

    .line 34
    iget-object p1, p1, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;->value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;->values:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;
    .locals 2

    .line 28
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$layout;->ship_camera_setting_basic_slide_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;->view:Landroid/view/View;

    .line 29
    new-instance p2, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;

    invoke-direct {p2, p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewSelected(ZILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 50
    check-cast p3, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;

    iget-object p1, p3, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;->value:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/powervision/gcs/R$color;->ship_color_camera_set:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 52
    :cond_0
    check-cast p3, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;

    iget-object p1, p3, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;->value:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/powervision/gcs/R$color;->color_white:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
