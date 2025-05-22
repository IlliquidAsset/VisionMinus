.class Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;
.super Ljava/lang/Object;
.source "ShipGuideDialogFragment.java"

# interfaces
.implements Lcom/xiao/nicevideoplayer/VideoOnlyController$OnVideoChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    invoke-static {v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->access$102(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;I)I

    .line 138
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    invoke-static {v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/ship/GuideBean;

    .line 139
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    invoke-static {v1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;Lcom/powervision/gcs/model/ship/GuideBean;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->access$108(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)I

    .line 143
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    invoke-static {v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/ship/GuideBean;

    .line 144
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    invoke-static {v1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;Lcom/powervision/gcs/model/ship/GuideBean;)V

    :cond_1
    :goto_0
    return-void
.end method
