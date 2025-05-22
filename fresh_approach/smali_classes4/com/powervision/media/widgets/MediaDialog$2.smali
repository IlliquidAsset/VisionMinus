.class Lcom/powervision/media/widgets/MediaDialog$2;
.super Ljava/lang/Object;
.source "MediaDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/widgets/MediaDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/widgets/MediaDialog;


# direct methods
.method constructor <init>(Lcom/powervision/media/widgets/MediaDialog;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/powervision/media/widgets/MediaDialog$2;->this$0:Lcom/powervision/media/widgets/MediaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/powervision/media/widgets/MediaDialog$2;->this$0:Lcom/powervision/media/widgets/MediaDialog;

    invoke-static {p1}, Lcom/powervision/media/widgets/MediaDialog;->access$000(Lcom/powervision/media/widgets/MediaDialog;)Lcom/powervision/media/widgets/MediaDialog$DialogClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/powervision/media/widgets/MediaDialog$2;->this$0:Lcom/powervision/media/widgets/MediaDialog;

    invoke-static {p1}, Lcom/powervision/media/widgets/MediaDialog;->access$000(Lcom/powervision/media/widgets/MediaDialog;)Lcom/powervision/media/widgets/MediaDialog$DialogClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/media/widgets/MediaDialog$DialogClickListener;->cancel()V

    :cond_0
    return-void
.end method
