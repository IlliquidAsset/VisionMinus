.class Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;
.super Ljava/lang/Object;
.source "ShipToInterestView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->onSailModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipToInterestView$2;I)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->access$100(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->access$100(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->access$100(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 208
    :cond_0
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->val$mode:I

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    iget-object v1, v1, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->access$200(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_AI_9:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->access$000(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;->action(Z)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 212
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    iget-object v2, v2, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-static {v2}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->access$200(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$string;->PVW4_AI_10:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->access$000(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;->action(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 216
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->access$000(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;->backMode()V

    :cond_3
    :goto_0
    return-void
.end method
