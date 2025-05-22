.class Lcom/powervision/media/ui/fragment/PictureListFragment$2;
.super Ljava/lang/Object;
.source "PictureListFragment.java"

# interfaces
.implements Lcom/powervision/media/widgets/MediaDialog$DialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/fragment/PictureListFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

.field final synthetic val$dialog:Lcom/powervision/media/widgets/MediaDialog;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/fragment/PictureListFragment;Lcom/powervision/media/widgets/MediaDialog;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$2;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    iput-object p2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$2;->val$dialog:Lcom/powervision/media/widgets/MediaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$2;->val$dialog:Lcom/powervision/media/widgets/MediaDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/MediaDialog;->dismiss()V

    return-void
.end method

.method public confirm()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$2;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    invoke-static {v0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->access$000(Lcom/powervision/media/ui/fragment/PictureListFragment;)V

    .line 359
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$2;->val$dialog:Lcom/powervision/media/widgets/MediaDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/MediaDialog;->dismiss()V

    return-void
.end method
