.class Lcom/xiao/nicevideoplayer/ChangeClarityDialog$2;
.super Ljava/lang/Object;
.source "ChangeClarityDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->setClarityGrade(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;


# direct methods
.method constructor <init>(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$2;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$2;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->access$000(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 71
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$2;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->access$100(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)I

    move-result v0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$2;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-static {v2}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->access$200(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$2;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-static {v2}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->access$200(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$2;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->access$000(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;->onClarityChanged(I)V

    .line 76
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$2;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-static {v0, p1}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->access$102(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;I)I

    goto :goto_2

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$2;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->access$000(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;->onClarityNotChanged()V

    .line 81
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$2;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->dismiss()V

    return-void
.end method
