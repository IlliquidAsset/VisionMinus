.class Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CameraBasicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BasicViewHolder"
.end annotation


# instance fields
.field private mLine:Landroid/view/View;

.field private mPickerView:Lcom/powervision/base/views/HPickerView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 228
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 229
    sget v0, Lcom/lewis/camera/R$id;->setting_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->mTitle:Landroid/widget/TextView;

    .line 230
    sget v0, Lcom/lewis/camera/R$id;->pickerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/HPickerView;

    iput-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->mPickerView:Lcom/powervision/base/views/HPickerView;

    .line 231
    sget v0, Lcom/lewis/camera/R$id;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->mLine:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->mPickerView:Lcom/powervision/base/views/HPickerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/view/View;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->mLine:Landroid/view/View;

    return-object p0
.end method
