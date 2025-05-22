.class public Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AOAShipMediaManagerActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity_ViewBinding;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    .line 28
    sget v0, Lcom/powervision/gcs/R$id;->recycler_view:I

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->text_download:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'textDownload\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDownload:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->text_delete:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'textDelete\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDelete:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->text_select_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextTitle:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->ship_select_all:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextSelectAll\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextSelectAll:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->text_cancel:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextCancel\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextCancel:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->layout_loading:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'mLayoutLoading\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mLayoutLoading:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    .line 44
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDownload:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDelete:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextTitle:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextSelectAll:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextCancel:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mLayoutLoading:Landroid/widget/LinearLayout;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
