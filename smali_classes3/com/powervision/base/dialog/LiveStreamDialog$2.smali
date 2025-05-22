.class Lcom/powervision/base/dialog/LiveStreamDialog$2;
.super Ljava/lang/Object;
.source "LiveStreamDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/dialog/LiveStreamDialog;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/dialog/LiveStreamDialog;


# direct methods
.method constructor <init>(Lcom/powervision/base/dialog/LiveStreamDialog;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog$2;->this$0:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/powervision/base/dialog/LiveStreamDialog$2;->this$0:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-static {v0}, Lcom/powervision/base/dialog/LiveStreamDialog;->access$200(Lcom/powervision/base/dialog/LiveStreamDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "push_streaming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog$2;->this$0:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-static {p1}, Lcom/powervision/base/dialog/LiveStreamDialog;->access$300(Lcom/powervision/base/dialog/LiveStreamDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/dialog/LiveStreamDialog$2;->this$0:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-virtual {v0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$color;->cursor_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog$2;->this$0:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-static {p1}, Lcom/powervision/base/dialog/LiveStreamDialog;->access$300(Lcom/powervision/base/dialog/LiveStreamDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/dialog/LiveStreamDialog$2;->this$0:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-virtual {v0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$color;->gray_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
