.class Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;
.super Ljava/lang/Object;
.source "ShipFragmentMediaManagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->onBindViewHolder(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

.field final synthetic val$model:Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;ILcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    iput p2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->val$model:Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 314
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->access$000(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->access$100(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Ljava/util/Map;

    move-result-object p1

    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->val$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 319
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->access$100(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Ljava/util/Map;

    move-result-object p1

    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->val$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 321
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->access$100(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Ljava/util/Map;

    move-result-object p1

    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->val$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->val$model:Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    iget-object v1, v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->access$200(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 327
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->access$200(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    invoke-static {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->access$100(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;->onSelectedChanged(Ljava/util/Map;)V

    .line 329
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->access$100(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    invoke-static {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->access$300(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 330
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->access$200(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;->onSelectAll()V

    goto :goto_1

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->access$200(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;->onUnselectAll()V

    .line 334
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;

    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->notifyItemChanged(I)V

    :cond_3
    return-void
.end method
