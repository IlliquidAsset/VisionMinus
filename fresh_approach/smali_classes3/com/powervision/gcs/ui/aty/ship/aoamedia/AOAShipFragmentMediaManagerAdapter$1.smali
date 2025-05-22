.class Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;
.super Ljava/lang/Object;
.source "AOAShipFragmentMediaManagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->onBindViewHolder(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

.field final synthetic val$model:Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;ILcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    iput p2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->val$model:Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 406
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$000(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$100(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Ljava/util/Map;

    move-result-object p1

    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->val$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 411
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$100(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Ljava/util/Map;

    move-result-object p1

    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->val$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 413
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$100(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Ljava/util/Map;

    move-result-object p1

    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->val$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->val$model:Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    iget-object v1, v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$200(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 419
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$200(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$100(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;->onSelectedChanged(Ljava/util/Map;)V

    .line 420
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "selectMap.size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$100(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mediaFileCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$300(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShipFragmentMediaManage"

    invoke-static {v0, p1}, Lcom/powervision/gcs/utils/show/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$100(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$300(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 422
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$200(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;->onSelectAll()V

    goto :goto_1

    .line 424
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->access$200(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;->onUnselectAll()V

    .line 426
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->notifyItemChanged(I)V

    :cond_3
    return-void
.end method
