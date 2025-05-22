.class Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ShipCameraSettingBasicSlideAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlideViewHolder"
.end annotation


# instance fields
.field value:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_basic_slide_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingBasicSlideAdapter$SlideViewHolder;->value:Landroid/widget/TextView;

    return-void
.end method
