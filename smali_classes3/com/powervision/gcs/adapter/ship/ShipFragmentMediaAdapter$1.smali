.class Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$1;
.super Ljava/lang/Object;
.source "ShipFragmentMediaAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->onBindViewHolder(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

.field final synthetic val$model:Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$1;->val$model:Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->access$000(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->access$000(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$1;->val$model:Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    iget-object v0, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-interface {p1, v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;->onClickListener(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    :cond_0
    return-void
.end method
