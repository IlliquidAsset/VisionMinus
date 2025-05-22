.class public Lcom/powervision/base/views/FakeDialogView;
.super Landroid/widget/RelativeLayout;
.source "FakeDialogView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/powervision/base/R$layout;->fake_dialog:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    new-instance p1, Lcom/powervision/base/views/FakeDialogView$1;

    invoke-direct {p1, p0}, Lcom/powervision/base/views/FakeDialogView$1;-><init>(Lcom/powervision/base/views/FakeDialogView;)V

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/FakeDialogView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
