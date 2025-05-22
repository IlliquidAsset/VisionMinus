.class public Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;
.super Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;
.source "ShipCameraSettingWheelViewAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private data:[Ljava/lang/String;

.field private highlight:I

.field private realWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    .line 25
    sget v0, Lcom/powervision/gcs/R$layout;->wheel_text_centered:I

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->highlight:I

    .line 22
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->realWidth:I

    .line 27
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->data:[Ljava/lang/String;

    const/high16 p1, 0x42a80000    # 84.0f

    .line 29
    invoke-static {p1}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->realWidth:I

    return-void
.end method


# virtual methods
.method protected configureItemView(Landroid/view/View;I)V
    .locals 3

    .line 43
    sget v0, Lcom/powervision/gcs/R$id;->text_center:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    sget v1, Lcom/powervision/gcs/R$id;->ll_center:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 46
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 47
    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->realWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->highlight:I

    if-ne p2, p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/gcs/R$color;->ship_color_camera_set:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/gcs/R$color;->white:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->data:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getItemsCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->data:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public setHighlight(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->highlight:I

    .line 38
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->notifyDataChangedEvent()V

    return-void
.end method

.method public setLayoutWidth(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingWheelViewAdapter;->realWidth:I

    return-void
.end method
