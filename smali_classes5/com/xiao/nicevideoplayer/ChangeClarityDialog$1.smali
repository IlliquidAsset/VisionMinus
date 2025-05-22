.class Lcom/xiao/nicevideoplayer/ChangeClarityDialog$1;
.super Ljava/lang/Object;
.source "ChangeClarityDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->init(Landroid/content/Context;)V
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

    .line 33
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$1;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$1;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->access$000(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$1;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->access$000(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;->onClarityNotChanged()V

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$1;->this$0:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->dismiss()V

    return-void
.end method
