.class Lcom/powervision/media/widgets/MediaTipDialog$1;
.super Ljava/lang/Object;
.source "MediaTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/widgets/MediaTipDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/widgets/MediaTipDialog;


# direct methods
.method constructor <init>(Lcom/powervision/media/widgets/MediaTipDialog;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/powervision/media/widgets/MediaTipDialog$1;->this$0:Lcom/powervision/media/widgets/MediaTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/powervision/media/widgets/MediaTipDialog$1;->this$0:Lcom/powervision/media/widgets/MediaTipDialog;

    invoke-static {p1}, Lcom/powervision/media/widgets/MediaTipDialog;->access$000(Lcom/powervision/media/widgets/MediaTipDialog;)Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/powervision/media/widgets/MediaTipDialog$1;->this$0:Lcom/powervision/media/widgets/MediaTipDialog;

    invoke-static {p1}, Lcom/powervision/media/widgets/MediaTipDialog;->access$000(Lcom/powervision/media/widgets/MediaTipDialog;)Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;->confirm()V

    :cond_0
    return-void
.end method
