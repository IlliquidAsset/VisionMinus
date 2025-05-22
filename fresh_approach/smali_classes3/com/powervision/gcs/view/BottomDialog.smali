.class public Lcom/powervision/gcs/view/BottomDialog;
.super Landroid/app/Dialog;
.source "BottomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/BottomDialog$OnCancelListener;,
        Lcom/powervision/gcs/view/BottomDialog$OnDeleteListener;
    }
.end annotation


# instance fields
.field private cancelListener:Lcom/powervision/gcs/view/BottomDialog$OnCancelListener;

.field private deleteListener:Lcom/powervision/gcs/view/BottomDialog$OnDeleteListener;

.field private mContext:Landroid/content/Context;

.field mTextCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10d5
    .end annotation
.end field

.field mTextDelete:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10df
    .end annotation
.end field

.field mTextTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x110b
    .end annotation
.end field

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    sget v0, Lcom/powervision/gcs/R$style;->bottomDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-object p1, p0, Lcom/powervision/gcs/view/BottomDialog;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lcom/powervision/gcs/view/BottomDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/BottomDialog;->window:Landroid/view/Window;

    .line 38
    sget p1, Lcom/powervision/gcs/R$layout;->dialog_bottom:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/BottomDialog;->setContentView(I)V

    .line 39
    iget-object p1, p0, Lcom/powervision/gcs/view/BottomDialog;->window:Landroid/view/Window;

    const/16 v0, 0x51

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 40
    iget-object p1, p0, Lcom/powervision/gcs/view/BottomDialog;->window:Landroid/view/Window;

    sget v0, Lcom/powervision/gcs/R$style;->dialogAnimationEffect:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 41
    iget-object p1, p0, Lcom/powervision/gcs/view/BottomDialog;->window:Landroid/view/Window;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 42
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public setCancelListener(ILcom/powervision/gcs/view/BottomDialog$OnCancelListener;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/powervision/gcs/view/BottomDialog;->mTextCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/BottomDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iput-object p2, p0, Lcom/powervision/gcs/view/BottomDialog;->cancelListener:Lcom/powervision/gcs/view/BottomDialog$OnCancelListener;

    return-void
.end method

.method public setCancelListener(Lcom/powervision/gcs/view/BottomDialog$OnCancelListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/powervision/gcs/view/BottomDialog;->cancelListener:Lcom/powervision/gcs/view/BottomDialog$OnCancelListener;

    return-void
.end method

.method public setDeleteListener(ILcom/powervision/gcs/view/BottomDialog$OnDeleteListener;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/powervision/gcs/view/BottomDialog;->mTextDelete:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/BottomDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iput-object p2, p0, Lcom/powervision/gcs/view/BottomDialog;->deleteListener:Lcom/powervision/gcs/view/BottomDialog$OnDeleteListener;

    return-void
.end method

.method public setDeleteListener(Lcom/powervision/gcs/view/BottomDialog$OnDeleteListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/powervision/gcs/view/BottomDialog;->deleteListener:Lcom/powervision/gcs/view/BottomDialog$OnDeleteListener;

    return-void
.end method

.method public setTips(I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/powervision/gcs/view/BottomDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/BottomDialog;->setTips(Ljava/lang/String;)V

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/powervision/gcs/view/BottomDialog;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public text_cancel()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x10d5
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/powervision/gcs/view/BottomDialog;->cancelListener:Lcom/powervision/gcs/view/BottomDialog$OnCancelListener;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/powervision/gcs/view/BottomDialog$OnCancelListener;->cancel()V

    :cond_0
    return-void
.end method

.method public text_delete()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x10df
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/powervision/gcs/view/BottomDialog;->deleteListener:Lcom/powervision/gcs/view/BottomDialog$OnDeleteListener;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Lcom/powervision/gcs/view/BottomDialog$OnDeleteListener;->delete()V

    :cond_0
    return-void
.end method
