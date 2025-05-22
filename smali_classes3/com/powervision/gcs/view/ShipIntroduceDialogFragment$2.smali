.class Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$2;
.super Ljava/lang/Object;
.source "ShipIntroduceDialogFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$2;->this$0:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$2;->this$0:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;

    invoke-static {p1}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->access$000(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;)Lcom/powervision/gcs/view/ship/ShipVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipVideoView;->start()V

    return-void
.end method
