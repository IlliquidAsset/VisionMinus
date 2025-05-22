.class public Lcom/powervision/gcs/view/BottomDialog_ViewBinding;
.super Ljava/lang/Object;
.source "BottomDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/BottomDialog;

.field private view10d5:Landroid/view/View;

.field private view10df:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/BottomDialog;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/powervision/gcs/view/BottomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/BottomDialog_ViewBinding;-><init>(Lcom/powervision/gcs/view/BottomDialog;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/BottomDialog;Landroid/view/View;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/powervision/gcs/view/BottomDialog_ViewBinding;->target:Lcom/powervision/gcs/view/BottomDialog;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->text_tips:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextTips\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/BottomDialog;->mTextTips:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->text_cancel:I

    const-string v1, "field \'mTextCancel\' and method \'text_cancel\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    sget v1, Lcom/powervision/gcs/R$id;->text_cancel:I

    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTextCancel\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/powervision/gcs/view/BottomDialog;->mTextCancel:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/powervision/gcs/view/BottomDialog_ViewBinding;->view10d5:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/powervision/gcs/view/BottomDialog_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/BottomDialog_ViewBinding$1;-><init>(Lcom/powervision/gcs/view/BottomDialog_ViewBinding;Lcom/powervision/gcs/view/BottomDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget v0, Lcom/powervision/gcs/R$id;->text_delete:I

    const-string v1, "field \'mTextDelete\' and method \'text_delete\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 43
    sget v0, Lcom/powervision/gcs/R$id;->text_delete:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextDelete\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/BottomDialog;->mTextDelete:Landroid/widget/TextView;

    .line 44
    iput-object p2, p0, Lcom/powervision/gcs/view/BottomDialog_ViewBinding;->view10df:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/powervision/gcs/view/BottomDialog_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/BottomDialog_ViewBinding$2;-><init>(Lcom/powervision/gcs/view/BottomDialog_ViewBinding;Lcom/powervision/gcs/view/BottomDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/view/BottomDialog_ViewBinding;->target:Lcom/powervision/gcs/view/BottomDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/powervision/gcs/view/BottomDialog_ViewBinding;->target:Lcom/powervision/gcs/view/BottomDialog;

    .line 60
    iput-object v1, v0, Lcom/powervision/gcs/view/BottomDialog;->mTextTips:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/powervision/gcs/view/BottomDialog;->mTextCancel:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/powervision/gcs/view/BottomDialog;->mTextDelete:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/powervision/gcs/view/BottomDialog_ViewBinding;->view10d5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lcom/powervision/gcs/view/BottomDialog_ViewBinding;->view10d5:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/powervision/gcs/view/BottomDialog_ViewBinding;->view10df:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcom/powervision/gcs/view/BottomDialog_ViewBinding;->view10df:Landroid/view/View;

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
