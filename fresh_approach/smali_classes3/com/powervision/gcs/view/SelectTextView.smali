.class public Lcom/powervision/gcs/view/SelectTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SelectTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SelectTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$color;->color_camera_set:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/SelectTextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SelectTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/SelectTextView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
